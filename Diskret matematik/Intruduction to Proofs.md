Section 1.7


## odd numbers

$$
\text{For a number } n \in n \ \mathbb{Z} \text{ called } \ \\ 
\begin{align}

even \text{ if and only if } \  &\exists  k \in \mathbb{Z}:n=2k \\
odd \text{ if and only if }\ & \exists  k \in \mathbb{Z}:n=2k +1
\end{align}

$$

Parity, to tal har samme paritet hvis de begge er lige, eller begge er ulige

### Bevis 
Påstand
$$

\text{let } n \in \mathbb{Z} \text{ then }
\begin{align}
\\ n \text{ is odd} \implies n^{2} \text{ is odd}
\end{align}
$$

$$
\begin{align}
n \text{ is odd} \implies \exists k \in \mathbb{Z}: n = 2k+1 \\ \\

n^{2} &= (2k+1)^{2} \\
 &=4k^{2}+4k+1 \\
 &= 2(2k^{2}+2k)+1 \\ \\

(2k^{2}+2k)  &\in \mathbb{Z}
\end{align}
$$
Så $n$ er et ullige for det er fordi vi slutter på defintion af ulige

Modsat påstand
$$
\text{let } n \in \mathbb{Z} \text{ then }
\begin{align}
\\ n^{2} \text{ is odd} \implies n \text{ is odd}
\end{align}
$$
$$
\begin{align}
n \text{ is odd} \implies \exists k \in \mathbb{Z}: n = 2k+1 \\ \\

n^{2} &= 2k+1\\
 n &= \pm \sqrt{2k+1 } \\
\end{align}
$$
Vi bliver låst for vi kan ikke gøre mere


### Proof by contraposition
$$
\text{let } n \in \mathbb{Z} \text{ then }
\begin{align}
 \\
 \\
\\ n^{2} \text{ is odd} & \implies n \text{ is odd} \\ \\
\text{Contrapostion} \\
n \text{ is even}  & \implies n ^{2} \text{ is even} \\
\end{align}
$$$$
\begin{align}
n \text{ is even} \implies \exists k \in \mathbb{Z}: n = 2k \\ \\

n^{2} &= (2k)^{2} \\
 &=4k^{2} \\
 &= 2 \cdot 2k^{2} \\ \\

2k^{2}  &\in \mathbb{Z}  \\ 
\end{align}

$$
Corollary
$\text{let } n \in \mathbb{Z} \text{ then } n^{2} \text{ is odd} \leftrightarrow  n \text{ is odd}$

følge af theorem


## Modstrids bevis -- Proof by contradion
$(\neg p \implies F)\implies p$


### Proof by intimidation 
Trivial

### Proof by omission 
the  proof is left as an execise to the reader


## inddel i tifæde

$$

\begin{align}
\text{Lad } n \in \mathbb{Z}. \left\lfloor  \frac{n+1}{2} \geq \frac{n}{2}  \right\rfloor \\ 
n \text{ er lige} 
\left\lfloor  \frac{n +1}{2}   \right\rfloor &= \left\lfloor  \frac{n}{2} +\frac{1}{2}  \right\rfloor &= \frac{n}{2} \\

n \text{ er ulige} 
\left\lfloor  \frac{n +1}{2}   \right\rfloor &=  \frac{n+1}{2}  &= \frac{n}{2}\\
\end{align}
$$



## Constriktve bevis mod ikke konstroktive 

Constructive bevis, et bevis der giver en løsning

non Constructive bevis, et bevis ikke giver en løsning, bare at den findes



## Råd til bevis
1. kig på simple udgave
2. Tegn passsende billede
# Induktion Bevis
