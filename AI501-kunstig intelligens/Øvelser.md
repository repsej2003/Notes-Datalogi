# 3.1.1

| Intitial state                                              | Actions                                                                                         | Transition model                                                                                                                           | Costs                                             | Goal                                                          |
| ----------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------- | ------------------------------------------------------------- |
| Start sted                                                  | hvad kan man                                                                                    | hvad sker der hvad  når man gør noget                                                                                                      | pris for action                                   | mål state                                                     |
| All box locked<br>have key for the first                    | - unlock box<br>- take from box                                                                 | - unlock if the key is correct<br>- take if box not empty                                                                                  | all cost same                                     | have banana                                                   |
| ABABAECCEC or sting of ABCE                                 | Vælg et sted hvor du kan noget af dette <br>$AC\to E$<br>$AB \to BC$<br>$BB \to E$<br>$Ex\to x$ | Fjerne  to bogstaver og erstarter med venstre siden                                                                                        | cost all same                                     | E                                                             |
| Står på et grid of either unpaintet or nothing              | - Paint  square<br>- move to unpaintet square                                                   | paint the square you are on<br>- move to adjcant unpaintet square, so you moved                                                            | painting cost 1<br>Moving cost 0                  | All floor is paintet                                          |
| full container ship<br>13 rows of 13 containers each 5 tall | - move to location on ship<br>-move to dock<br>- pick up container<br>-put container down       | move  crane to location on ship<br>Move crane to dock<br>Pick up container if no container in crane<br>put container down if crane has one | the cost of moving is higher if container in hand | No containers on ship                                         |
| planar map<br>4 color to choice from                        | paint region color from avialbe                                                                 | paints a regin the choccen color                                                                                                           | all cost same                                     | no two adjacent regins ith same color and all region coloured |


# 3.1.2
a)

| Intial state    | Center of mace facing north                                                                |
| --------------- | ------------------------------------------------------------------------------------------ |
| Actions         | Turn right<br>Turn left<br>Move forward                                                    |
| Transtion model | turn actions change orationer, to a adjacnet oritation<br>move forward a certiain distence |
| costs           | ting man har set dyre før dyre                                                             |
| goal            | outside the maze                                                                           |
$all possible postions \times directions$

b)

| Intial state    | Center of mace facing north                                                                |
| --------------- | ------------------------------------------------------------------------------------------ |
| Actions         | Turn right<br>Turn left<br>Move forward to interctions or wall                             |
| Transtion model | turn actions change orationer, to a adjacnet oritation<br>move forward a certiain distence |
| costs           |                                                                                            |
| goal            | outside the maze                                                                           |
$antal gange \times directions$

c)

| Intial state    | Center of mace facing north                                  |
| --------------- | ------------------------------------------------------------ |
| Actions         | Move Direction till turning point                            |
| Transtion model | flyt need a direction indtil den har mulighed for vælge igen |
| costs           |                                                              |
| goal            | outside the maze                                             |
only the possible aciont of a given state can take

d)
1) der er kun 4 retninger
2) Stop before hitting wall
3) kvadrisk


# 3.1.6

a)

![[Pasted image 20260303150205.png]]


| Intial state    | 3 missonærs på venstre side<br>3 kanibaler på venstre siden<br>1 båd på venstre siden |
| --------------- | ------------------------------------------------------------------------------------- |
| Actions         | Move boat with 1 or 2 persons to outher sider                                         |
| Transtion model | Lose if on a side more kanibals than missinær                                         |
| costs           |                                                                                       |
| goal            | All mensker på højre sidde                                                            |
all states
$$
\begin{pmatrix}
7 \\
1
\end{pmatrix}

$$
der findes  på venstre sidden, all with both on the left, and on right
1. 3 m 3 k
2. 3 m 2 k
3. 3m 1k
4. 3m 0k
5. 2m 2k
6. 1m 1k

![[IMG20260303145920.jpg]]

b)
breath first

c)
Der en lang løsning

# 3.1.7 

![[Pasted image 20260303150232.png]]
![[Pasted image 20260303150242.png]]
a)

| Initnale state  | no peices on ground, all in bag                                                                                       |
| --------------- | --------------------------------------------------------------------------------------------------------------------- |
| actions         | put peice from bag to the ground, conecting to one other peice, <br>if no peice on the ground put one with conninting |
| transtion model |                                                                                                                       |
| cost            | 1                                                                                                                     |
| goal            | all peice on ground, og ingen løse ender                                                                              |

b)
Depth first, fordi der kan ikke være loops, da det ikke er muligt at fjerne igen. Den vil finde en løsning, ikke alle.

for at finde all skal den man bruge breath first, men det er forstort 

c)
For så ville der ikke være lige mange åben luk.
d)
$$
\frac{(12+2+2+16)!}{12!\cdot 2! \cdot 2! \cdot 16!}=6.563.797.858.800=6,6\cdot 10^{12}
$$
if all peice are unice and may overlap 
$$
(12+2+2+16)! =2.6\cdot 10^{35}
$$

# 3.2.1
![[Pasted image 20260311101846.png]]
Intial state - Two diffrent city 
State - postion of the two personen
action - both can  moves to a adjancet city
transtion model - 
cost - is the max of the the distance of the p1 move and p2 move
Goal - same postion

$$
\begin{align}
S&=\{c_{1},c_{2}\} \\
S_{0}&=\{c_{1},c_{2}\},c_{1}\neq c_{2} \\
S_{g}&=\{c_{1},c_{2}\},c_{1}= c_{2} \\
T:result(c_{1},c_{2},move)=(j_{1},j_{2})\ j_{1}&\in neoghbor\ c_{1} \\
 j_{2} &\in neoghbore \ c_{2} \\
U: c ost((c_{1},c_{2}),(j_{1},j_{2}))&=max(d(c_{1},j_{1}),d(c_{2},j_{2}))
\end{align}
$$

b)
i) false fordi den de vil mødes på halve
ii) Flase
iii) True

c)
Nej, fordi i min defentnoin må de stå stille, så den ene kan stå stille hele tiden, den nden finden

d)
Ja, for hvis der er et ulige hop mellem den skal den en stå stile på et tidnspunkt, dermed være i den samme togange
# 3.2.2
![[Pasted image 20260311104517.png]]
a)
4 

b)
$4\cdot k$

| k   |     |
| --- | --- |
| 1   | 4   |
| 2   | 9   |
| 3   | 16  |

$$
(k+1)^2
$$

c)

$$
\sum_{k=0}^{m+n}4^k
$$

d)
$$
\begin{align}
k=m+n \\
(k+1)^2+k^2
\end{align}
$$
$$
1+\sum_{k=1}^{m+n} 4k
$$

e)
det er den, det er den koreste muige vel

f)
$1+m+n$

g)
Yes

h)
no


3.6-2
![[Pasted image 20260318101928.png]]
![[Pasted image 20260318102137.png]]

![[Pasted image 20260318102426.png]]
![[Pasted image 20260318102709.png]]


# The ochrad 
a)

fully observable
deterministic
discrete

b)
Formulate this problem precisely as a search problem: describe the state space, the initial state,
the actions, the transition model, the goal test, and the cost function. Make sure to abstract
as much as possible from details that are not relevant for solving the problem.

| State           | Conatins postion of robot, and status of all trees, |
| --------------- | --------------------------------------------------- |
| Initnale state  | robot at depot, and all trees full                  |
| actions         | Move to adjancet tree                               |
| transtion model | Move to adjacant tree                               |
| cost            | is the length of the road                           |
| goal            | all trees visted and robot at depot                 |

$$
\begin{align}
S&=\{r,trees \} \\
S_{0}&=\{depot, \emptyset\}\\
S_{g}&=\{depot, T\}, |T| = tree\_ count\\
T:result(r_{1},Trees,move)&=(r_{2},Trees \cup tree)\\
U: c ost((r_{1},tree),(r_{2},tree))&=d(r_{1},r_{2})
\end{align}
$$

# 4.1
![[Pasted image 20260325102216.png]]
a)
Hil climbing

b)
breath first search

c)
Hill climbing 

(random)

d)
Random walk

e)
Random hill climbing


# 4.6
![[Pasted image 20260325103142.png]]
Unsovalb because we dont know w
![[Pasted image 20260325104457.png]]

# 4.9![[Pasted image 20260325104723.png]]



# 4.10
a)

$2^{12}$
$2$

b)
4
assuming it is sovable 
3

# 6.4
![[Pasted image 20260408085456.png]]
I treat the as unkown so the know walue i smaller treat as zero

infitte loop

proof??

# 6.5
# 6.7
![[Pasted image 20260408091127.png]]
a)
$$
\begin{align}
Games: 9! \\
states: <3^9=19683
\end{align}
$$



# 7.1
![[Pasted image 20260415101713.png]]


# 7.3

# 7.8


#