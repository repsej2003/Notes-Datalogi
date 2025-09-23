
## finde et element i en liste

linær søgning, 
	Navin til gang tjekker alle ellementer i rækkefølge
		$O(n)$
binær søgning
		hurtig kørertid, men skal have en sorteret liste
			$O(\log n)$


## Karakterisk opration
samlet tid er proption, samlettid brugt på karakterisk opration


eks.: $2n+10\in O(n)$


Karakterisk opration - den opration der definere kører tiden når den kører

Defention
$$
\begin{align}
T(n)\in O(f(n)) \ \Leftrightarrow \\  \\

\exists k,n_{0}:\forall n\geq n_{0}:T(n)\leq k\cdot f(n)
\end{align}
$$
$T(n)$ er tiden af en funktion tager ved n input, eller n er antal af karektiske opratoiner