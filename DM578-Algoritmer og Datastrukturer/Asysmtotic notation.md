# O (store O)

$$
\begin{align}
f(n)= O(g(n)) \ \Leftrightarrow \\  \\

\exists k>0,n_{0}:\forall n\geq n_{0}:f(n)\leq k\cdot g(n)
\end{align}
$$
$f(n)$ vokser højst så hurtigt som funktuner fra $g(n)$ klasse
# $\Omega$ (Omgea)
$$
\begin{align}
f(n)= \Omega(g(n)) \ \Leftrightarrow \\  \\

\exists k>0,n_{0}:\forall n\geq n_{0}:f(n)\geq k\cdot g(n)
\end{align}
$$
$f(n)$ vokser mindst så hurtigt som funktuner fra $g(n)$ klasse
# $\Theta$ (theta)
$$
\begin{align}
f(n)\in \Theta(g(n)) \ \Leftrightarrow \\  \\
O(g(n))=f(n)=\Omega (g(n))
\end{align}
$$

$f(n)$ vokser lige så hurtigt som funktuner fra $g(n)$ klasse
# o (lille o)
$$
\begin{align}
f(n)\in o(g(n)) \ \Leftrightarrow \\  \\

\exists n_{0}:\forall k>0, n\geq n_{0}:f(n)< k\cdot g(n)
\end{align}
$$

# $\omega$ ( lille omgea)
$$
\begin{align}
f(n)\in \omega(g(n)) \ \Leftrightarrow \\  \\

\exists n_{0}:\forall k>0, n\geq n_{0}:f(n)> k\cdot g(n)
\end{align}
$$


# Til samligne

$$
\begin{align}
hvis \frac{f(n)}{g(n)}\to k>0for\ n\to \infty & \Leftrightarrow f(n)=\Theta(g(n)) \\
 \\

hvis \frac{f(n)}{g(n)}\to 0for\ n\to \infty  & \Leftrightarrow f(n)=o(g(n))
\end{align}
$$
Den støreste funktion skal stå  nederest


![[Pasted image 20260225132712.png]]
![[Pasted image 20260225132736.png]]
![[Pasted image 20260225132751.png]]
