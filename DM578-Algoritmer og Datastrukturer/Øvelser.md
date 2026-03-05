# uge 7
## Skole
1.

$\text{samlet tid}=\frac{O(n)}{\text{ops pr sek}}$

|            | 1 sec           | 1 time              | 1 år               | 1 årti              |
| ---------- | --------------- | ------------------- | ------------------ | ------------------- |
| $\log n$   |                 |                     |                    |                     |
| $n$        | $10^{9}$        | $3.6\cdot 10^{12}$  | $3.2\cdot 10^{16}$ | $3.1\cdot 10^{17}$  |
| $n \log n$ | $4\cdot 10^{7}$ | $9.85\cdot 10^{10}$ | $6.4\cdot 10^{14}$ | $6.1 \cdot 10^{15}$ |
| $n²$       | $3.1\cdot 10^4$ | $1.8\cdot 10^6$     | $1.8\cdot 10^{8}$  | $5.6\cdot 10^{8}$   |
| $n³$       | $1\cdot 10³$    | $1.5\cdot 10^4$     | $3.1\cdot 10^5$    | $6.8\cdot 10^5$     |
| $2^n$      | $30$            | $41$                | 54                 | 58                  |
	
2.
det bedste tilfæde vore alle ikke står på deres rigtige, er der kredse af størelse af 2, så  er er $\frac{n}{2}$ kredse

3.

5.
$O(n)$

# Uge 8 B
2)
sætning 1
$$
\lim_{ n \to \infty } \frac{0.1\cdot n ^2+5\cdot n+25}{n^2} = 0.1+\frac{5}{n} +\frac{25}{n^2}= 0.1
$$
sætning 2

3)


## Uge 8 hjemme del 2


2)
det ville være hurtige at finde den rigtige plads, men det skulle stadig flytte alle til højrer for den så det ville stadig tage $O(n^2)$

3)
![[Pasted image 20260223110232.png]]
$$
2^{n+1}=2\cdot 2^n
$$
$$
\lim_{ n \to \infty } \frac{2^n\cdot 2}{2^n}=2
$$
Så jeg kan vælge en konstant der er højre end 2, der med er den maks så stor

$$
\lim_{ n \to \infty } \frac{2^n}{2^{2n}}=\frac{2^n}{2^n\cdot 2^n}=\frac{1}{2 ^ n}= 0\implies 2^n=o(2^{2n})\implies 2^{n}=O(2^{2n})
$$
Så der for passer det ikke

4)
![[Pasted image 20260223111244.png]]
$$
\lim_{ n \to \infty }\frac{2^n}{n!}=0\implies 2^n=o(n!) \Leftrightarrow n! = \omega (2^n)
$$
$$
\lim_{ n \to \infty } \frac{n!}{n^n}=0 \implies n! = o(n^n) 
$$

# uge 9 
###  Del 1
![[Pasted image 20260225123332.png]]
$$
\log_{2}n,(\log_{10}n)^2,\sqrt{ n },n, 2^n
$$
2.
a) true
b) True
c) True
d) false
e) falsk
f) falsk
g) falsk ($\frac{\sqrt{ n }}{\sqrt{ n }\cdot \log_{2}n}=0\implies \sqrt{ n }=o(\sqrt{ n }\cdot \log n)$)
h) Sandt 
i) Sandt
j) sandt $\frac{(\log n)^3}{n \log n}= 0\implies \log^3 n = o(n \log n)$

3.
![[Pasted image 20260225125306.png]]
a)
sandt

b) 
sandt

c)
$f_{1}=n²$
$f_{2}=n$

$g_{1}=n^2$
$g_{2}=n^2$

falsk

4.
alg1
$\Theta(n^2)$


alg2
$\Theta(n^3)$

### Del 2 (hjemme)
![[Pasted image 20260225132628.png]]
1) sandt
2) flask
3) sandt
4) sandt
5) Sandt

2)
alg3
$\Theta(n^2)$

alg4
$\Theta(n ^3)$

3)


4)

![[Pasted image 20260225134417.png]]
A)
2,1
3,1
8,6
8,1
6,1

b)
revsed $n, n-1 \dots,2,1$

c)

d)
For vær gang vi tager noget fra højre array merge stiger vores counter med 1, starte rmed nul .
Hver gang vi tager fra venstre ligger vi til vores sum vores counter


# uge 10 Del 1
1.
7.1-1
$$
\begin{align}
\{ 13,19,5,12,8,7,4,21,2,6,11 \} \\
\{ 5,19,13,12,8,7,4,21,2,6,11 \} \\
\{ 5,8,13,12,19,7,4,21,2,6,11 \} \\
\{ 5,8,7,12,19,13,4,21,2,6,11 \} \\
\{ 5,8,7,4,19,13,12,21,2,6,11 \} \\
\{ 5,8,7,4,2,13,12,21,19,6,11 \} \\
\{ 5,8,7,4,2,6,12,21,19,13,11 \} \\
\{ 5,8,7,4,2,6,11,21,19,13,12 \} \\
\end{align}
$$

2.
7.1-2
$r$
Tilad ting der er lige med pivot til at lille på begge sidder, og så skifte hvis lægge dem på den en eller den anden siden

3.
7.2-2

$\Theta(n ^2)$
for array vi arbejde bliver kun en korter pr quick sort kald


4.
7.2-3
den vil kun tage et element af gange for, der vil aldrig blive byttet op mere end enden og starten


5.

|                 | best Case  | Worst-case | Sorteret input |
| --------------- | ---------- | ---------- | -------------- |
| Insertions Sort | $n$        | $n^2$      | $n$            |
| Merge sort      | $n\log n$  | $n\log n$  | $n\log n$      |
| Quicksort       | $n \log n$ | $n²$       | $n²$           |


6.
7-2 b)
Vi laver et tre rul i tilfælde af at den er mindre 
ligmed laver det vi før gjorde hvis car mindre eller ligememd
større udvider j



7.2-2
$\Theta(n)$
# uge 10 2
## 6.1-6
Ja
## 6.1-7
forket


## 6.2-1
tegning


juni 08 4a)
tegning

## 6.1-4
på et blad

# Hjemme uge 10 b



# 6.5-11
set alle in i min
MergeSort

# 6.2 problem

![[Pasted image 20260304105753.png]]
a)
$\{i+x \mid x \in{0,1,\dots d}\}$
b)
