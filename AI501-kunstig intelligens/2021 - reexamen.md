# The labyrinth part 1
## A
Fully obersvable
deterministic
discrete

## B
State space:
- A postion in the maze
initial state:
- Postion A1
actions
* Move to adjacent squares
transtion model
* Move to adjacent square if no wall inbetween otherwise stay en the same state
goal test
- postion F5
cost function
- Each action cost 1

## C
Depthfirst
$$A 1, D 1, D 2, A 2, A 5,B 5,B 3,E 3,E 1,F 1, F 5$$
Breadth-first
$$
A 1, D 1, D 3, B 3 , B 4, F 4, F 5
$$
*synyd*
Bidirecal seat 
Same as breadth first bevaise cust is one

Manhantten distance

$$
A 1, D 1,D 3,E 3,E 1, F 1, F 5
$$
## D
symbols

$$
\begin{align}
WallBetween(Pos_{1},Pos_{2}) & \text{ notest if there is a wall between to postion} \\
At(Pos) & \text{ The current postion of the thing trying to solve the maze} \\
Postion(pos) & \text{ check it is a vaild postion} \\
Adjacent(pos_{1},pos_{2})& \text{ check to postion are ajcant}
\end{align}
$$
Const for all postions

Init conditon
$$
\begin{align}
At(A 1) \wedge \\
WallBettween(A 1, A 2) \wedge  \\
WallBettween(B 1, B 2) \wedge  \\
WallBettween(C 1, C 2) \wedge  \\
\dots

\end{align}
$$
actions
$$
\begin{align}
Acition&(Move(From, To), \\
 \text{Pre: }& Postion(From) \wedge Postion(To) \wedge \\
& adjacant(from, to) \wedge \neg wallbetween(From, To) \wedge At (From),\\ 
\text{Effect: } &\neg at(from) \wedge at(to) \\
)
\end{align}
$$

## 32 min usesa


# 2 The student’s revenge
## a
$$
\begin{align}
Turn(X) \\
Empty(1), Empty(2), Empty(3), \\
Empty(4), Empty(5), Empty(6),\\
Empty(7), Empty(8), Empty(9),
\end{align}
$$
## B
$$
\begin{array}{ccc}

Turn(O), \\
Marked(X,1),  & Empty(2),  & Marked(X,3), \\
Marked(O,4),  & Marked(X,5),  & Empty(6),\\
Marked(O, 7),  & Empty(8),  & Empty(9),
\end{array}
$$
## C
$$
\begin{align}
\forall P: Marked(P,1) \wedge Marked(P,2) \wedge Marked(P,3)\to Won(P) \\
 \\
\forall P: Marked(P,1) \wedge Marked(P,5) \wedge Marked(P,9)\to Won(P) 
\end{align}
$$
## D
$$
\begin{align}
Action(\ Play&(P, N), \\
\text{Pre: } & Turn(P) \wedge Empty(N),\\
\text{Effect: } & \neg Empty(N) \wedge Marked(P, N) \wedge \neg Turn(p) \wedge Turn(D_{P} - P) \\
)
\end{align}
$$

## E
$$
\begin{align}
Play(O,2), \\
Play(O,6), \\
Play(O,8), \\
Play(O,9), \\
\end{align}
$$
X can always do either $Play(X,2)$ or $Play(X,9)$
given the win condtion given in C, will make x win


## 19 min


# 3 the labyrinth part 2

