
# Def linear equation
$n$ variables $x_{1},x_{2}\dots x_{n}$ is an equautin  writen on this form
$$
a_{1}x_{1}+a_{2}x_{2}+\dots + a_{n}x_{n}=b
$$
where $a_{1},\dots,a_{n},b$ are constens called coefficiets of the linear eqation


geomtriks Flat  struktur 


# Def system of linear equations
a fininte set of linar eq, with the samme variables $x_{1},\dots x_{n}$
It does not have the same number of variables as equations

# Solutions
gives a value to each varible such that all eqaions are satisfided simultasly

it can have 0, 1 or infentet

consinstn if it has  at least 1 solution otherwise inconsisten


# Transofrom et system a linar ligninger
1. Gange en scalar på en ligning ikke nul
2. Ændre rækkefølgen
3. Ligge et scalar product af en af de andre ligning til en ligning




# augmented matrix
en matrix der er adskilt i to 
![[Pasted image 20260903122425.png]]


matrix 
$R_{j}$ er række j

Man kan gøre det samme på matricerne 

Kaldes elementary row opatins hvis de laves på matrix

two augment matrices are row equcialnt, hvis de kan laves om med elementart row opration


# Row echelon form (REF)
A augmented matrix hvis
1. alle rækker der kun er med nuller så er der alle efterfølge rækker også under kun nuller
2. i alle ikke nul rækker, så er den første ikke nul entry (leading entry) skal være til venstre for leading entries below it.

Med andre  ord skal der kun laves dignal som går mod højre hver gang den går en række ned. alt neden for denne digonal skal være nul

Trappe strutkuter, ingen leading entries oven på hinanden

# Reduces REF
Skal over holde REF og 
3. Leading entry skal være $1$ og det leading entry er det enste entry i den kolone som ikke er 0


## row-reduction -> is matrix into REF or reduced REF

It can be done by
# Gaussian elimination matrix til REF
1. find den første kolone som er ikke er nul, og placer en leading into top
2. brug øversten række til at sørge for der stå nul under leading entry fra step et
3. Gentag så længe det kan lade sig gør, lad være med et at kigge på den øvvstre række og alt til venstre for det der lige er blev sat nul. gentang step 1 and 2 på det udvalgte

For at lave det til reduced skal det  trin
4. Start fra bunden til højre, gang til så leading entry bliver en . brug addition tl at sørge for der nul over den. Gentag på næste leading entries


# Unqueness
All matrix can be row-reduced til en og kun en matix in RREF



## RREF til løsninger


Hvis der er en række i en RREF findes der ikke en løsning hvis og kun hvis
$$
\begin{bmatrix}
0 & 0 & \dots & 0 &| &b 
\end{bmatrix}

\text{for some } b \neq 0
$$
Det skal have mindst en løsning - Hvis der færre ikke er leading entry i RREF end der er varaible så der uendlige mange løsninger 
