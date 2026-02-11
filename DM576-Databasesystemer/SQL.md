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

