https://pollev.com/kevinaguyarbrix951


## åbnet udsagn, 
der en variable der skal vælges et tal for at der et udsagn, 
Open propostion

Proprotional funciton


## Universal quantifier (alkvantor)
$\forall x \in D : P(x)$
For alle i domænet


## existential quantfier (Eksistenskvantor)
$\exists x \in D : P(x)$


$D$ er domænt, 

Nøjagti ét tilfæde
$\exists! x \in D : P(x)$




## Talmængde
![[Pasted image 20250903094905.png]]

$$
\begin{aligned}
\mathbb Z &= \{\dots, -1, 0, 1,2, \dots \}\\
\mathbb Z^+ &= \{1,2,3,\dots\}\\
\mathbb Z^- &= \{\dots,-3, -2, -1 \}\\
\mathbb N &= \{0, 1,2,3,\dots\}\\
\mathbb Q &= \{\frac{m}{n} | m \in \mathbb Z, n \in \mathbb Z^+\}\\
\mathbb R \\
ø &= \{\}
\end{aligned}
$$

Ved forall kvanator bruges impleies 
ved ekstier bruges og
### ekskulderne i en mængde
$D \textbackslash \{0\}$
backslash og tuborgklammer 

D er domænet så

Eksempl
 $\forall x \in \mathbb Z\textbackslash\{0\}:x^2>0$



## Restict

Domænet og det efter, adskillt med komma

reads in D with Q

$\forall x \in D, Q(x): P(x) \equiv \forall x \in D : (Q(x) \implies P(x))$
$\exists x \in D, Q(x): P(x) \equiv \forall x \in D : (Q(x)\wedge P(x))$



## Negation af kvantorer -- De morgans laws for quantifers

$\neg (\forall x \in D : P(x))\equiv \exists x \in D : \neg P(x)$
$\neg (\exists x \in D : P(x))\equiv \forall x \in D : \neg P(x)$


#### Proff

$S$ er mægnden af studerner
$P(x)$  $x$ er til stede
$$ \begin{align} \\
\neg (\forall x \in S : P(x)) \\
\neg(P(x_{1}\wedge P(x_{2})\ \wedge \ \dots) \\
\neg P(x_{1})\vee \neg P(x_{2})\ \vee \ \dots & \quad \text{De morgan}\\
\exists x \in S : \neg P(x)

 \end{align}$$



## Nested

$\forall x \in \mathbb{Z} \ \exists x \in \mathbb{Z} P(x,y)$

Rækkefølgen har bedtydening

alså den er ikke cominakt

#### Eksempel:
s mængdende af studernde
H mængdend af hobbyer

p (x,y) = studende $x$ kan lide hobby $y$

$\forall x \in S \ \exists y\in H:P(x,y)$
Enhver studernede kan lide en hobby

$\exists y \in H\  \forall x \in S:P(x,y)$
Der findes  hobby som alle kan lide

Eksempel på negation. 
$\neg (\forall x \in S \ \exists y\in H:P(x,y))\equiv \exists x \in S \ \forall y\in H: \neg P(x,y))$