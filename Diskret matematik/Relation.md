	knytter ellemetner til hinaden
eksempler relation
* (student id, name, udandelse) , tertiary
* (student id,  name) binary
* (parent, child) binary
* <
* =


# defenitons binary relations
$A,B:$ sets
A relation from A to B is a subset of $A \times B$

A relation on A is a subset of $A\times A$


### def:
$A:$ set
A relation *on $A$* is a subset $A\times A$


ex:
$R_{abs}=\{ (a,b) \in \mathbb{Z}\times \mathbb{Z}\mid |a|=|b| \}$


$(a,b)\in R$ is read " a is realted to b via R"
and may also be written $aRb$



# Propties

## Reflexive
$R:$ relation on $A$
$R$ is relfective if $\forall a\in A:(a,a) \in R$

$R:$ relation on $A$
$R$ is irelfective if $\forall a\in A:(a,a) \not\in R$



## (anti) og symmetric
$R:$ relation on $A$
$R$ is symetrics if $\forall a,b\in A: ((a,b) \in R \implies (b,a)\in R)$

$R:$ relation on $A$
$R$ is antisysmetrics if $\forall a,b\in A: ((a,b) \in R \implies (b,a)\not\in R \vee a=b)$
eller
$\forall a,b \in A:(a,b)\in R\wedge(b,a)\in R \implies a=b$
eller
$\forall a,b \in A:(a,b)\in R\wedge a \not =b \implies (b,a)\not\in R$

## transtive
$R:$ relation on $A$
$R$ is transtive  if $\forall a,b,c\in A: ((a,b) \in R \wedge(b,c)\in R \implies (a,c)\in R)$



# Repreentations of realations
Grap, matrix
eksempel
$$
\begin{align}
S&=\{ 1,2,3 \} \\

R_{<} &= \{ (a,b) \in S\times S\mid a<b \} \\
M_{R_{<}}&=\left[ {\begin{array}{ccc}
0 & 1& 1 \\
0 &0&1 \\
0&0&0\\
\end{array} } \right]
\end{align}
$$


# Relationer er genrealisering af funktioner
## Relations can be composed
$R:$  relationer from $A$ to $B$
$S:$ relationer from $B$ to $C$
$S \circ R =\{ (a,c) \mid \exists b \in B:(a,b)\in R \wedge(b,c) \in S \}$



defnetion
$R^1=R$
$R ^{n+1}=R^n\circ R, \text{for} n \geq {1}$



### defentions conectivty relation
$$R^*=\bigcup_{i=1}^{\infty} R^{i}$$



# Closures
def of clorsures 
for any relation R and any property P, the closure of R with respect to P (if it exists) is the C
1. C has propert P
2. $R\subseteq C$
3. $\forall$ relation S satisfying 1. og 2. : $C\subseteq S$ (Mindste mullige lukning)

## Refelctiv Closure
$R$: relation  on $A$
the reflectiv closure of R is
$r(R)=R \cup \{ (a,a)|a\in A \}$

eksampel
realtion on $\mathbb{N}$
$R_{<}=\{ (a,b)|a<b \}$
$r(R_{<})=\{ (a,b)|a<b \} \cup\{(a,b)|a=b  \}=\{ (a,b)|a\leq b \}$

## Symmetric closure
$R$: relation  on $A$
the symmetric closure of R is
$s(R)=R \cup \{ (b,a)|(a,b)\in R \}$

eksampel
realtion on $\mathbb{N}$
$R_{<}=\{ (a,b)|a<b \}$
$s(R_{<})=R_{<}\cup R_{>}=R_{\not=}$


## Transtive clossure
$R$: relation  on $A$
the transtive closure of $R$ is
$t(R)=R^*$


# Equivalence relations
a Relation is called Equvialnce realtions if it is reflectiv, symmetric, transtive

if R os an eqeivalence realtion and $(a,b)\in R$ then a and b are equvialent

## Eqivalence class
if R is an equivalence relation on A and $a\in A$ then the equvialnce class of a is
$[a]_{R}=\{ b|(a,b)\in R \}$

laver en partoinering af mængden, så den deler mængden i dele


eksempel relation on $\mathbb{N}$
$\{ (a,b)|\ a \text{ and } b \text{ have the same parity} \}$
$[0]_{R}=\{ 0,2,4,\dots \}$
$[1]_{R}=\{ 1,3,5,\dots \}$
$[2]_{R}=[0]_{R}=[4]_{R}=\dots$



# Partial ordings
a Relation is called Patial ording realtions if it is reflectiv, antisymmetric, transtive

if a relation R in a set A is 
* reflecitv
* anitsymters
* transtive 
R is a parital order (or ordering)  and (A, R) is  a parital  orded set (poset)


## navne
let $\preceq$ be a parial order 
if $a\preceq b$ or$b\preceq a$ then a and b are comparable otherwise the incomparade

## finding the 
Let $(S,\preceq)$ be poset and $a\in S$
then, a is
- a minmal element if $\nexists b\in S-\{ a \}: b\preceq a$
- the least  element if $\forall b\in S: b\preceq a$
- a maximal element if $\nexists b\in S-\{ a \}: a\preceq b$
- the least  element if $\forall b\in S: a\preceq b$

### Hasse diagram
fjern alt som kan udleds af Reflecktic og transtive.
Retning tages ud fra højden, pilen går op ad
![[Pasted image 20251103144439.png]]
$(\{ 1,2,3,4,5,6,7,8 \},|)$


# Total orders
def 
$(S,\preceq)$ poset
if all pairs $a,b\in S$ are comparable, is $\preceq$ is a total order

for eskempl $\leq$
