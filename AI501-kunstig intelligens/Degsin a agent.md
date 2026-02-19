
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