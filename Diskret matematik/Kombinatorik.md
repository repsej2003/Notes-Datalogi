# product rule
For any finite sets $S_{1},S_{2}$ it holds that $|S_{1}\times S_{2}|=|S_{1}|\cdot|S_{2}|$

Det kan genrellers så det gælder for $S_{1}, S_{2}, \dots,S_{n}$ så
$$
 \left|  \bigtimes_{i=1}^n S_{i} \right | = \prod _{i=10}^n |S_{i}|
$$
$$
\frac{l!}{(l-k)!}
$$
# Sum rule
For any finite sets $S_{1},S_{2}$ with $S_{1} \cap S_{2}=\emptyset$ it holds that $|S_{1}\cup S_{2}|=|S_{1}|+|S_{2}|$

Det kan genrellers så det gælder for $S_{1}, S_{2}, \dots,S_{n}$  hvor $S_{i} \cap S_{j}$ for any $i \neq j$så
$$
\left|\bigcup_{i=1}^n S_{i}\right|=\sum_{i=1}^n|S_{i}|
$$

# Subtraction Rule
For any finite sets $S_{1},S_{2}$ it holds that $|S_{1}\cup S_{2}|=|S_{1}|+|S_{2}|-|s_{1}\cap S_{2}|$

# Division Rule
Suppuse $A$ is finite set with $A=B_{1}\cup B_{2}\cup\dots \cup B_{n}$ where
$|B_{i}|=d$ for all $i$ and
$B_{i}\cap B_{j}=\emptyset$ for all $i\neq j$
then $n=\frac{|A|}{d}$

# tree diagrams

# due holds principet
let $k\geq$ 1 be an intger. hwen $k+1$ or more objevt are placed into $k$ boxes
there exists at elast one box that contaoins at least two object



# permunationer 
## uden tilbage ligning
$$
P(n,r)=\frac{n!}{(n-r)!}
$$
 ordnede lister
  med unike objeter der bliver taget ud


# med tilbageligning (med reption)
$$
n^r 
$$

# combinationer
## uden reption
$$
C(n,r)=\begin{pmatrix}
n  \\
r
\end{pmatrix}=\frac{P(n,r)}{r!}=\frac{n!}{r!(n-r)!}
$$
antal delmængde med cardinatl r ud af et set r


# med reption
$$
\begin{pmatrix}
n+r-1 \\
r
\end{pmatrix}
$$

![[Pasted image 20251208144857.png]]

#### Binimial cofitcenten $\uparrow$

$$
(x+y)^n=\sum_{j=0}^n\begin{pmatrix}
n \\
j
\end{pmatrix}\cdot x^{n-j}\cdot y^j
$$

# Pascals identity
let $a, b$ be integers with $1\leq k\leq n$ then it holdes
$$
\begin{pmatrix}
n+1 \\
k
\end{pmatrix}
=
\begin{pmatrix}
n \\
k-1
\end{pmatrix}
+
\begin{pmatrix}
n \\
k
\end{pmatrix}
$$

# corollar 
$$
\begin{pmatrix}
n \\
r
\end{pmatrix}
=
\begin{pmatrix}
n \\
n-r
\end{pmatrix}
$$
$$
\begin{align}
\sum_{k=1}^n \begin{pmatrix}
n \\
k
\end{pmatrix} =2^n
\end{align}
$$
# Permutations ith indistingusahble
supse there are $n$ object, each of whcih has exatly one of $k$ types and there are $n_{i}$ objcet of type $i$ for any $i \in \{ 1, \dots,k \}$ then the number of diffrenet permuation of $n$ object
$$
\frac{n!}{n_{1}!\cdot n_{2}!\cdot . . .  \cdot n_{k}!}
$$


![[Pasted image 20251208155206.png]]