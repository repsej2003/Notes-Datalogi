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



## (anti)symmetric
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


