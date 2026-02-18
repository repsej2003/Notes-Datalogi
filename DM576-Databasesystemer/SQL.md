# Simpelts form 

Selecet $A_{1}, A_{2}$
from R
where C

R er en realtion instance
C er en codetions
$A_{1},A_{2}$ er atribute vi har (* no projection, så man for alle koloner)
det samme som i algreba
$\pi_{atr}(\sigma_{c}(R))$

Byg i denne rækkefælge, from, where så select, . 
Det er også sådan det kørers

``` sql
SELECT Model, speed, hd
FROM PC
WHERE price < 1000;

SELECT model, hd
FROM PC
WHERE speed = 3.2 and price < 2000;
```


## Patterns
`LIKE`
% is any string (0,1 or more carterhs )
_ extaly on careakteror

```sql
Select * 
from Ships
where name like '%Royal%'
```


# Null
3 logic steps
* true $1$
* Unkown $\frac{1}{2}$
* false $0$

Alt hvad der bliver sammenlig med Null, bliver unkown

And is like minumin, 
Or is like maximum
$not(x)$ is like $1-x$


# Multi relations
``` sql
Crosproduct

Select pc.model, laptop.model
From pc ,laptop

eller

Select pc.model, laptop.model
From pc cross join laptop

Eller

Select  maker, price
From pc, product
where Product.model = pc.model

### Joins

R CROSS JOIN S -- cartesike product

R NATURAL join S

R JOIN S ON Condition


R [NATURAL] [FULL, RIGHT, LEFT] OUTER JOIN S [ON]

Eksample:

SELECT maker, speed
FROM Product NATURAL JOIN laptop
WHERE hd >= 30;
```



## Set 
```sql
R UNION S

R INTERSECT S

R EXCEPT S


--Example
(SELECT maker
FROM product
WHERE type = 'laptop')
EXCEPT 
(SELECT maker 
from product
WHERE type = 'PC')


(SELECT model, price
FROM product NATURAL JOIN PC
WHERE maker = 'B')

UNION

(SELECT model, price
FROM product NATURAL JOIN Laptop
WHERE maker = 'B')

UNION

(SELECT model, price
FROM product NATURAL JOIN printer
WHERE maker = 'B')

```
This resluts in a set, not a bag

To force it to do it like a bage 
`.. UNION ALL ..`

# Distinct
`SELECT DISTINCT ...`

# Ordering
```sql
ORDER BY L1, l2 ASC --or DESC
```

# Limit
```sql
Limit -- How many rows to return, from top, can be offset
```

# AGGREGATIONS
laver et array og kallder en en kúntion på det array


# Grouping
```sql
SELECT -- alt i select skal endten være i agg funktion eller i group by list

GROUP BY l -- list
```

# HAVING
```sql

GROUP BY 
HAVING (condition)
```
