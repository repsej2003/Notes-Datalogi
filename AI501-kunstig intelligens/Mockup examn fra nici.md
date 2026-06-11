# 1. Friendly yellow guy

## a
- It is singe-agent because there is only one agent, the friendly yellow guy
- It is fully observable because the agent knows where the walls and energy pills
- It is deterministic because we know i extaly what happens when it makes a moves, he will always eat if is a energy pill
- It is discrete, beauce he can never bettwen to cells on the grid, he allways move a whole cell
## b
### state space
A state contians the postion of the yellow guy and all the cells where ther stil is a energy pill in
### Initial state
yellow guy position at 3D and all postion but 3D has a energy pill
### actions
Move the yellow guy to an adjancet space, if there is no wall bettwen his new and old positon
### transition model
If there is a energy pill at the new postion of the yellow guy it disapears from the state. But if there is no pill in the new postion then only the postion of the yellow guy changes.
### goal test
The goal is reached if there are no more energy pills in the state, it does not matter where the yellow guy is.
### cost function
The problem say it to finde the shortest number og moves to reach the goal state,
So all action cost the same, cause they are always a move, even if it does not eat anything.

## c
Deep first search will always search deep taking a step deeper in the search and when it reach a state which it knows there is no solution from it will go back one step at try another step.
## d
He start by moving left ontil he hits the wall, then he cant go ledt sp he will choose to move up, but when reaching the top left corner he cant go left or up, so he takes the next option right, but now he can go left, and then he is in a loop.
So the sequnce looks like this:
$$
\begin{align}
3D,2D,1D,1C,1B,1A,2A,1A
\end{align}
$$

*han skal tilbage til 2A fordi første de tog gange i 1A er forskellige fordi der er i den inde er in pill i 2A og det er der ikke i den anden*

## e
A admissable heursitc means that it never over estimade the real cost, from that state.

And when there is $n$ energi pills left it will at least take $n$ moves to remove them all, because there is no way to remove more than one pill in on move.

So this is heurstic is all lower bound of the cost so there for it is amssiabel


Because if it at any point canont see a energi pill in adjacent cell(thorugh herorustck), then we get the same loop back and fortward.
For this problem he will end op cycling bettwen  $1E \text{ and } 2E$

## time taken 25 minuter

# Slippery Day
## a
$$
\begin{align}
Sun\to GrassDry \\
Raining \to GrassWet \\
GrassWet \wedge Sa nd els \to Slippery \\
Sa nd els \wedge Raining\to FeetCold \\
Raining \wedge Sa nd els
\end{align}
$$

*Magnler forklaring på mine sumber*
## b
I use that i know that is raining, and the secound formaile to gain the knowledge that $GrassWet$
Then i use the 3 forumulae, beauce i known $GrassWet \wedge Sa nd els$ there for i know $Slippery$

## C
backward chaning start from the fact we what to show, and then find out what we need for proving it. then we find out what is need to find out that, in a loop ontil we know everything we need or there is no more thing to add so the algorthim failes

## D
So we want to show $Slippery$ by fomulae 3 then we need to know $GrassWet \wedge Sa nd els$
We allready know $San de ls$ so we contuine on $GrassWet$, we use formulae 2 to see that whe need to know $Raining$. and we allredy know $Raining$

## E
Here are all the clauses
$$
\begin{align}
\neg Sun \vee GrassDry \\
\neg Raining \vee  GrassWet \\
\neg GrassWet \vee \neg Sa nd els \vee Slippery \\
\neg Sa nd els \vee \neg Raining \vee FeetCold \\
Raining \\
Sa nd els
\end{align}
$$
Then i add that contrapostive of i want to prove and hope end op in the empty clause, telling me thate contrapsotve is falls there for it is true
I add:
$$
\neg Slippery
$$
I combine two clause using the reslution rule to get a new clause
$$
\text{RR}\frac{\neg GrassWet \vee \neg Sa nd els \vee Slippery \ \ \ \ \ \ \neg Slippery}{\neg GrassWet \vee \neg Sa nd els}
$$

I again combine two clause using the reslution rule to get a new clause
$$
\text{RR}\frac{\neg Raining \vee GrassWet \ \ \ \ \ \neg GrassWet \vee \neg San del s}{\neg Raining \vee \neg San de ls}
$$
I repate once more
$$
\text{RR}\frac{\neg Raining \vee \neg Sa nd els \ \ \ \ \  San del s}{\neg Raining }
$$

I repeate a last time
$$
\text{RR}\frac{\neg Raining  \ \ \ \ \  Raining}{\square }
$$
with this contra dixtion i have now proven that it is slippery.

## Time talen 25