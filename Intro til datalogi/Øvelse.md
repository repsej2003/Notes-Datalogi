Instruktor: Mathilde
mloll22@student.sdu.dk


## Hjemme til Uge 38
1. 173, 252
2. 50, 364
3. 42418
4. '0b1100 1010 1011', 0b0000 0000 0001 1010
5. a5d
6. 100 0000, 11 1000 
7. 0b 111 0101, 1 0000 0000, 0b 1001 0010 1001
8. 1002020
9. 54, -14
10. 1100 1000, 0000 1110
11. 11001011, 1000 0010
12. for at to tal er modsatte skal de lægges sammen og give nul, hvis man invitere talet og lægger sammen for man $111 \dots 1111$ lægges et til for at få det til at flyde over
13. 5.875
14. 0 100 1010, 1 011 0100
15. 10.101 = 2,625, -1.11=-1,75

## Hjemmme til uge 39
1.  Nor

| $x_{1}$ | $x_{2 }$ | $\neg((x_{1}\wedge x_{2})\vee(x_{1}\vee x_{2}))$ |
| ------- | -------- | ------------------------------------------------ |
| 0       | 0        | 1                                                |
| 0       | 1        | 0                                                |
| 1       | 0        | 0                                                |
| 1       | 1        | 0                                                |

2.  0 
3. $((x_{1}\oplus x_{2})\wedge(x_{2} \ nand \ x_{3}))\ nand\ ((x_{2} \ nand \ x_{3}) \vee \neg x_{3})$

| $x_{1}$ | $x_{2 }$ | $x_{3}$ | $((x_{1}\oplus x_{2})\wedge(x_{2} \ nand \ x_{3}))\ nand\ ((x_{2} \ nand \ x_{3}) \vee \neg x_{3})$ |
| ------- | -------- | ------- | --------------------------------------------------------------------------------------------------- |
| 0       | 0        | 0       | 1                                                                                                   |
| 0       | 0        | 1       | 1                                                                                                   |
| 0       | 1        | 0       | 0                                                                                                   |
| 0       | 1        | 1       | 1                                                                                                   |
| 1       | 0        | 0       | 0                                                                                                   |
| 1       | 0        | 1       | 0                                                                                                   |
| 1       | 1        | 0       | 1                                                                                                   |
| 1       | 1        | 1       | 1                                                                                                   |

4. $$
 \begin{align}
(\neg x_{1} \wedge \neg x_{2} \wedge \neg x_{3}) & \vee  \ \\
(\neg x_{1} \wedge \neg x_{2} \wedge  x_{3}) & \vee \ \\ 
(x_{1} \wedge \neg x_{2} \wedge \neg x_{3}) & \vee \ \\ 
(x_{1} \wedge x_{2} \wedge \neg x_{3}) & \vee \ \\
\end{align}
$$ 
5.  ![[2025-09-15_124039 redigeret.jpg]]
6. Nul ganger med $2^n$ 


![[Pasted image 20250922123149.png]]
## uge 39 i timen
1. - 
	1. 3C0A
	2. 22B3
	3. 5534
	4. 9XBC
	5. DC14
2. Ikke lavet
3. Ligger værdierne i 10, 12, 14 sammen og skriver det til 18 

4.
```
1110
1212
5112
3118
C012
```

5.dette program gør det for $1+2+\dots+(k-1)$ hvor $k$ er i 18
```
2000
2101
1218
5330
5001
D206
331A
0000
0000
0000
0000
0000
0200
0100

```

6.
```
1016
1118
D10A
3014
C000
3114
C000
0000
0000
0000
7F00
0200
7F00
```


7.
```
1020
BF0A
20FF
3022
C000
2055
3022
C000
0000
0000
0000
0000
0000
0000
0000
0000
0000
5500

```

8.0x0F
```
1010
210F
8001
3012
C000
0000
0000
0000
1500
0500

```

9.
```
1020
210F
8F01
1022
21F0
8E01
7DEF
3D22
C000
0000
0000
0000
0000
0000
0000
0000
1500
3500

```

10.

```
1020
210F
8F01
1022
21F0
8E01
AE04
AF04
7DEF
3D22
C000
0000
0000
0000
0000
0000
1500
5400

```


## Hjemme til uge 39



sidst opgave. med bit opartioner 
```
112C
122D
2FFE
2E01
801E
BD10
5323
2000
A207
811F
A101
D108
3320
C000
0000
0000
3000
0000
0000
0000
0000
0000
0000
0000
0000
0000
0202
```
# Uge 40 i timen
1. nej
2. a) 7  b) 3 eller 4 c) 10.000 d) 15, 14 

| 10.000 |     |
| ------ | --- |
| 5.000  |     |
| 2.500  |     |
| 1250   |     |
| 625    |     |
| 313    |     |
| 157    |     |
| 79     |     |
| 39     |     |
| 20     |     |
| 10     |     |
| 5      |     |
| 3      |     |
| 2      |     |
| 1      |     |
|        |     |


3.
tid en funktin tager
$\text{samlet tid}=\frac{O(n)}{\text{ops pr sek}}$

| function       | 1 min                             | 1 år                               |
| -------------- | --------------------------------- | ---------------------------------- |
| n              | $6\cdot 10^{10}$                  | $3.15\cdot 10^{16}$                |
| $n \log_{2} n$ | $1.9\cdot 10^9$                   | $6.4 \cdot 10^{14}$                |
| $n^{2}$        | $244 949 \approx 2.4\cdot 10^{5}$ | $177583783\approx 1.7\cdot 10^{8}$ |
| $n^{3}$        | $3915\approx 3.9\cdot 10^3$       | $315938\approx 3.1 \cdot 10^5$     |
| $2^{n}$        | 35                                | 54                                 |
|                |                                   |                                    |

4.
* T
* T
* T
* T
* F
* f) T
* T
* F
* T
* F

5.
a) $O(n)$
b) $O(n^2)$
c) $O(n^{2})$ ??
d) $O(n^2)$


```python
s = 0
for i = 1 til n
	for j = 1 til n
		hvis i == j 
			for k = 1 til n
				s = s + 1
returner s
```


6.
a) $O(n)$
b) $min\leq L[j], 1\leq j\leq i-1$ 

Det er sandt i første tilfælede for der er kun selv der til venstre for $i$


For et nyt tilfælde ved vi 





c) 

```python
Minimum(L)
	n = L.length
	min = L[1]
	for i = 2 til n
		hvis L[i] < min
			min = L[i]
			
	returner min
```
resuktivet
```python
Minimum(L, i)
	hvis n = L.length
		return L[i]
		
	min = Minimum(L, i+1)
	hvis L[i] < min
		return L[i]
	return min
```
# Uge 41 i timen
1.
```python
file.open()
i=0
while not file.endoffile():
	n = file.readNext()
	if n == goal:
		return i
	 i++
return -1

```
2.
merge
```python
A.open()
B.open()
reslutat.open()
a = A.readNext()
b = B.readNext()

while ikke A.endoffile() and ikke B.endoffile()
	if a <= b
		reslutat.writeNext(a)
		a = A.readNext()
	else
		reslutat.writeNext(b)
		b = B.readNext()

while ikke A.endoffile():
	reslutat.writeNext(a)
	a = A.readNext()

while ikke B.endoffile():
	reslutat.writeNext(b)
	b = B.readNext()

A.close()
B.close()
reslutat.close()
```
3.
merge, de to lister, tage den mindste over, og fjern den fra den gamle, 
hvis de er ens så flyt en of fjern begge.

4.
merge A og B, der efter merge C in i den nye liste
$O(n)$ hvor $n=2(|A|+|B|)+|C|$

5.
det er det samme som den ogriale, men istedt for at gruppere listerne af to, så grupper den  af 3
$O(n\cdot \log n)$

6.
3, 9, 4, 10

7.
1 celle

8.
0.6122448979591837

9.
0.3819444444444444


#### Hjemme
-
4.
```python
def chance(breath, n):
	if n == 1:
		return 1
	return chance(breath, n -1) * (breath - (n-1))/breath
```
5.
0.8194413370750351

6.
373

7.


# Uge 43 i timen
1. Øvelse
$$
\begin{align}
&0 \\
&03 \\
&03\dots 3 
\end{align}
$$
$\text{regex } = 03*$

2. øvelse
$$
\begin{align}
1111 \\
121 \\

\end{align}$$
slutter altid på 1, kan have et vilkoralti antalt 1 i streg, men kun enkelt af 2'er
$regex = 1(1|21)^*$

3. øvelse
lavet i hånd

4. øvelse
lavet i hånd

5. øvelse
løst i hånd

6. øvelse
$$
\begin{align}
ab \\
ab\dots ab
\end{align}
$$
$\text{regex}=(ab)^+$

7. øvelse
starting with ones,
or starting  zero
$$
\begin{align}
S\to 0M 1\to 00M 1\to000M 1\to000M 11\to000M 111\to0001111 \\
S\to 0M 1\to 0M 11\to0M 111\to0M 1111\to00M 1111\to0001111 \\
\end{align}
$$

8. øvelse
$0\dots 1$
minminu længde 4, dots er 0 eller 1
$regex=0((0|1)(0|1))^+1$

9. øvelse
$$
\begin{align}
S&\to 0 \ S\ 1 \\
S&\to \epsilon \\
\end{align}
$$

10. øvelse
hånd

11. øvelse
$$
\begin{align}

\mathbb{N} = \text{:Digit:} \\
 \\

S &\to \mathbb{N} \\
S &\to (S) \\
S &\to S+S \\

\end{align}
$$
# Øvelse uge 44
1. $\text{regex } = 03*$
2. $\text{regex} = 1(1|21)^*$
3. $\text{regex}=0^*10^*(10^*10^*)^*$
4. $\text{regex}=(0|1)^*010(0|1)^*$
øvelse 5
5. $regex_{1}=((00)^*11^*0)((00)^*11^*0)(1|1^*01^*0)^*$
6. $regex_{2}=((00)^*11^*0)(0(00)^*11^*0)(1|1^*01^*0)^*01^*$
7. $regex_{3}=(0(00)^*11^*0)((00)^*11^*0)0(1|1^*01^*0)^*01^*$
8. $regex_{4}=(0(00)^*11^*0)(0(00)^*11^*0)(1|1^*01^*0)^*$
9. $ex_{5}=regex_{1}|regex_{2}|regex_{3}|regex_{4}$

$$
\begin{align}
regex10_{odd}&= ((00)^*11^*0)\\
regex10_{even}&= (0(00)^*11^*0) \\
regex_{end}&=(1|1^*01^*0)^* \\ \\

regex_{e-e}&=regex10_{even}regex10_{even}regex_{end} \\
regex_{o-o}&=regex10_{odd}regex10_{odd}regex_{end} \\
regex_{e-o}&=regex10_{even}regex10_{odd}regex_{end}01^* \\
regex_{o-e}&=regex10_{odd}regex10_{even}regex_{end}01^* \\
 \\
regex_{reslut}&=regex_{e-e}|regex_{o-o}|regex_{e-o}|regex_{o-e}
\end{align}
$$


### Hjemme 
a. vilkårilig bit streng og tom
b. streng af 0 eller streng af 1 eller tom
c. vilkårlet antal 0 efterfulgt af vilkprt antal 1
d. vilkårilig bit streng
e. vilkårt antal c
f. tomme streng $\epsilon$
g. tomme streng $\epsilon$


D.
c,cc,ccd

# øvelse uge 45
1.
a) yes A = T and B = T
b) Yes, A = T 
c) yes, A = F
d) no, cause it both will never be true, cause they are opssit
E) yes, A=T, 

2.
A) 
B) = C)
D) = E)

3.
a) $-A\wedge B$
b) $-A\vee B$
c) $-A\vee B$
d)
$$
\begin{align} \\
(A\implies B)\wedge(-b\implies A) \\
(-A\vee B )\wedge(--B\vee A) \\
(-A\vee B )\wedge(B\vee A) \\
\end{align}
$$
e)
$$
\begin{align}
A\to(-(B\vee D)) \\
-A\vee(-(B\vee D)) \\
-A\vee(-B\wedge -D) \\
(-A\vee-B)\wedge (-A\vee-D) \\
\end{align}
$$

4.
$-X_{1,3}\wedge -X_{1,4}$

5.
```
p cnf 4 6
-1 -2 0
-1 -3 0
-2 -4 0
-3 -4 0
1 2 0
3 4 0
```
1 -2 -3 4

6.
$$
\begin{align}
(X_{1,1}\to-X_{1,2})  \wedge\\
(X_{1,1}\to-X_{2,1})  \wedge\\
(X_{1,2}\to-X_{2,2})  \wedge\\
(X_{2,1}\to-X_{2,2})  \wedge\\
(X_{1,1}\vee X_{1,2})  \wedge\\
(X_{2,1}\vee X_{2,2})  \wedge\\

\end{align}

$$
$$
\begin{align}
(-X_{1,1}\vee-X_{1,2}) \wedge\\
(-X_{1,1}\vee-X_{2,1}) \wedge\\
(-X_{1,2}\vee-X_{2,2}) \wedge\\
(-X_{2,1}\vee-X_{2,2}) \wedge\\
(X_{1,1}\vee X_{1,2}) \wedge\\
(X_{2,1}\vee X_{2,2}) \wedge\\
\end{align}
$$
```
p cnf 4 6
-1 -2 0
-1 -3 0
-2 -4 0
-3 -4 0
1 2 0
3 4 0
```


## Hjemme 
1.
a) yes A = T, B = T
b) yes A = T, B = T
c)yes A = F, B = F
d) no

2.
a) $(-A\vee B)\wedge(B\vee A)$ = D
b) $(-A\vee-B)\wedge(-B\vee A)$ = C

3.
a)
$$
\begin{align}
(-A\to B)\wedge(-B\to-A) \\
(A\vee  B)\wedge(B\vee-A) \\

\end{align}
$$
b)

$$
\begin{align}
A\to (-(B\wedge D)) \\
A\to (-B\vee -D) \\
-A\vee (-B\vee -D) \\
 -A\vee -B\vee -D \\
\end{align}
$$
c)
$$
\begin{align}
A\to (-(B\to (C\wedge D))) \\ 
-A\vee (-(B\to (C\wedge D))) \\ 
-A\vee (-(-B\vee (C\wedge D))) \\ 
-A\vee (B\wedge -(C\wedge D)) \\ 
-A\vee (B\wedge (-C\vee -D)) \\ 
 (-A\vee B) \wedge (-A\vee(-C\vee -D)) \\ 
 (-A\vee B) \wedge (-A\vee -C\vee -D) \\ 
\end{align}
$$

4.