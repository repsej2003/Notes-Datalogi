first index rows
secound rindex coloms

Rows first then coloms


$$
\begin{align}

A=\begin{bmatrix}
1 & 0 \\
1 & 1
\end{bmatrix} \\

B = 
\begin{bmatrix}
1 & 1  \\
1 & 1
\end{bmatrix} \\
c = 2 \\

c(AB) = \begin{bmatrix}
2 & 2 \\
4 & 2
\end{bmatrix}
\end{align}
$$

Matrix product, 
Rækkfeølgen betydernoget
hver række i den først matrix prikket med hver colonen i et  andet matrix



Zero matrix neuatrial iforhold til addinont

The product of two none zero maxtirs can give zero

Ideintye matrix nuetarl iforhold til multipy
$I_{n}$ 


transpose
$A^T$ det kan også skrives $A'$
spejlt over main dinagle
$$
(AB)^T=B^TA^T
$$


# Trace
denote $tr(A)$ summen af elemnter på main diganile,
definere for kvardreisk matrix

# Inverse of matrix
a matrix is invertable if has a inverse,
square matrix $A$
$$
AA^{-1}=A^{-1}A=I_{n}
$$
equianlent suppuse $A\in R^{n\times n}$
1. $A$ is invertiable
2. the linear sytems $Ax=0$
3. RREF of $A$ is $I_{n}$

der findes flere ens stament men disse er udvalgt

### inverse of 2x2
$$
\begin{align}
A\in \mathbb{R}^{2\times 2} \\
A=\begin{bmatrix}
a & b \\
c & d
\end{bmatrix} \\
\text{ is invertiable if and only if }  \\
ad-bc \neq 0  \\
\text{ and in this case} \\
A^{-1}=\frac{1}{ad-bc} \begin{bmatrix}
d & -b \\
-c & a
\end{bmatrix}
\end{align}
$$

If two coloms in the matrix are linear dependt ( meaning on colom is a scalar of another ) then it is not invertiable


# elementary matrices
$E\in R^{n\times n}$ 
kan laves en enkelt row oprations  fra idenity matrix


Row oprstions kan udtrykkes som et elementary matrix
