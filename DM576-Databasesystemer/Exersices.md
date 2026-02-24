# 2.2.1
a)
 AcctNo, type, balance

FirstName, latName, idNo, account

b)
accounts: $(12345, savings, 12000)$
Customers: (Robbie, banks, 901-222)

c)

d)

 Accounts(AcctNo, type, balance) and
Customers(FirstName, latName, idNo, account)

e)
 Accounts(AcctNo, type, balance) 
Customers(FirstName, latName, idNo, account)

f) integer, char(20), real
varchar, varchar, integer, integer

g)
ER - diagram
change the order of atributes
# 2.2.2
eksamens nummer
fly navne
serienumre


# 2.2.3
$n!\cdot m!$

# 2.3.1
```
CREATE TABLE Product(
maker CHAR(1),
model int,
type varchar(20)
);

ALTER TABLE Printer  
DROP COLUMN color;

ALTER TABLE PC  
ADD COLUMN od BOOLEAN DEFUALT None;
```

# 2.3.2
```
CREATE TABLE Classes(
class CHAR(2),
type VARCHAR(20),
country VARCHAR(20),
numGuns integer,
bore integer,
displacement integer
);

```

# 2.4.1
$$
\begin{align}
a) &\ \pi_{mod el}(\sigma_{sped\geq 3.00}(PC)) \\
b) &\ \pi_{maker}(\sigma_{hd\geq 100GB}(Product \bowtie laptop)) \\
c) &\ \pi_{mod el, price}(\sigma_{maker=B}(Product)\bowtie(\pi_{mode l, price}(PC)\cup\pi_{mode l, price}(Laptop)\cup\pi_{mode l, price}(printer))) \\
d) &\ \pi_{mod el}(\sigma_{col or = True \cap type=laser}(Printer))\\
e) &\ \pi_{maker}(\sigma_{type=laptop}(prod oct))-\pi_{maker}(\sigma_{type=PC}(product)) \\
f) &\ \pi_{hd}(\sigma_{pc_{1}.hd=pc_{2}.hd\cap pc_{1}.mod el != pc_{2}.mod el}(PC \times PC)) \\
&\ \pi_{hd}(PC\bowtie_{pc_{1}.hd=pc_{2}.hd\cap pc_{1}.mod el != pc_{2}.mod el} PC) \\
g) &\ \pi_{pc_{1}.mod el, pc_{2}.mod el}(PC\bowtie_{PC_{1}.mod el>PC_{2}.mod el \cap PC_{1}.sped =PC_{2}.sped \cap PC_{1}.ram =PC_{2}.ram }PC) \\
h) &\ \pi_{maker}(Prod uct\bowtie_{mod el=mode l_{1}}((\pi_{mod el,sped }(PC)\cup \pi_{mod el, sped}(Laptop))\bowtie_{mod el_{1} > mod el_{2}\cap sped_{1}>2.8 \cap sped_{2}>2.8}(\pi_{mod el,sped }(PC)\cup \pi_{mod el, sped}(Laptop))) \\
i) &\  \pi_{maker}(prod uct \bowtie_{mod el=mode l_{1}}(\pi_{mode l}(Z) - \pi_{mod el_{1}\to mo d el}(Z \bowtie_{sped_{1}<sped_{2}} Z)) )\\
&\ Z = \pi_{mod el, sped}(PC) \cup \pi_{mod el, sped}(Laptop)\\

\end{align}
$$
$$
\begin{align}
j) &\ \pi_{maker}(B_{1}\bowtie_{mode l_{1}\neq mod el_{2}\neq mod el_{3}\cap maker_{1}=maker_{2}\cap sped_{1}\neq sped_{2}\neq sped_{3}}B_{2}(\bowtie_{mode l_{3}\neq mod el_{2}\cap maker_{3}=maker_{2}\cap sped_{3}\neq sped_{2}}B_{3}=)\\
&\ B = \pi_{maker,sped,mod el}(pro d ucts \bowtie PC) \\
k) &\ 
\end{align}
$$
# 2.4.2


# 5.1.1
laptops
$\{ 2.00, 1.73,1.80,2.16,1.83,1.60 \} 1.8533$
$\{ 2.00,1.73,1.80,2.00,2.16,2.00,1.83,1.60,1.60,2.00 \} 1.70$

# 5.1.3
a)
$\{ 15,16,14,16,15,15,14,18 \}$
$\{ 15,16,14,18 \}$
b)
$$
\pi_{bore}(Classes\bowtie Ships)
$$

# 5.1.4
for alt bliver lagt sammen, så det gælder stadig for modsat


# 6.1.1

komma

# 6.1.2
```SQL
a)
SELECT address
FROM Studio
WHERE name = 'MGM';

b)
SELECT birthdate
FROM MovieStar
WHERE name = 'Sandra Bullock'

c)
SELECT starname
FROM StarsIn
WHERE   LoWer(movietitle)  LIKE  '%love%' OR movieYear = 1980

d)
SELECT *
FROM MovieExec
WHERE netWorth >= 10000000

e)
SELECT *
FROM MovieStar
WHERE gender = 'm' or lower(address) LIKE '%malibu%' 

```

# 6.1.3

```sql
a)
SELECT model, speed, hd
from PC
WHERE price < 1000

b)
SELECT model, speed as Ghz, hd GB
from PC
WHERE price < 1000

c)
SELECT Maker
FROM Product
WHERE type = 'printer'

d)
SELECT model, ram, screen
FROM Laptop
WHERE price >1500

e)
SELECT *
FROM printer
WHERE color = true

f)
SELECT model, hd
FROM PC
WHERE speed = 3.2 AND price <2000
```
# 6.1.5
a)
a = 10 b = null, a = null b = 20, a = 10 b=Z, a=Z,b=20

b)
a = 10 b =20

c)
a<10  a>=10, 

d)
ingen er null, og a=b

e)
ingen er null, og a<=b



# 6.2.1
```sql
a)
SELECT *
FROM StarsIn JOIN MovieStar ON starName = name
WHERE gender = 'm' AND movietitle = 'Titanic'

b)
SELECT *
FROM Movies JOIN StarsIn ON title = movietitle
WHERE studioName = 'MGM' and year = 1995

c)
SELECT *
FROM Studio JOIN MovieExec ON presC = cert
WHERE Studio.name = 'MGM' 

d)
SELECT *
FROM Movies
WHERE length > (SELECT length FROM Movies WHERE title = 'Gone with the wind')

e)
SELECT *
FROM MovieExec
WHERE networth > (SELECT networth FROM MovieExec WHERE name = 'Merv Griffin')

```

# 6.2.3
```sql
a)
SELECT *
FROM Ships NATURAL JOIN Classes
WHERE 35000 < displacement

b)
SELECT name, displacement, numGuns
FROM Classes NATURAL JOIN (Outcomes JOIN Ships ON Ship = name)
WHERE battle = 'Guadalcanal'

c)
SELECT name
FROM Ships

UNION

SELECT ship as name
from outcomes

d)
SELECT c1.country, COUNT(*) AS duplicate_count
FROM Classes c1, Classes c2
WHERE c1.type <> c2.type and c1.country = c2.country
GROUP BY c1.country
HAVING COUNT(*) > 1;

eller

SELECT Country
from Classes
where type='bb'
INTERSECT

SELECT Country
from Classes
where type='bc'

e)
SELECT *
FROM (SELECT  Outcomes.ship as ship1, date as date1
		FROM Battles JOIN Outcomes ON battle = name
		WHERE Result = 'damaged'),
	(SELECT  Outcomes.ship as ship2, date as date2
		FROM Battles JOIN Outcomes ON battle = name)
WHERE ship1 = ship2 and date2 > date1

f)

```


# 6.3.1 USe Exists, in, all and any
```sql
a)
SELECT DISTINCT maker
from Product
WHERE model IN (
	SELECT model
	from PC
	WHERE speed >= 3.0
	) AND type = 'pc'

eller

SELECT DISTINCT maker
from product p
WHERE type = 'pc' and
EXISTS (
SELECT *
From PC
where model = p.model
and speed >= 3.0);

b)
SELECT *
from printer p 
where price >= ALL (SELECT price from printer where model <> p.model);

eller
SELECT *
from printer p
where NOT  EXISTS (SELECT * FROM printer WHERE price > p.price)

c)
SELECT * 
FROM laptop
WHERE speed < ALL (SELECT speed from pc)

or

???
SELECT *
FROM laptop lt
where speed ???

d)
SELECT model
from (SELECT model, price from PC 
UNION 
SELECT model, price from laptop
UNION 
SELECT model, price from printer
)
order by price desc
limit 1;

eller 
????


e)

SELECT *
FROM product p join printer pr on p.model = pr.model
where pr.price <= all (SELECT price from printer where color = true)

ELLER

SELECT *
FROM product p join printer pr on p.model = pr.model
where pr.price = (SELECT MIN(price) from printer where color = true)





```
# 6.3.2
```sql
a)
SELECT DISTINCT country
FROM Classes
where numGuns = (SELECT max(numGuns) FROM Classes)

b)
SELECT *
FROM classes c
WHERE 'sunk' = any (SELECT result FROM Outcomes JOIN Ships ON ship = name where c.class == class)

eller

SELECT class
FROM classes c
WHERE class in (SELECT class FROM Outcomes JOIN Ships ON ship = name where result = 'sunk' )


c)
SELECT name
from ships S
where 16 = (SELECT bore FROM classes where class = S.name)

d)
SELECT *
FROM outcomes O
WHERE 'Kongo' = (SELECT class FROM ships where O.ship = name)


```


# 5.2.1


a) $\{ (1,0,1),(5,4,9),(0,0,1), (6,4,16),(7,9,16)\}$
c) $\{ (1,0),(3,2),(1,0),(4,2),(4,3) \}$
e) $\{ (0,1),(2,3),(2,4),(3,4) \}$
g) $\{ (0,2),(2,7),(3,4) \}$
k) $\{ (0,1,n ull),(2,3,4),(2,3,4),(0,1,n ull),(2,4,n ull),(3,4,null) \}$

# 6.4.1

```sql
a)
SELECT DISTINCT model
FROM PC
WHERE speed >= 3.00

c)
SELECT model
FROM Product NATURAL JOIN PC
WHERE maker = 'B'
UNION
SELECT model
FROM Product NATURAL JOIN Laptop
WHERE maker = 'B'
UNION
SELECT model
FROM Product NATURAL JOIN Printer
WHERE maker = 'B'

h)
SELECT DISTINCT maker
FROM (SELECT speed, model, maker FROM Product NATURAL JOIN PC
	UNION
	SELECT speed, model, maker FROM Product NATURAL JOIN laptop) out
WHERE speed >= 2.8 AND EXISTS (SELECT * 
	FROM (SELECT speed, model, maker FROM Product NATURAL JOIN PC
			UNION
		SELECT speed, model, maker FROM Product NATURAL JOIN laptop)
	where out.model <> model and speed >= 2.8 and out.maker = maker);
	
```
# 6.4.2
```sql
g)

SELECT DISTINCT class
from ships out
WHERE NOT EXISTS (SELECT * FROM ships WHERE out.name <> name AND out.class = class)

```

# 6.4.6
```sql
a)
SELECT AVG(speed)
FROM pc

b)
SELECT AVG(speed)
FROM laptop
WHERE price <1000

d)
SELECT avg(price)
FROM ((SELECT price, product.model FROM Product Join  PC ON pc.model = Product.model and maker = 'D') union
	 (SELECT price, product.model FROM Product Join  Laptop ON laptop.model = Product.model and maker = 'D'))
	 
e)
SELECT SPeed, avg(price)
FROm PC
GROUP BY speed

f)
SELECT maker, avg(screen)
FROM laptop NATURAL JOIN product
GROUP BY maker

g)
SELECT maker
FROM product NATURAL JOIN pc
GROUP BY maker
HAVING count(*) >=3

h)
SELECT maker
FROM product NATURAL JOIN pc
WHERE price >= (SELECT max(price) from pc)

SELECT maker, max(price)
from product NATURAL JOIN pc
GROuP by maker 


i)
SELECT speed, avg(price)
FRom PC
WHERE speed > 2.00
GROUP by speed

```

# 6.4.7
```sql
a)
SELECT count(class)
from classes

d)
SELECT class, min(launched) as fist_launch
FROM ships
GROUP BY class

e)
SELECT class, count(result)
FROM ships left join outcomes ON ships.name= outcomes.ship and result = 'sunk'
GROUP BY class
```

# 6.5.1
```sql
a)
INSERT INTO PC
values (1100, 3.2, 1024, 180, 2499);

INSERT INTO Product
values ('C', 1100, 'PC');

b)

c)
DELETE FROM PC WHERE hd < 100;

d)
DELETE FROM laptop WHERE 


```