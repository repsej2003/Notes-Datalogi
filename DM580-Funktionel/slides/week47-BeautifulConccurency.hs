{-
  Beautiful Concurrency — live lecture
  Based on: Simon Peyton Jones, "Beautiful Concurrency" (2007)

  Start with:   ghci BeautifulConcurrency.hs +RTS -N4
  (-N4 = use 4 cores. The races also show up on one core, just less often.
   Already in ghci?  ghci> GHC.Conc.setNumCapabilities 4)

  Lines marked  -- ghci> ...  are things to type in ghci.
-}

import Control.Concurrent
import Control.Concurrent.STM
import Control.Monad
import Data.IORef
import Data.List (nub)
import System.IO
import System.Timeout (timeout)
import GHC.Conc (unsafeIOToSTM)
import GHC.Clock (getMonotonicTimeNSec)


------------------------------------------------------------------------
-- 0. Plumbing: run actions in parallel and wait for all of them.
--    (Taken on faith for now; we rewrite it ourselves in §8.)
------------------------------------------------------------------------

forkAll :: [IO ()] -> IO ()
forkAll acts = do
  dones <- forM acts $ \act -> do
    done <- newEmptyMVar
    _ <- forkFinally act (\_ -> putMVar done ())
    return done
  mapM_ takeMVar dones


------------------------------------------------------------------------
-- 1. Threads
--    forkIO :: IO () -> IO ThreadId
------------------------------------------------------------------------

talk :: String -> IO ()
talk s = forM_ [1 .. 5 :: Int] $ \i -> do
  putStrLn (s ++ " " ++ show i)
  threadDelay 100000                 -- 0.1 seconds

-- ghci> talk "ping"
-- ghci> forkIO (talk "ping") >> talk "pong"
-- ghci> forkAll [talk "ping", talk "pong", talk "pang"]


------------------------------------------------------------------------
-- 2. A bank account, the obvious way
------------------------------------------------------------------------

type Account = IORef Int

newAccount :: Int -> IO Account
newAccount = newIORef

balance :: Account -> IO Int
balance = readIORef

deposit :: Account -> Int -> IO ()
deposit acc n = do
  bal <- readIORef acc
  writeIORef acc (bal + n)

withdraw :: Account -> Int -> IO ()
withdraw acc n = deposit acc (-n)

-- Sequentially: fine.
-- ghci> acc <- newAccount 0
-- ghci> replicateM_ 1000 (deposit acc 1)
-- ghci> balance acc

-- 4 clerks, each depositing 1 euro, 100 000 times.
clerks :: IO ()
clerks = do
  acc <- newAccount 0
  forkAll (replicate 4 (replicateM_ 100000 (deposit acc 1)))
  bal <- balance acc
  putStrLn ("Balance: " ++ show bal ++ "   (expected 400000)")

-- ghci> clerks
-- ghci> clerks
--
-- Data race: two threads read the same `bal`, both write `bal + 1`.
-- One deposit is lost.


------------------------------------------------------------------------
-- 3. The classic fix: locks
------------------------------------------------------------------------

type Lock = MVar ()

newLock :: IO Lock
newLock = newMVar ()

withLock :: Lock -> IO a -> IO a
withLock lock act = do
  takeMVar lock                      -- acquire (waits if someone else has it)
  r <- act
  putMVar lock ()                    -- release
  return r

data LAccount = LAccount Lock Account

newLAccount :: Int -> IO LAccount
newLAccount n = LAccount <$> newLock <*> newAccount n

depositL :: LAccount -> Int -> IO ()
depositL (LAccount lock acc) n = withLock lock (deposit acc n)

withdrawL :: LAccount -> Int -> IO ()
withdrawL acc n = depositL acc (-n)

balanceL :: LAccount -> IO Int
balanceL (LAccount lock acc) = withLock lock (balance acc)

clerksL :: IO ()
clerksL = do
  acc <- newLAccount 0
  forkAll (replicate 4 (replicateM_ 100000 (depositL acc 1)))
  bal <- balanceL acc
  putStrLn ("Balance: " ++ show bal ++ "   (expected 400000)")

-- ghci> clerksL                      -- correct now.

-- 3a. But: build transfer from the (correct!) pieces...
transferL :: LAccount -> LAccount -> Int -> IO ()
transferL from to n = do
  withdrawL from n
  depositL to n

-- ...and an auditor checks that the bank's total stays 200.
auditL :: IO ()
auditL = do
  a <- newLAccount 100
  b <- newLAccount 100
  forkAll
    [ replicateM_ 10000 (transferL a b 1)
    , replicateM_ 10000 (transferL b a 1)
    , do totals <- replicateM 10000 ((+) <$> balanceL a <*> balanceL b)
         putStrLn ("Totals seen by auditor: " ++ show (nub totals))
    ]

-- ghci> auditL
--
-- Every piece is locked, yet the composition is not atomic:
-- the auditor sees money "in flight".

-- 3b. So hold both locks during the transfer...
transferL2 :: LAccount -> LAccount -> Int -> IO ()
transferL2 (LAccount lockF from) (LAccount lockT to) n =
  withLock lockF $
    withLock lockT $ do
      withdraw from n
      deposit to n

deadlockL :: IO ()
deadlockL = do
  a <- newLAccount 100
  b <- newLAccount 100
  r <- timeout 3000000 $             -- give up after 3 seconds
         forkAll [ replicateM_ 10000 (transferL2 a b 1)
                 , replicateM_ 10000 (transferL2 b a 1) ]
  putStrLn (maybe "Deadlock!" (const "Finished") r)

-- ghci> deadlockL
--
-- Thread 1 holds a, waits for b. Thread 2 holds b, waits for a.
-- Locks do not compose: correctness depends on global conventions
-- (lock ordering) that no type checks.


------------------------------------------------------------------------
-- 4. Software Transactional Memory
--
--   newTVar    :: a -> STM (TVar a)
--   readTVar   :: TVar a -> STM a
--   writeTVar  :: TVar a -> a -> STM ()
--   atomically :: STM a -> IO a
------------------------------------------------------------------------

type TAccount = TVar Int

newTAccount :: Int -> STM TAccount
newTAccount = newTVar

balanceT :: TAccount -> STM Int
balanceT = readTVar

depositT :: TAccount -> Int -> STM ()
depositT acc n = do                  -- compare with `deposit` in §2:
  bal <- readTVar acc                --   IORef  ~> TVar
  writeTVar acc (bal + n)            --   IO     ~> STM

withdrawT :: TAccount -> Int -> STM ()
withdrawT acc n = depositT acc (-n)

clerksT :: IO ()
clerksT = do
  acc <- atomically (newTAccount 0)
  forkAll (replicate 4 (replicateM_ 100000 (atomically (depositT acc 1))))
  bal <- atomically (balanceT acc)
  putStrLn ("Balance: " ++ show bal ++ "   (expected 400000)")

-- ghci> clerksT

-- 4a. Composition: just glue the pieces together. No locks to choose.
transferT :: TAccount -> TAccount -> Int -> STM ()
transferT from to n = do
  withdrawT from n
  depositT to n

auditT :: IO ()
auditT = do
  a <- atomically (newTAccount 100)
  b <- atomically (newTAccount 100)
  forkAll
    [ replicateM_ 10000 (atomically (transferT a b 1))
    , replicateM_ 10000 (atomically (transferT b a 1))
    , do totals <- replicateM 10000 (atomically ((+) <$> balanceT a <*> balanceT b))
         putStrLn ("Totals seen by auditor: " ++ show (nub totals))
    ]

-- ghci> auditT
-- ghci> :t atomically (transferT undefined undefined 1)

-- 4b. Opposite-direction transfers: no deadlock possible.
noDeadlockT :: IO ()
noDeadlockT = do
  a <- atomically (newTAccount 100)
  b <- atomically (newTAccount 100)
  forkAll [ replicateM_ 10000 (atomically (transferT a b 1))
          , replicateM_ 10000 (atomically (transferT b a 1)) ]
  total <- atomically ((+) <$> balanceT a <*> balanceT b)
  putStrLn ("Finished. Total: " ++ show total)

-- ghci> noDeadlockT


------------------------------------------------------------------------
-- 5. The type is the guarantee
------------------------------------------------------------------------

-- A transaction may be run more than once (see §9), so it must not
-- do I/O. Uncomment and reload:

-- depositNoisy :: TAccount -> Int -> STM ()
-- depositNoisy acc n = do
--   depositT acc n
--   putStrLn "Deposited!"           -- IO () is not STM ()

-- No nested transactions either: there is no function  IO a -> STM a,
-- so `atomically` cannot be called inside STM.

-- ghci> :t atomically
-- ghci> :t transferT
-- ghci> :t atomically . depositT


------------------------------------------------------------------------
-- 6. Nothing new to learn: STM is a Functor, Applicative and Monad
------------------------------------------------------------------------

-- Functor + mapM (Hutton ch. 12): total of any number of accounts
totalT :: [TAccount] -> STM Int
totalT accs = sum <$> mapM readTVar accs

-- Applicative
bothT :: TAccount -> TAccount -> STM (Int, Int)
bothT a b = (,) <$> readTVar a <*> readTVar b

-- Monad: forM_ was never written with STM in mind
payroll :: TAccount -> [(TAccount, Int)] -> STM ()
payroll boss staff = forM_ staff $ \(acc, salary) ->
  transferT boss acc salary

-- ghci> [boss, ann, bob] <- atomically (mapM newTAccount [1000, 0, 0])
-- ghci> atomically (payroll boss [(ann, 300), (bob, 200)])
-- ghci> atomically (mapM readTVar [boss, ann, bob])
-- ghci> atomically (totalT [boss, ann, bob])

-- The deposit logic, written once, for ANY monad:
depositWith :: Monad m => m Int -> (Int -> m ()) -> Int -> m ()
depositWith get put n = do
  bal <- get
  put (bal + n)

depositIO :: Account -> Int -> IO ()
depositIO acc = depositWith (readIORef acc) (writeIORef acc)

depositSTM :: TAccount -> Int -> STM ()
depositSTM acc = depositWith (readTVar acc) (writeTVar acc)

-- Same logic. The monad decides what "do this, then that" means.


------------------------------------------------------------------------
-- 7. Blocking and choice
--
--   retry  :: STM a                    "not yet: wait and try again"
--   orElse :: STM a -> STM a -> STM a  "try left; if it retries, try right"
------------------------------------------------------------------------

limitedWithdraw :: TAccount -> Int -> STM ()
limitedWithdraw acc n = do
  bal <- readTVar acc
  when (bal < n) retry
  writeTVar acc (bal - n)

-- ghci> acc <- atomically (newTAccount 0)
-- ghci> forkIO (atomically (limitedWithdraw acc 50) >> putStrLn "Got 50!")
-- ghci> atomically (depositT acc 20)
-- ghci> atomically (depositT acc 20)
-- ghci> atomically (depositT acc 20)    -- now "Got 50!"
-- ghci> atomically (balanceT acc)
--
-- No busy waiting: the thread sleeps until a TVar it read changes.

-- Choice: withdraw from whichever account can afford it.
withdrawEither :: TAccount -> TAccount -> Int -> STM String
withdrawEither a b n =
      (limitedWithdraw a n >> return "from A")
  `orElse`
      (limitedWithdraw b n >> return "from B")

-- Turn a blocking operation into a non-blocking one, from the outside:
tryWithdraw :: TAccount -> Int -> STM Bool
tryWithdraw acc n =
  (limitedWithdraw acc n >> return True) `orElse` return False

-- ghci> [a, b] <- atomically (mapM newTAccount [10, 100])
-- ghci> atomically (withdrawEither a b 50)
-- ghci> atomically (withdrawEither a b 50)
-- ghci> atomically (tryWithdraw b 50)
-- ghci> atomically (mapM balanceT [a, b])
--
-- limitedWithdraw was written without knowing it would be combined.
-- (Teaser: STM is also an Alternative, with  empty = retry,  <|> = orElse.)


------------------------------------------------------------------------
-- 8. Payoff: our own forkAll, with STM instead of MVars
------------------------------------------------------------------------

forkAllT :: [IO ()] -> IO ()
forkAllT acts = do
  running <- newTVarIO (length acts)
  forM_ acts $ \act ->
    forkFinally act (\_ -> atomically (modifyTVar' running (subtract 1)))
  atomically $ do
    n <- readTVar running
    when (n > 0) retry

-- ghci> forkAllT [talk "ping", talk "pong"]


------------------------------------------------------------------------
-- 9. Behind the curtain: optimistic execution
--
-- A transaction runs without locks, logging its reads and writes.
-- At commit: if a TVar it read was changed meanwhile, throw the log
-- away and run it again.
--
-- Below we CHEAT (unsafeIOToSTM, exactly what §5 forbids) to make
-- every transaction pause mid-way and to count how often it starts.
------------------------------------------------------------------------

clerksCounted :: IO ()
clerksCounted = do
  acc <- atomically (newTAccount 0)
  attempts <- newIORef (0 :: Int)
  let slowDeposit = do
        unsafeIOToSTM (atomicModifyIORef' attempts (\k -> (k + 1, ())))
        bal <- readTVar acc
        unsafeIOToSTM yield            -- let another thread in, right here
        writeTVar acc (bal + 1)
  forkAll (replicate 4 (replicateM_ 1000 (atomically slowDeposit)))
  bal <- atomically (balanceT acc)
  k   <- readIORef attempts
  putStrLn ("Balance: " ++ show bal ++ ", attempts: " ++ show k
            ++ "   (4000 commits)")

-- ghci> clerksCounted


------------------------------------------------------------------------
-- 10. The Santa Claus problem (Trono 1994; §4 of the paper)
--
-- Santa sleeps until woken by all 9 reindeer (deliver toys), or by
-- 3 of the 10 elves (meet in study). Reindeer take priority.
------------------------------------------------------------------------

-- A Gate lets exactly n threads through, once Santa opens it.
data Gate = MkGate Int (TVar Int)

newGate :: Int -> STM Gate
newGate n = MkGate n <$> newTVar 0

passGate :: Gate -> IO ()
passGate (MkGate _ tv) = atomically $ do
  left <- readTVar tv
  check (left > 0)
  writeTVar tv (left - 1)

operateGate :: Gate -> IO ()
operateGate (MkGate n tv) = do
  atomically (writeTVar tv n)               -- open: n may pass
  atomically (readTVar tv >>= check . (== 0)) -- wait until all have passed

-- A Group collects n helpers, then hands them a pair of gates.
data Group = MkGroup Int (TVar (Int, Gate, Gate))

newGroup :: Int -> IO Group
newGroup n = atomically $ do
  g1 <- newGate n
  g2 <- newGate n
  MkGroup n <$> newTVar (n, g1, g2)

joinGroup :: Group -> IO (Gate, Gate)
joinGroup (MkGroup _ tv) = atomically $ do
  (left, g1, g2) <- readTVar tv
  check (left > 0)
  writeTVar tv (left - 1, g1, g2)
  return (g1, g2)

awaitGroup :: Group -> STM (Gate, Gate)
awaitGroup (MkGroup n tv) = do
  (left, g1, g2) <- readTVar tv
  check (left == 0)
  g1' <- newGate n
  g2' <- newGate n
  writeTVar tv (n, g1', g2')               -- fresh gates for the next group
  return (g1, g2)

-- Elves and reindeer
helper :: Group -> IO () -> IO ()
helper group task = do
  (inGate, outGate) <- joinGroup group
  passGate inGate
  task
  passGate outGate

elf, reindeer :: Group -> Int -> IO ThreadId
elf      g i = forkIO $ forever $ do
  helper g (putStrLn ("  Elf " ++ show i ++ " meeting in the study"))
  randomDelay
reindeer g i = forkIO $ forever $ do
  helper g (putStrLn ("  Reindeer " ++ show i ++ " delivering toys"))
  randomDelay

-- Santa
santa :: Group -> Group -> IO ()
santa elves deer = do
  putStrLn "----------"
  (task, (inGate, outGate)) <- atomically $
        chooseGroup deer  "deliver toys"
    `orElse`
        chooseGroup elves "meet in my study"
  putStrLn ("Ho! Ho! Ho! Let's " ++ task)
  operateGate inGate
  operateGate outGate
  where
    chooseGroup g task = do
      gates <- awaitGroup g
      return (task, gates)

santaDemo :: Int -> IO ()
santaDemo rounds = do
  hSetBuffering stdout LineBuffering    -- whole lines, not interleaved chars
  elves <- newGroup 3
  deer  <- newGroup 9
  ts1 <- mapM (elf elves) [1 .. 10]
  ts2 <- mapM (reindeer deer) [1 .. 9]
  replicateM_ rounds (santa elves deer)
  mapM_ killThread (ts1 ++ ts2)

-- ghci> santaDemo 5

randomDelay :: IO ()
randomDelay = do
  t <- getMonotonicTimeNSec
  threadDelay (fromIntegral ((t * 2654435761) `mod` 1000000))  -- 0–1 s

main :: IO ()
main = santaDemo 10

