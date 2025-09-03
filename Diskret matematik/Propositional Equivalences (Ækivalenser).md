


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

$$
\begin{align}
\neg (p \wedge q) \ \equiv \ \neg p \vee q \\
\neg (p \vee q)\ \equiv \ \neg p \wedge q

\end{align}
$$

## Contra position
$$p\Rightarrow q \ \equiv \ \neg q \ \Rightarrow \neg p$$
Husk at bytte plads
$$\begin{align}
Regner  &\Rightarrow jorden \ våd \\
Jorden \ ikke \ våd  &\Rightarrow Regner \ ikke

\end{align}$$




## Første bevis

$$\begin{align}
\neg (p \Rightarrow q) & \equiv p \wedge \neg\  q    \\
\neg (\neg p \vee q)&\equiv p \wedge \neg\  q  &table \ 7.1  \\
\neg(\neg p) \wedge \neg q &\equiv p \wedge \neg\  q  &de\ morgans\  \\
p \wedge \neg q &\equiv p \wedge \neg\  q  &double \ negaton  \\
\end{align}$$
Så derfor
$$\neg (p \Rightarrow q) \equiv p \wedge \neg q$$


# all 
![[Pasted image 20250903093633.png]]![[Pasted image 20250903093657.png]]![[Pasted image 20250903093712.png]]