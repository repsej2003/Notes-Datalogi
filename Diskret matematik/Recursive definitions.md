# Fulde binær tree
med en rood
endten 0 børn (blade) eller 2 børn (Indre kynder) per knude

## rekusiv defeniont af fulde binær træ
en knud er et fuldt binær træ( basis skridt)

hvis vi har $T_{1}$ og $T_{2}$ er fuld binært tærer, så kan vi sætte dem sammen en ny rod, så har vi et  nyt fuldt binær tree   (rekustiv skridt)

## rekusiv defenint  i et sæt af fuld binær træ
$$
\begin{align}
S_{1} &=\{ \text{én knude} \} \\
S_{i} &= S_{i-1} \cup  \{ \text{et træ med ny rod med børnene } T_{1} \text{ og } T_{2}\ |\ T_{1}, T_{2} \in S_{i-1} \}
\end{align}
$$


# Strutracl induktion
Proving $P(S_{i})$ for all $i\geq 1$
* Prove $P(S_{1})$
* Prove that $P(S_{i})\implies P(S_{i+1})$, for all $i\geq 1$
