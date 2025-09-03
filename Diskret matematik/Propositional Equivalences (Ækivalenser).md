


## Tautologies and contradictions and contingencies

Sammensat udtryk, compound proposition
* tautology (tautologi)
	- sammensat udsagn der altid er sandt, 
	- $p \wedge q \Leftrightarrow \neg q$
- contradiction (modstrid)
	- sammensat udsagn der altid er falsk, 
	- $(p \oplus q) \wedge (p \Leftrightarrow q)$
- contingency (kontingens)
	- sammensat udsagn, der nogen gange er sandt/falsk
	- $\neg p \vee \neg q$

Eksempel 
$p \wedge q \Leftrightarrow \neg q$

| $p$ | $q$ | $p\wedge q$ | $\neg q$ | $p \wedge q \Leftrightarrow \neg q$ |
| --- | --- | ----------- | -------- | ----------------------------------- |
| T   | T   | T           | F        | F                                   |
| T   | F   | F           | T        | F                                   |
| F   | T   | F           | F        | T                                   |
| F   | F   | F           | T        | F                                   |
der er en kontingens


# Equivalent 
we call two propositions $s$, $t$ logically equivalent written $\equiv$ if $s \Leftrightarrow t$ is a tautology


Eksempel
$(p\wedge q \Leftrightarrow q) \equiv  \neg (q\Rightarrow p)$

| $p$ | $q$ | $q\Rightarrow p$ | $\neg (q\Rightarrow p)$ |
| --- | --- | ---------------- | ----------------------- |
| T   | T   | T                | F                       |
| T   | F   | T                | F                       |
| F   | T   | F                | T                       |
| F   | F   | T                | F                       |

Se tabel oven for, de har samme sandheds værdi så derfor de to udtryk ækvivalente 


## Distributive Laws

$$
\begin{align}
p\ \vee(q \wedge r) \ \equiv \ (p\vee q) \wedge (p \vee r)\\
p\ \wedge(q \vee r) \ \equiv \ (p\wedge q) \vee (p \wedge r)
\end{align}
$$
## Morgans law 

$\equiv$
