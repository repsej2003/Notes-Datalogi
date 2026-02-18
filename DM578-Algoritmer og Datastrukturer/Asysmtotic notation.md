# O (store O)

$$
\begin{align}
f(n)= O(g(n)) \ \Leftrightarrow \\  \\

\exists k>0,n_{0}:\forall n\geq n_{0}:f(n)\leq k\cdot g(n)
\end{align}
$$

# $\Omega$ (Omgea)
$$
\begin{align}
f(n)= \Omega(g(n)) \ \Leftrightarrow \\  \\

\exists k>0,n_{0}:\forall n\geq n_{0}:f(n)\geq k\cdot g(n)
\end{align}
$$
# $\Theta$ (theta)
$$
\begin{align}
f(n)\in \Theta(g(n)) \ \Leftrightarrow \\  \\
O(g(n))=f(n)=\Omega (g(n))
\end{align}
$$

# o (lille o)
$$
\begin{align}
f(n)\in o(g(n)) \ \Leftrightarrow \\  \\

\exists n_{0}:\forall k>0, n\geq n_{0}:f(n)\leq k\cdot g(n)
\end{align}
$$

# $\omega$ ( lille omgea)
$$
\begin{align}
f(n)\in \omega(g(n)) \ \Leftrightarrow \\  \\

\exists n_{0}:\forall k>0, n\geq n_{0}:f(n)\geq k\cdot g(n)
\end{align}
$$
