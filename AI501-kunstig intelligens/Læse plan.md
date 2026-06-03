| Content                    | Assignments  <br>Reading           |                                                                                                                                                                                                        |                                         |
| -------------------------- | ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------- |
| February 03, 10h-12h, U140 | Lecture 1                          | Course overview  <br>Slides: [admin infos](https://matteoacclavio.com/pages/courses/2026-IAI/00_Course_Description.pdf), [overview](https://matteoacclavio.com/pages/courses/2026-IAI/01_Overview.pdf) | Chapter 1, 28.1, 28.2                   |
| February 12, 14h-16h, U140 | Lecture 2                          | Definition of rational agent  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/02_Intelligent_Agents.pdf)                                                                                | Chapter 2                               |
| February 19, 14h-16h, U140 | Lecture 3                          | Search I, Uniformed Search in Simple Environments  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/03_Search.pdf)                                                                       | Chapter 3                               |
| February 26, 14h-16h, U140 | Lecture 4                          | Search II, Informed Search and Search in Complex Environments  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/04_Search2.pdf)                                                          | Chapter 3, 4                            |
| March 05, 14h-16h, U140    | Lecture 5                          | Search III, Adversarial Search  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/05_Search3.pdf)                                                                                         |                                         |
| March 12, 14h-16h, U140    | Lecture 6                          | Constratint Satisfaction Problems  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/06_CSP.pdf)                                                                                          |                                         |
| March 19, 14h-16h, U140    | Lecture 7                          | Logical Agents  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/07_logicalAgents.pdf)                                                                                                   | Chapter 7 up to 7.4                     |
| April 07, 10h-12h, U140    | Lecture 8  <br>Dr. Giulia Manara   | Inference in Propositional Logic and First-Order Logic  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/08_InferenceAndFoL.pdf) (by Giulia Manara)                                      | Chapters 7, 8.1, and 8.2                |
| April 09, 14h-16h, U140    | Lecture 9  <br>Dr. Giulia Manara   | Unification and First Order Logic  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/09_unificationAndFoL.pdf) (by Giulia Manara)                                                         | Chatpers 8.3, 9.1, 9.2, 9.5             |
| April 16, 14h-16h, U140    | Lecture 10  <br>Alessio Pellegrino | Tutorial on MiniZinc  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/10_Minizinc_Tutorial.pdf) (by Alessio Pellegrino)                                                                 |                                         |
| April 23, 14h-16h, U140    | Lecture 11                         | Uncertainty and Probability  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/11_Uncertainty.pdf)                                                                                        | Chapter 12 (up to 12.5) and Appendix A  |
| April 30, 14h-16h, U140    | Lecture 12                         | Bayesian Networks  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/12_Bayesian_Networks.pdf)                                                                                            | Chapters 12.6, 13.1, 13.2.1, 13.3.(1-3) |
| May 07, 14h-16h, U140      | Lecture 13                         | Classical Planning  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/13_PDDL.pdf)                                                                                                        | Chapter 11                              |
| May 21, 14h-16h, U140      | Lecture 14                         | Wrap-up and Review  <br>[slides](https://matteoacclavio.com/pages/courses/2026-IAI/99_wrap_up.pdf)                                                                                                     |                                         |
- [x] Chapter 1
		Fist halv del læst, anden del skimmet
- [ ] Chapter 2
- [ ] chapter 3
- [ ] chapter 4
- [ ] chapter 7
- [ ] chapter 8.1-8.3
- [ ] chapter 9.1 9.2 9.5
- [ ] chapter 11
- [ ] chapter 12 - 12.6
- [ ] chapter 13.1 - 13.3

# Rational agents
### PEAS
How to frame a problem, say some thing with these thisn
- P - performance mesaure -hvad er målet, hvad skal maximers
- E - Envirment - verden agent arbejder i
	- fully/partian observalble, hvor meget kan agten vide på et givent tidspunkt
	- deterministic / stochastic, ved agent hvad der sker når den gør noget?
	- Episodic vs. sequential, hvis der ikke er sammen hæng mellem beslutning er den epsocids, som vacume cleane. Men hvis der brug for hukomelse er det sequenatil.
	- static vs dynamic, does the world change doing the planing face, semidynamic, hvis costen hænger sammen med tiden
	- discret / contiues, Er der koma tal af postion eller hopper den i et hvis interval
	- single aget vs multi agtet, agere der mere en en agent i verden
- A - actuartors - action the agtent can do to change to world
- S - sensors - hvor dan oplever ageten verden.

Rational, def:
at maksimere forvented perfomance givet percept og knowledge

## skal læses op på
## Kind of agents 
* simple reflex
* model-bades
* goal-based
* utility-based
* learning agents

# Search 
## Tree-search vs graph-search
Man søger teknisk set altid på træer,

men hvis man husker på hvor man er kommet fra kan man opdage loops.  Så derfor kalder man det graf søgning

Har man lavet sit træ om til en graf,
Kan der gentages knuder 
??????

## problem defnintso
- Set of state $S$
* Inital state $s_{0} \in S$
* goal states $G \subseteq S$
* actions $A$
* ?? 
* transition model $T: S \times A\to S$
* action vost function $C:S\times A\times S\to \mathbb{R}^+$

## Search criteria
- completeness - vil find en løsning hvis den findes
- optimality - vil finde en optimal løsning
- time - hvor meget mermorY
- space - hvor meget af grafen skal være i memory på et givet tidspunkt

## search AlGO 
### Uniformed
#### Breadth first
 -- Søger i breden først , så alle stier meg længde en så all med længde 2

Completeness: yes 
Time complexity: $O(n^d)$
Space complexity: $O(n^d)$
Optimal? Only if all actions have the same cost

#### Uniform cost
Tager of for længer altid den korteste sti

Completeness: yes 
Time complexity: better than breadth-first search
Space complexity: better than breadth-first search
Optimal? Depends on the cost function 

#### dept first search 
Søger i dyben først


Completeness: NO (can get stuck in infinite branches)
Time complexity: O (nm)
Space complexity: O (nm) 
Optimal? NO 

where m is the maximum depth of the search tree 
![[Pasted image 20260603152842.png]]
### Informed search
#### Heurusitk
et gæt på hvor langt der mål fra en given state
##### Admissible heuristic
Må alldrig gætte for højt
så
$$
h()\leq c(n)
$$
hvor $c(n)$ er den reale længde fra $n$ til mål
##### Consistent heuristic
Det skal  være consitet i trekant, 
så den må ikke blive højere af at tage et skridt.

### Greedy best first
Gå efter den bedste kant nu ud fra heuristic

Note: complexity in the worst case is the same as breadth-first search, but in practice it can be much better depending on the quality of the heuristic. 
### A*
Vælg næste note udfra $f(n)$
hvor 
$$
f(n)=g(n)+h(n)
$$
g er cost af stien fra start til n
Note: complexity in the worst case is the same as breadth-first search, but in practice it can be much better depending on the quality of the heuristic.

If the heuristic is admissible, then A* tree search is optimal.
If the heuristic is consistent, then A* graph search is optimal.


# Ordbog
- Forward chaning
- backwardchaning
- 