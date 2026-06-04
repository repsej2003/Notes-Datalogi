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

## Two player search - adervsial
### mimax
Optimal if the opponent also plays optimally 
Complexity: $O (b^m)$ where b is the branching factor and m is the maximum depth of the tree
Space complexity: O (bm

### Alpha-beta prune
????? ved ca hvordan? viggtigt præcis

Optimal if the opponent also plays optimally
Complexity:  $O(b^{m/2})$ in the best case,$O (b^m)$ in the worst case
Space complexity: O (bm) 

# Constraint Satisfaction Problems (CSP) 
Beskriv varaible og deres domane og hvilke ting der skal vør opflydt for at den er løst

### assingment
nogle af varaible sat til nogle sepefike værdi
parital hvis ikke alle varibler er sat, 
complete hvis alle er sat

Consist hvis den over holder allle constraints

Solution if complete and consisten

### hyper grah
variable node
hyperedge(edge mellem flere end to noder) - er en eller anden constraint

## solving 
### backtracking
min sudko løsning, dybde først til den fejler derfeter gå prøv den næste

#### ways to improve
##### constraint propagation
local consistency 
* Node consitsy - alt i domænet overholder consraint på node selv
* arc consisten -  x and y, for alle værdi i x's domane er der en værdi i y der overholder en costraint mellem de to
* path consistent - any pair (x, y ) is path consitent with z, hvis alle consist værdi der kan gives x, y, også gælder at der findes et z som over holder alle constraint mellem x og z, og  y og z
* k - consisty, det samme som oven over bare skallert til en k størrlse, så for all gyldige værdie til de første $k_{n-1}$ finders der en værdi der gør $k_{{n}}$ gyldig
* strong k - consisty, så gælder det at den er konsitet med alle værdi under k .

##### variable heuristics
- Minimum Remaining Values (MRV)
- Degree Heuristic - den varibale med flest constraites
- Dom/Wdeg (adaptive) - tilpasser så constrait der for det fejler oftere får bliver prioteret
###### value heuristics 
- Least Constraining Value (LCV)
- Most Constraining Value
- Min-Value / Max-Value - vælg dem i en naturlig række følge, fra minst til størt eller modsat ?? 

#### Backjumping
hop til bage til det rigtie sted, på magisk måde

# Syntax and sematics
## Syntax
hvor dan et sprog skal se ud 
## sematics
hvad et sprog betyder
# Inference in PL
## Model
Det giver en værdi til alle propostions i et sprog

En sætning $\alpha$ er satisfiable in $\mathfrak{M}$ hvis den er sand for de værdi i den model
$$
\mathfrak{M}\models \alpha
$$
En sætning $\alpha$ er vaild hvis den er sand i  alle modeler
$$
\models \alpha
$$
hvis der ikke findes en model hvor den er er sand
$$
\not\models \alpha
$$

$\alpha$ er unsatifalvbe hvis der ikke findes nogle modle hvor den er sand.

## Entialment
Hvis en sætning og er sand, så følger en anden sætning.
$$
\alpha \models\beta \ \text{iff} \ (\forall M, M \models \alpha \to M \models \beta)
$$

logisk ekvilente
$$
\alpha\equiv \beta \ \text{iff} \ (\alpha \models \beta \ \text{and }\beta  \models \alpha)
$$

## Infernce 
infernce alogtrtimer tage to sætning og fortæller om den en entailer den anden

- Sound (or truth-preserving ) - hvis den kun svar ja når det er sandt
- compelete - hvis den svar ja i alle tilfæde hvor det er sandt.

bruteforce hvor man tjekker alle modeler er en algortimer men meget langsom.

### PL
#### Deduction therom
$$
\begin{align}
\alpha \models\beta&\Leftrightarrow \models \alpha\to \beta \\
\alpha \models\beta&\Leftrightarrow \not\models \alpha \wedge \neg \beta
\end{align}
$$
#### modus punus
![[Pasted image 20260604092159.png]]
### Forward chaning
Du har en KB og en spørgsmål $\alpha$ 

Start med KB og bruger inferenes rules, til at bevæge sig fremad, for ny facts, indtil man rammer $\alpha$ eller ikke kan få mere information

sound and complete
### Backward chaining
Du har en KB og en spørgsmål $\alpha$ 

Start bagfra og bruger inferens regler til at gå baglænds fra $\alpha$ til man rammer en modstrid eller ikke kan finde mere
sound and complete

refutation at finde mod stid for at bevise at den er derf

### Resolution Rule
![[Pasted image 20260604094045.png]]
RR er mere genrel, hvor man har to claues hvor man har en modsætning så $m_{j}$ i den ene og $\neg m_{j}$ i den anden.
![[Pasted image 20260604094412.png]]

Hvis man rammer den tome sætning er man fundet en modstrid
Den virker på sætninger på CNF 

En clause er or af littereace
og en helt sætning er and af claueses
#### Resoltion algorithem
idea:
bevis $KB\models \alpha$ ved at hvise at $KB \wedge \neg \alpha$ er unstaitfiable
Så et modstrid bevis

 1. $KB \wedge \neg \alpha$ til CNF
 2. brug RR til at lave nye clauses
 3. getag 2. indtil 
	 - der ikke kan laves flere clauses så $KB \not \models a$
	 - Eller finder den tome sætning så  $KB \wedge \neg \alpha$ er unsitfabiale $\implies KB\models alpha$

### Resolution closure
RC (S) = set of all clauses obtained from S by repeated resolution

### First-Order Logic

Predicate kan være sandt eller falsk
Funciton retuner et obejct

#### Terms
- Constant - et spesfik object
- function(term, ..) - spesik object ud fra et eller andet  - ek vensrtebenaf(kingjohn)
- variable: et genrelt object

#### models
model i FOL er 
$$
\mathfrak{M}=(\mathbb{D}, I)
$$
- Domain $\mathbb{D}$ a set of object $\mathbb{D} \not =\emptyset$
- Interpreations, $I$ assign meaning to symboles
	- cosntas $\to$ objects in $\mathbb{D}$
	- Predicate symbols $\to$ relations over $\mathbb{D}$
	- funcitons symbols $\to$ functaln relations over $\mathbb{D}$

# Ordbog

- Forward chaning
- backwardchaning
- 