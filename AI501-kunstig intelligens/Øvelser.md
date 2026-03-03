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