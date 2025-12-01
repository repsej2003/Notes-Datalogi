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
# Øvelse uge 46
1. a
2. 
Bands

| name: CHAR(20) | formed in: INTEGER |
| -------------- | ------------------ |
| ’Foo Fighters` | 1994               |
3. a d e
4. 
```
Game(name: string, relase_date: date, budget: integer)

Develops(gamename: string, studiename: string)

developer_studie(name: string, adresse: string, num_Emp: integer)
```
5. `
```
a	SELECT COUNT(*) FROM Movies M WHERE M.production_year > 1994; 4

b   SELECT mid,title,director FROM Movies M ; 8

c SELECT mid,title,director FROM Movies M ; 8

d SELECT director FROM Movies M ; 7 but (8)
```
6. 
```
CREATE TABLE Concert(cid INTEGER PRIMARY KEY, band CHAR(20), date CHAR(20), location CHAR(20), total_number_seats INTEGER, ticket_price FLOAT);

CREATE TABLE FestivalHasConcert(fid INTEGER , cid, PRIMARY KEY (fid, cid), FOREIGN KEY (fid) REFERENCES Festival, FOREIGN KEY (cid) REFERENCES Concert);
```

7. opgave 7
```
DELETE FROM Movies M WHERE M.production_year != 1994;

SELECT * FROM Movies;
```

8.
$$\sigma_{\text{productionYear=1994 and director = Quentin Tarantino}}(Movies)$$
`SELECT * FROM Movies M WHERE m.production_year = 1994 AND m.director = 'Quentin Tarantino';`

9.
```
INSERT INTO Movies VALUES (8, 'The Lord of the Rings', 'Peter Jackson', 2001, 93000000);

DElETE FROM Movies M WHERE M.mid = 2 OR M.mid = 3 OR M.mid = 4 OR M.mid = 6;
```

10.


`SELECT title FROM Movies M WHERE M.production_year < 1990 OR m.budget_used > 3000000000;`
$$\pi_{title}\sigma_{productionYear < 1990\ \vee \ BudgetUsed > 3000000000}(Movies)$$


11.
```
SELECT * FROM Movies M
WHERE M.production_year < 1990
UNION
SELECT * FROM Movies M
WHERE m.budget_used > 3000000000;
```

$$\sigma_{BudgetUsed > 3000000000}(Movies) \cup \sigma_{productionYear < 1990}(Movies)$$

12.
```
SELECT * FROM Movies M WHERE (M.production_year < 1990 AND m.budget_used > 3000000000) OR m.production_year > 2010;
```

$$\sigma_{productionYear > 2010\vee(productionYear < 1990\ \wedge \ BudgetUsed > 3000000000)}(Movies)$$

13.
```
SELECT * FROM Movies M, Movies M2 WHERE M.director = M2.director AND M.mid != M2.mid;

```

$$\sigma_{director_{1}=director_{2} \wedge mid_{1}!=mid_{2} }(Movies \times Movies)$$


14.
```

SELECT * FROM Movies M, Movies M2 WHERE M.budget_used > M2.budget_used;

```

$$\sigma_{budgetUsed_{1}>budgetUsed{2} \wedge mid_{1}!=mid_{2} }(Movies \times Movies)$$


### Hjemme

1.
a. Yes
b. No
c. False
d. false
e. TRue
f.  No it can be the same number of tuples
g.  True, den kan ske at fjerne dubikelter 
h. they have to be the same, ithing same types

2.
```
Festival(fid: INTEGER , name: CHAR(20), start_date: CHAR(20), end_date: CHAR(20), festival: INTEGER , concert: INTEGER)
```


3.
```
SELECT (*) 
FROM Festival  
JOIN FestivalHasConcert ON Festival.Fid=FestivalHasConcert.festival;
```

```
SELECT *
FROM Festival, FestivalHasConcert
WHERE Festival.Fid=FestivalHasConcert.festival;
```
Komma er implisit krydsprodukt.

4.
```
SELECT (*) 
FROM Festival  
JOIN FestivalHasConcert ON Festival.Fid=FestivalHasConcert.festival
JOIN Concert ON FestivalHasConcert.concert = Concert.Cid;
```

# Øvelse uge 47
###
1. Opgave

(b)

13
12
6
3
2
1

2 gange 13 og 3

2. Opgave
$212\cdot 49\equiv 1 (\text{mod 221})$

opgave 3
```
a) e*d===1 mod n
b) is correct
c) not 2 prime factors of N
d) not 2 prime factors of N
```

opgave 4
6

Opgave 5
$$
\begin{align}
N=1517 \\
e= 17 \\
N'=(37-1)\cdot(41-1)=1440 \\
 \\
\text{Find d med extend eulkikd} \\
1440 &= 84 \cdot 17 +12 \\
17 &= 1 \cdot 12 +5 \\
12 &= 2\cdot 5 +2 \\
5 &= 2\cdot 2 +1 \\
\\ 
1&=5-2\cdot 2 \\
&=5-2\cdot(12-2\cdot 5) =-2\cdot 12+5\cdot 5 \\
&=-2\cdot 12 +5(17-12)=5\cdot 17 - 7 \cdot 12 \\
&=5 \cdot 17 -7(1440-84\cdot 17)=-7\cdot 1440+593\cdot 17 \\
 \\
d &= 593 \\
de &  \equiv 17\cdot 593\equiv 1 \text{ mod }1440
\end{align}
$$
$$
\begin{align}
m&=423 \\
e&=17 \\
N &= 1517 \\
 \\
c&=m^e=423^{17} \text{ mod }1517\\ \\
m^2& = m \cdot m  \text{ mod }1517 &=423\cdot 423 \text{ mod }1517 & =1440\\
m^4& = m^2 \cdot m^2  \text{ mod }1517 &=1440\cdot 1440 \text{ mod }1517 & =1378\\
m^8& = m^4 \cdot m^4  \text{ mod }1517 &=1378\cdot 1378   \text{ mod }1517 & =1117\\
m^{16}& = m^8 \cdot m^8  \text{ mod }1517 &=1117\cdot 1117  \text{ mod }1517 & =715\\
m^{17}& = m^{16} \cdot m  \text{ mod }1517 &=715\cdot 423  \text{ mod }1517 & =562\\
c & =562
\end{align}

$$
$$
\begin{align}
 & c  =562,  & d  =593, & N=1517  \\ 
m & = c^d = 562^{593}\text{ mod }1517 \\
 \\
c^2& = c \cdot c  \text{ mod }1517 &=562\cdot 562 \text{ mod }1517 & =308\\
c^4& = c^2 \cdot c^2  \text{ mod }1517 &=308\cdot 308 \text{ mod }1517 & =810\\
c^8& = c^4 \cdot c^4  \text{ mod }1517 &=810\cdot 810 \text{ mod }1517 & =756\\
c^{16}& = c^8 \cdot c^8  \text{ mod }1517 &=756\cdot 756   \text{ mod }1517 & =1144\\
c^{17}& = c^{16}\cdot c \text{ mod }1517 &=1144\cdot 562   \text{ mod }1517 & =1237\\
c^{34}& = c^{17} \cdot c^{17} \text{ mod }1517 &=1237\cdot 1237   \text{ mod }1517 & =1033\\
c^{35}& = c^{34}\cdot c \text{ mod }1517 &=1033\cdot 562   \text{ mod }1517 & =1052\\
c^{70}& = c^{35} \cdot c^{35} \text{ mod }1517 &=1052\cdot 1052   \text{ mod }1517 & =811\\
c^{140}& = c^{70} \cdot c^{70} \text{ mod }1517 &=811\cdot 811   \text{ mod }1517 & =860\\
c^{280}& = c^{140} \cdot c^{140} \text{ mod }1517 &=860\cdot 860   \text{ mod }1517 & =821\\
c^{281}& = c^{280}\cdot c \text{ mod }1517 &=821\cdot 562   \text{ mod }1517 & =234\\
c^{562}& = c^{281} \cdot c^{281} \text{ mod }1517 &=234\cdot 234     \text{ mod }1517 & =144 \\
\end{align}
$$
Har regnet forket ved ikke hvor jeg brugte den forkrete espoent, pythun siger det er rigtigt

opgave 6
to make sure we talk aboyut the same document

opgave 7
it esay to factor

opgave 8
to ensure the data is keept

opgave 9
$$
\begin{align}
 N = 1517 \\
e = 13 \\
m = 43 \\
 \\
c = 43^{13} \text{ mod 1517} = 894 \\
m^2 = 43\cdot 43\text{ mod 1517} = 332 \\
m^3 = 43 \cdot m^2\text{ mod 1517} =43 \cdot 332 \text{ mod 1517}  = 632 \\
m^6 = m^3\cdot m^3\text{ mod 1517} =632 \cdot 632 \text{ mod 1517}  = 1294 \\
m^{12} = m ^6\cdot m^6\text{ mod 1517} =1294 \cdot 1294 \text{ mod 1517}  = 1185  \\
c=m^{13}= m^{12} \cdot m \text{ mod 1517} = 1185 \cdot 43 \text{ mod 1517} = 894
\end{align}
$$

b)

$$
\begin{align} 
p =37 \ q = 41\\
gcd (13, (37-1)\cdot(41-1)) = gcd(13,36\cdot 40)= gcd(13,1440)\\ \\
1440 = 13 \cdot 110 + 10\\
13 = 10 \cdot 1 + 3 \\
10 = 3 \cdot 3 + 1 \\
3 = 1 \cdot 3 + 0  \\
 \\
1 &= 10 - 3 \cdot 3 \\
&= 10 - 3 \cdot (13- 10 \cdot 1) \\
&= 10 - 3 \cdot 13 +3 \cdot 10 \\
&= -3 \cdot 13 +4 \cdot 10 \\
&= -3 \cdot 13 +4 \cdot (1440-110\cdot 13) \\
&= -3 \cdot 13 +4 \cdot 1440 -440\cdot 13 \\ 
&= 4 \cdot 1440 -443\cdot 13 \\  \\
 \\
d = -443 = -443 \text{ mod }1440 = 997\\
\end{align}
$$

decrypter

$$
r = 894^{997}\text{ mod }1517 = 43
$$


### Hjemme
1.
$$
\begin{align}
p &= 11 \\
q &= 13 \\
N'&=(11-1)(13-1)=10\cdot 12= 120 \\
e&=70 \\
gcd(e,N') &= 2 \cdot 5 = 10 \\ 
10\cdot d &\equiv \text{ mod }40\\ \\

d& \text{ finds ikke }
\end{align}
$$

2.
```
filter (\x -> (x*x `mod` 143) == 1) [0..143]
[1,12,131,142]

```

3.
test of 11
$$

\begin{align}
a = 8 \\
 \\
8^{11-1} \text{ mod } 11 = 1 \\
8^{5} \text{ mod } 11 = 10 = -1 \\ \\
 \\

a = 3 \\
 \\
3^{11-1} \text{ mod } 11 = 1 \\
3^{5} \text{ mod } 11 = 10 = 1 \\

\end{align}

$$


test of $15=5\cdot 3$
$$

\begin{align}
a = 8 \\
 \\
8^{15-1} \text{ mod } 15 = 4 \\
\end{align}

$$
not pirme

test of $561=17\cdot 11\cdot 3$
$$

\begin{align}
a = 13 \\
 \\
13^{561-1} \text{ mod } 561 = 1 \\
13^{280} \text{ mod } 561 = 1 \\
13^{140} \text{ mod } 561 = 1 \\ 
 13^{70} \text{ mod } 561 = 67  \\
 \\

a = 3 \\
 \\
3^{561-1} \text{ mod } 561 = 375 \\
 \\
\end{align}

$$

# Øvelse uge 48

1.
```
4
|23
|||
|2|
1|1
```

Max er 5

2.
```
0.0|0.1|0.0
0.8|0.4|0.3
0.2|0.5|0.7
```

3.
```
1|0|0|
4|3|0|
1|3|4|
```

4.
2 ville ikke kunne komme til at ligge i den sidste, den kan være i den før, for der kun 7 nu

5.
$\frac{14}{5}=\frac{28}{10}$
$\frac{24}{10}$

### Hjemme
1.
$$
\frac{6}{42}, \frac{14}{42}, \frac{21}{42}
$$
Vi skal have 3 sæt, også skal $\frac{21}{42}$ sættes sidst. alle er $+\frac{1}{1000}$ Eksempel
```
6 6 6 14 14 14 21 21 21
OPT
6|14|21|
6|14|21|
6|14|21|
FF
14|
6 |  |  |
6 |14|  |
6 |14|21|21|21
```
