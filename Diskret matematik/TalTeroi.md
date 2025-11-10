# Delighed
$$a|b \Leftrightarrow \frac{b}{a}\in \mathbb{Z}$$


$$
\begin{align}
&\text{For any } a,b,c \in \mathbb{Z}, a \neq o, \\
(i) & \ a |b \wedge a|c \implies a|(b+c)\\
(ii)&\ a|b \implies \forall k\in \mathbb{Z}:a|kb \\
(iii)& \ a|b \wedge b|c \implies a|c
\end{align}
$$
### Corolarry 4.1.1
$$
a|b \text{ og } a|c \text{ så } a|(kb+mc )\ k,m \in \mathbb{Z}
$$


## diviosnt algoritme
a er divendten
b er divsor 
q er qoution
r er rest
$a=bq+r \text{ hvor } 0 \leq r<b$



# Congrunce
for any $a,b\in \mathbb{Z}$ and $m\in \mathbb{Z}^+$
$$
a \equiv b (\text{mod } m) \Leftrightarrow m|(a-b)
$$
a is congruent to b modulo m

det samme som 
$$
\begin{align}
a \text{ mod m} = b \text{ mod m} \\
 \\
\exists  k\in \mathbb{Z} : a = b + km
\end{align}
$$
congruence is an equivalnce relaiton


### hvad kan vi gøre for at hold en kungorene
1. vi kan lægge et tal til på begge side
2. vi kan lægge to som er kongrunte med 
3. vi kan gange med to kongrunte
### theorem 4.1.5
You can add and mulitpe numbers to both sides as long as the y are congruen
$$
\begin{align} 
\text{For any } & a,b,c,d \in \mathbb{Z} \text{ and } m\in \mathbb{Z}^+ \\ \\

a &\equiv b\ (\text{mod }m) \wedge c\equiv d\ (\text{mod m}) \\
&\Downarrow \\
a+c& \equiv b+d\ (\text{mod }m) \ \wedge \\
a\cdot c & \equiv b\cdot d\ (\text{mod }m) \\

\end{align}
$$

Negative tal er det samme:

$$
\begin{align}
\text{For any } & c,d \in \mathbb{Z} \text{ and } m\in \mathbb{Z}^+ \\ \\ 
c&\equiv d\ (\text{mod }m) \\ 
&\ \Updownarrow \\
-c&\equiv -d\ (\text{mod }m) \\ 
\end{align}

$$

# Primtal
### Defeniton
Let $p \in \mathbb{Z}$ and $p\geq 2$ 
if $1$ and $p$ are the only numbers dividing $p$, 
$p$ is a prime.
otherwise, $p$ is a compostie (sammensat).

## Fundamental theorem of arithmetic
Let $n \in \mathbb{Z}$ and $n\geq 2$.
Then, $n$ can be written as a *product of primes* in *exactly one way*


## greatest common divisor (GCD)
Let $a,b \in \mathbb{Z}^+, a\neq 0$ or $b\neq 0$. Then
$gcd(a,b)=max\{ d \mid \ d|a\wedge d|b \}$
is called the greatest common divis of $a$ and $b$
største fælles nævner

#### Relative prime, indbyrdes primiske
hvis to tallens største fælles nævner er 1 er de indbyrdes primsike

## least common multiple (LCM)
Let $a,b \in \mathbb{Z}^+, a\neq 0$ or $b\neq 0$. Then
$lcm(a,b)=min\{ m \mid \ a|m\wedge b|m \}$
is called the smallest common multiple of $a$ and $b$
mindste fælles multiplum


## theroum, lcm gange gcd er lig produkt af de to 
Let $a,b \in \mathbb{Z}^+, a\neq 0$ or $b\neq 0$. Then
$a\cdot b=gcd(a,b)\cdot lcm(a,b)$


## Euckild algorithm


# Lemma 4.3.1
$$
\begin{align}
a = bq+r,& \ a,b,q,r \in \mathbb{Z} \\
\Downarrow  \\
gcd(a,b)=&gcd(b,r) \\
\end{align}
$$

![[Pasted image 20251110093405.png]]
