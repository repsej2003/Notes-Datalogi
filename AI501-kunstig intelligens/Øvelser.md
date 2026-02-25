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
|                 |                                                                                            |


