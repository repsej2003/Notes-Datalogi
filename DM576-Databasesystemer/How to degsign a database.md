# Functional dependencies
$x\to y$  x , y is a set of atturbites

X bestemmer  y 
y afhænger af x

$x\to y$ is an assertion about a relation $R$ that whenever two tuples of R agree on all the attributes of X, then they must alsp agree on all attrubtes in the set Y

Det er siger for en sæt af atruribtes siger hvad et andet sæt


A key is a set of atribyutes that detemion all other atrubutes

They are transtive
$A\to B \wedge B\to C\implies A\to C$
## spillting funcitonal dependencies
### Rights side

$X\to A_{1}A_{2}\dots A_{n} \implies X\to A_{1}, X\to A_{2},\dots , X\to A_{n}$

Vi kan ikke spilte venstre siden

### Super KEY
K (set of attrubitues )is a superkey for relation R if K functinonally determines all of R, 
i needs to be minmal

K is a key for R if K is a superkey, but no proper subset of K is a superkey




# Conteption way (ER-diagram)