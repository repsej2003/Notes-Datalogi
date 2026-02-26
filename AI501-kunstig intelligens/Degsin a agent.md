
# Solving-problem agent
en agent der planer fremad, søger i mulighed

### the agents goes thourgh

1. Goal defintion
2. Problem formulation
3. Seach
4. ececution 

Open loop, der er ikke feedback til agent fra verden
CLosed loop, balancer ting,, non determinism


## Problem formulation
we asume states are 'atomic'
* set of states $S$
* initial state $s_{0}\in S$
* goal state $G \subseteq S$
* actions $\mathbb{A}$
* avaible actinos $A:S\to \mathbb{A}(-)\subset \mathbb{a}$ # deter her under ligt
* transtition model $T:S\times \mathbb{A}\to S$
* action cost function $C:S\times \mathbb{A}\times S\to \mathbb{R}⁺$

A path is a sequence of actions
A soluion is a path starting from the inital state and ending in a goal


	(0,5)
(3,2)
(0,2)
(2,0)
(2,5)
(3,4)


# Tree search vs graph search
tree search 
- cannot detet loops
- dont track vistited states

graph seact
* Track vistes states

Alllways billed treac


# informed search
Heuristictis estiamet the distance to goal
Is it good
* Admissible heuristict never overstimates the cost reach the goal
* Consistent heuristic: for every node $n$  and every succesor  $n'$ of $n$ the estimanted cost of reacing the goal is no grater the step of getting to$n'$ plus the stimated cost of reaching the goal from $n'$
Hvor meget arbejde er der inden goal state 
