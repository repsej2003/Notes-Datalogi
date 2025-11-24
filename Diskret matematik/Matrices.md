Ved Kevin https://pollev.com/kevinaguyarbrix951
Eksempel på matrix i latex
# Definition
Rectangular array med $m$ rækker og $n$ kolloner er kaldet $m\times n$ matrix
$$
  A_{2\times 3} =
  \left[ {\begin{array}{cc}
    a_{11} & a_{12} & a_{13}\\
    a_{21} & a_{22} & a_{23}\\
  \end{array} } \right]
$$
$a_{i,j}$ 
$i$ er række
$j$ er kolone

# Addition
Let $A$ and $B$ $m\times n$ matrices. then the sum $A$ and $B$, $C=A+B$, is the matrix
$$
c_{i,j}=a_{i,j}+b_{i,j}
$$
for all $i \in \{ 1,\dots m \}$ and $j \in \{ 1,\dots n \}$

# Multiplication
Let $A\ m \times k$ and $B$ $k\times n$ matrices. then the product $A$ and $B$, $C=A\cdot B$, is the matrix $m\times n$
$$
c_{i,j}=a_{i,1}b_{1,j}+a_{i,2}b_{2,j}+\dots+a_{i,k}b_{k,j}
$$
for all $i \in \{ 1,\dots m \}$ and $j \in \{ 1,\dots n \}$

Rækker gange koloner, prik produktet.
antal af kolonner i den første skal være antal af rækker i det andet 
Ikke kumiatoinv, række følgen har betydning ( Produktet er ikke *kommutativt*)

# Identites matri
$I$ $m\times m$ 
$$
a_{i,i} = 1
$$
for all $i \in \{ 1,\dots m \}$ resten er 0

# Transponerede
Hvor rækker bliver til koloner $A^T$

# Symmetrix
A er kvadrisk og den er symmetrisk hvis det gælder
$$
A=A^{T}
$$
# Boolean matrices
Der kun har $0$ eller $1$

kan tolkes som sandt eller falsk.

$\wedge \text{ og } \vee$ kan forståes som at at summe så hvert element hver for sig

### Boolsk product
Let $A\ m \times k$ and $B$ $k\times n$ matrices. then the boolean product $A$ and $B$, $C=A \odot B$, is the matrix $m\times n$
$$
c_{i,j}=(a_{i,1}\wedge b_{1,j})\vee (a_{i,2}\wedge b_{2,j})\vee \dots \vee (a_{i,k}\wedge b_{k,j})
$$
for all $i \in \{ 1,\dots m \}$ and $j \in \{ 1,\dots n \}$
