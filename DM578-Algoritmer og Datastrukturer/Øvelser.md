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
1) papir
2) papir



# 6.5-11
set alle in i min
MergeSort

et element fra hver k liste, tag min ud, put endnu ind fra samme list den oprindeligt kom fra in heap


# 6.2 problem

![[Pasted image 20260304105753.png]]
a)
$\{d\cdot i+x \mid x \in{1,\dots d}\}$

b)
$$
\Theta(\log_{d}n)
$$
c)
For været lag skal den samenlige med d ellemeter og der $\log_{d}n$ lag
$$
O(d\cdot\log_{d}n)
$$
d)
for skal kun samenlige en for hvert lag
$$
O(\log_{d}n)
$$

e)
$$
O(\log_{d} n)
$$


# uge 11 del A
papir

2.
### 6.4.4
![[Pasted image 20260311121356.png]]
En sammenligns alg kan ikke gøre det hurtige en $n\log n$ så der for vil hapsort også altid kører lang sommere

## 8.2.1
![[Pasted image 20260311122746.png]]

## 8.2.3
![[Pasted image 20260311123353.png]]

for c indholder.  det sidst eleemnt så derfor vil vi sætte ind fra sidst

shift c en til højre med nul, brug den til at putte plads i en nul indekset liste, lig en til værdien hver gang der indsættes

## 8.2.6
use c to return answer, before calucation indekset
også returner 
$$
C[b]-C[a-1]
$$

## 8.3.2
stable
* Insertionsort
* Merge sort
* 

unstable
* heapsort
* quick sort

Scheme
Rembemer the index where before, after the list is sorted, sort each eq elemt after ther previous postion

space af O(n)
Højst doblet tid


laver om på key ved at gange med længden af listen og plus indekst i den oprindligt, sortes efter de ny keys

# 
papir

# 8.3.5
![[Pasted image 20260311130709.png]]

$$
\begin{align}
O(n+10^{\log_{10}(n^3-1)}) \\
n+10^{3\cdot \log_{10}n} \\
n+3\cdot \log_{10}n\cdot \log_{10}10 \\
n+3\cdot \log_{10}n
\end{align}

$$
$O(n)$

## hjemme uge 11 del b
# 8.3.1
![[Pasted image 20260311134520.png|644]]

# problem 7.5
![[Pasted image 20260311134625.png]]
# UGE 12 del 1 
# opgave 4a
Spørgsmål b (6%): Tegn alle mulige binære søgetræer, som har højde 2 og indeholder fire knuder med nøglerne 1, 2, 3 og 4.


# 12.2-1
![[Pasted image 20260316142504.png]]
a) true
b)true
c) fejler på 912
d) true
e) fejler på 299 mod 347

# 12.2-3
```python
if x.left not nil:
	return TREE-maxmun(x.left)
y = x.p
while y not nil and x == y.left: # Jeg var venstre barn, så mindre en min forældre, find den første forfædre der var som højre barn
	x = y
	y = y.p

return y
```

# 12.1-5
For ellers, ville vi kunne gøre sorter  hurtie ved inoder tree walk

# 12.2-5
![[Pasted image 20260316143855.png]]
if the succors hand a left child, the childe it would be the succsur
if the predsurce had a right chid, the child  it would be the suscure 



![[Pasted image 20260316144517.png]]
1. $O(n^4)$
2. $O(n)$
3. $O(n^2)$
4. $O(n \log n)$
5. $O(n^2)$
![[Pasted image 20260316144745.png]]
$c=\{ 0,1,2,4,4,9,9,10 \}$


# 13.1-2
case 1 a
case 2
case 3


juni 5
![[Pasted image 20260316151325.png]]
$t_{1}$ sandt
$t_{2}$ for få sorte i højre ben
$t_{3}$ ikke ind order
$t_{4}$ to røde i streng


![[Pasted image 20260316151338.png]]

### Hjemme
![[Pasted image 20260316152825.png]]
Nej vi kender kun det mindste ikke rækkefælgdende, for at genoprret orden skal vi bruge log n pr n


![[Pasted image 20260316153118.png]]
![[Pasted image 20260316153203.png]]
wrong
```python
RB-enumerae(T,r,a,b)
if r not nil:
	if r.key > a:
		RB-enum(T, r.left, a, b)
	if a <= r.key <= b:
		print r.key # assume the  a and b in the tree
	if r.key < b: 
		RB-enum(T, r.right, a, b)
```



# Del 2 
## 13.3-2
![[Pasted image 20260318121904.png]]

## 13.1-6

![[Pasted image 20260318122108.png]]
lagerst: $\sum_{i=0}^{k\cdot 2-1}2^i=2^{2\cdot k}-1$
mindst: $\sum_{i=0}^{k-1}2^i=2^k-1$

## 12.3-3
![[Pasted image 20260318125602.png]]
tree insert $\Theta(h)$ og inorder kører $O(n)$
worst case $O(n\cdot n+n)=O(n^2)$
best case $O(n \log n)$


## Hejmme
![[Pasted image 20260318131807.png]]
![[Pasted image 20260318131814.png]]
er $t_{3},t_{4}, t_{8}$
ikke $t_{1},t_{2},t_{5},t_{6},t_{7}$


b)
$t_{7}$

# SKole 13 
1.
![[Pasted image 20260325121852.png]]
Sorte
a, b, d
Rød
c,e 

![[Pasted image 20260325122223.png]]
$T_{3}$

2.
![[Pasted image 20260325122705.png]]

5 tager 2's plads

3.
![[Pasted image 20260325123228.png]]



| 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  |
| 67 |20 | 17 |      | 33|       |16  | 2    |      |      | 15 |
| 67 |20 | 17 |      | 33|       |16  | 2    |      | 18 | 15 |
| 67 |20 | 17 | 26| 33|       |16  | 2    |      | 18 | 15 |

4.
11.2-2

Consider a hash table with 9 slots and the hash function h(k) = k mod 9. Demonstrate what happens upon inserting the keys 5, 28, 19, 15, 20, 33, 12, 17, 10 with collisions resolved by chaining.
0
1: 28 - 19 - 10
2: 20
3: 12
4
5: 5 
6: 15 - 33
7
8: 17

5)
11.4-1

Consider inserting the keys 10, 22, 31, 4, 15, into a hash table of length m = 11 using open addressing. Illustrate the result of inserting these keys using linear probing with h(k, i) = (k + i) mod m and using double hashing with h1(k) = k and h2(k) = 1 + (k mod (m − 1)).

| 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  | 
|       |      |     |        |       |       |     |     |        |       |   10  | 
|  22 |      |     |        |       |       |     |     |        |       |   10  |
|  22 |      |     |        |       |       |     |     |        |  31 |   10  |
|  22 |      |     |        |  4  |  15  |     |     |        |  31 |   10  |

| 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  | 
|       |      |     |        |       |       |     |     |        |       |  10  | $(10+0\cdot(1+10\ mod\ 10)) \ mod\ 11$
|  22|      |     |        |       |       |     |     |        |       |  10  | $(22+0\cdot(1+22\ mod\ 10)) \ mod\ 11$
|  22|      |     |        |       |       |     |     |        |  31 |  10  |  $(31+0\cdot(1+31\ mod\ 10)) \ mod\ 11$
|  22|      |     |        |  4  |       |     |     |        |  31 |  10  |  $(4+0\cdot(1+4\ mod\ 10)) \ mod\ 11$
|  22|      |     |        |  4  |       |     |     |        |  31 |  10  |  $(15+0\cdot(1+15\ mod\ 10)) \ mod\ 11 = 4$
|  22|      |     |        |  4  |       |     |     |        |  31 |  10  |  $(15+1\cdot(1+15\ mod\ 10)) \ mod\ 11 = 10$
|  22|      |     |        |  4  |  15 |     |     |        |  31 |  10  |   $(15+2\cdot(1+15\ mod\ 10)) \ mod\ 11 = 5$

6)
![[Pasted image 20260325125814.png]]
6

7)
![[Pasted image 20260325125859.png]]
$h_{1}(18)=7$
$h_{2}(18)=1+(18 \ mod \ 10) = 9$

$7\to 5$

5


# hjemme 
13.4-4

In Exercise 13.3-2 on page 346, you found the red-black tree that results from successively inserting the keys 41, 38, 31, 12, 19, 8 into an initially empty tree. Now show the red-black trees that result from the successive deletion of the keys in the order 8, 12, 19, 31, 38, 41.

![[Pasted image 20260325133315.png]]

![[Pasted image 20260325133219.png]]
![[Pasted image 20260325133229.png]]
|3| | | 59| | 23 | 38 |53 | 60 | 72 | 87 |

$60\cdot 3+2=182$ 72-55 = 17 = 6

| 3 | 45 | | 59 | | 23 | 38 | 53 | 60 | 72 | 87 |

$45\cdot 3 +2=137$ 27 5


# skole A uge 15

![[Pasted image 20260408102355.png]]
![[Pasted image 20260408102745.png]]
![[Pasted image 20260408103149.png]]


`OS-select(T.root, OS-rank(T,x) + i)`

```python
next(x, i):
	if i = 0:
		return x
	p = x.p
	right_size = x.right.size
	if right_size < i:
		while (x = p.right):
			x = p
			p = x.p
		return next(p, i - (right_size +1))
	
	if 
	
	
```

4)
$(5,17)$

b)
tag den sørste af de træ brøtte, gør den samme op ad hvis der ændres i ymax

![[Pasted image 20260408110315.png]]


c
```python 
minAbove(x, tres):
	while x.left.maxy >= tres:
		x = x.left
	
	if x.y >= tres:
		return x
		
	if x.right.maxy >= tres: 
		return minAbove(x.right, tres)
		
	return -1 # not findet

```

![[Pasted image 20260408111610.png]]

```python
linarSeach(A, x):
	i = 0
	while i < A.len:
		if A[i] = x:
			return i
		i++
	return nil
```
Inveraiter 
i topen af while løken er alt på alt til venstre for det i idex er ikke x. 

![[Pasted image 20260408112126.png]]
```python
SelectionSort(A):
	i = 0
	while i < A.len-1:
		s_i = minum(A[i...A.len-1])
		A[i], A[s_i] = A[s_i], A[i]
		i++
```
Invariat
Alt til venstre for i er sortet og 
alt til højre for i er >= i

det sidste elemnt er ifølge invariate større eller ligemed i så derfor bøhoves ikke at flyttes

$$
\Theta(n²)
$$

![[Pasted image 20260408113135.png]]
Når vi insætter i et balacenert træ, når ved indsættelse gåes til venstre lægges p.højre.size +1 en til antalt af invertions.


![[Pasted image 20260408115025.png]]
i)  sandt 
ii)  falsk
iii)  falsk
iv sand
v) falsk


# Anden del 15
$$
\begin{align}
a=4 \\
b=3 \\
f(n) = n \\
 \\
\alpha = \log_{3}4=1.262 \\
 \\
n=O(n^{1.262-0.1})  \\
 \\
T(n)=\Theta(n^{1.262}) \\

\end{align}
$$
stigene potsens begrænset af den største

$$
\huge
4^{\log_{3}n}=n^{\log_{3}4}=n^{1.262}
$$

### opgave 2
![[Pasted image 20260410143621.png]]
$$
\begin{align}
a=1 \\
b=2 \\
f(n)=n^2 \\
 \\
\alpha=\log_{2}1=0 \\
 \\
n^2=\Omega (n^{0 + 1}) \\ \\
1\cdot \left( \frac{n}{2} \right)^2 = \frac{n^2}{2^2}=\frac{1}{2^2}\cdot n^2=\frac{1}{4}\cdot n^2 \leq  c \cdot n^2 \\
\frac{1}{4}\leq c\text{   del med }n^2
\text{ så der findes et c mindre end } \\ \\

T(n)=\Theta(n^2)
\end{align}
$$

expotpn falne så sum er begrænset af det første led
$$
\Theta(n²)
$$

## opgave 3
![[Pasted image 20260410144653.png]]
$$
\begin{align}
a= 16 \\
b=2  \\
f(n)=n^4+n^2 \\
\alpha=\log_{2}16=4 \\
 \\
f(n)=n^4+n^2=\Theta(n^4\cdot \log^0n)  \\
 \\
\text{så} \\
T(n)= \Theta(n^4\cdot \log n)
\end{align}
$$

# Hjemme
![[Pasted image 20260410145354.png]]
$$
\begin{align}
a=3 \\
b=3 \\
f(n)=n^2 \\
 \\
\alpha=\log_{3}3=1 \\
 \\
f(n)=n^2=\Omega (n^{1+0.1}) \\
 \\
 3\cdot \left( \frac{n}{3} \right)^2=3\cdot \frac{3}{9}\cdot n² \leq c n^2 \\ 
\frac{1}{3}\leq c \\


\text{så} \\
T(n)=\Theta(n^2)
\end{align}
$$

![[Pasted image 20260410145721.png]]
det er expotieltet $\Theta(n^2)$

$$
\begin{align}
a=4 \\
b=2 \\
f(n)=n^2 \\
 \\
\alpha=\log_{2}4=2 \\
 \\
f(n)=n=O(n^{2-0.01}) \\
\text{så} \\
T(n)=\Theta(n^2)
\end{align}
$$
# Skole uge 16
![[Pasted image 20260415123026.png]]
a)
$$
\begin{align}
a=2 \\
b=4 \\
f(n)=1 \\
\alpha=\log_{4}2=\frac{1}{2} \\
 \\
1=O( n^{\frac{1}{2} -0.1} ) \\
T(n)=\Theta(n^{1/2})
\end{align}
$$
b)
$$
\begin{align}
a=2 \\
b=4 \\
f(n)=\sqrt{ n } =n^{1/2}\\
\alpha=\log_{4}2=\frac{1}{2} \\
 \\
n^{1/2}=\Theta(n^{1/2}\cdot \log ^0n) \\
 \\
T(n)=\Theta(n^{1/2}\log n)
\end{align}
$$
c)
$$
\begin{align}
a=2 \\
b=4 \\
f(n)=\sqrt{ n }\log^2 n=n^{1/2}\log^2n \\
\alpha= \log_{4}2=\frac{1}{2} \\
 \\
n^{1/2}\log^2n=\Theta(n^{1/2}\cdot \log² n) \\
 \\
T(n) = \Theta(n^{1/2}\log^3n)
\end{align}
$$

d)
$$
\begin{align}
a=2 \\
b=4 \\
f(n)=n \\
\alpha=\log_{4}2 =\frac{1}{2} \\ 
 \\
n=\Omega (n^{1/2+0.1}) \\
 \\
2\cdot \frac{n}{4}=n \cdot \frac{1}{2} \leq c \cdot n  \\
\frac{1}{2}\leq c \\
så  c = \frac{1}{2} \\
 \\
T(n) = \Theta(n)
\end{align}
$$
e)
$$
\begin{align}
a=2 \\
b=4 \\
f(n) = n^2 \\
\alpha=\log_{4}2=\frac{1}{2} \\
 \\
n^2=\Omega (n^{1/2+0.1}) \\
 \\
2\cdot \left( \frac{n}{4} \right)^2=n^2\cdot \frac{1}{8}\leq c\cdot n^2 \\
\frac{1}{8}\leq c \\
 \\
så\ c = \frac{1}{8} \\
 \\
T(n) = \Theta(n^2)
\end{align}
$$

opgave 2
$$
\begin{align}
a= 1 \\
b= 2 \\
f(n)= 1 \\
\alpha=\log_{2}1= 0 \\
 \\
1= \Theta(n^0\cdot \log^0n) \\
 \\
T(n)=\Theta(\log n)
\end{align}
$$


opgave 3

$$
\Theta(2^n)
$$
Nej

opgave 4
![[Pasted image 20260415125842.png]]
```python
def insertsort(A, n):
	if n = 0:
		return
	insertSort(A, n -1)
	
	while A[n] < A[n-1]
		swap A[n], A[n-1]
		n--

```

nej

opgave 5
![[Pasted image 20260415131034.png]]

# Hjemme uge 16
$$
\begin{align}
a=8 \\
b=3 \\
f(n)=n^2 \\
\alpha=\log_{3}8\approx 1.8 \\
f(n)=n^2=\Omega (n^{1.8+0.1}) \\
 8\cdot\left( \frac{n}{3} \right)^2=n^2\cdot \frac{8}{9}\leq c\cdot n^2\\
\frac{8}{9}\leq c \\
T(n)=\Theta(n^2)
\end{align}
$$

$$
\begin{align}
a=9 \\
b=3 \\
f(n)=n^2 \\
\alpha=\log_{3}9=2\\ \\
f(n)=n^2=\Theta(n^2\cdot \log^0n)\\
T(n)=\Theta(n^2\cdot \log n)
\end{align}

$$
$$
\begin{align}
a=10 \\
b=3 \\
f(n)=n^2 \\
\alpha=\log_{3}10\approx2.1\\ \\
f(n)=n^2=O(n^{2.1-0.001})\\
T(n)=\Theta(n^{2.1})
\end{align}
$$
2)
$$
\begin{align}
a=4 \\
b=2 \\
f(n)=n^2\log n \\
 \\
\alpha=\log_{2}4=2 \\
 \\
f(n)=n^2\log n=\Theta(n^2\cdot \log^1n) \\
 \\
T(n)=\Theta(n^2\cdot \log^2n)
\end{align}
$$

3)
$$
\begin{align}
i=n\cdot 2^i+4\cdot 4^i
\end{align}
$$

4)
2.79513
2.79512
2.79515

strassen 2.81 så en smule bedre

5)

48


# skole uge 17 del 1
![[Pasted image 20260420142552.png]]
![[Pasted image 20260420142631.png]]
1. Sandt
2. sandt
3. sandt
4. falsk
5. sandt
6. Sandt??? hvorfor demsos $n\cdot \frac{1}{ \log n}$
7. falsk $n\cdot \frac{1}{2 ^n}$
8. falsk
9. Sandt
10. falsk


![[Pasted image 20260420144605.png]]
9 8 7 5 4 2 6 1 3

opgave 7
a)
5

b)
