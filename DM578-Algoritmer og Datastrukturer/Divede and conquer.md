# Generel
1. opdel problem i mindre problemer af sammen type
2. Løs delproblem ved rekursion
3. Lav en løsning udfra del løsninger

Basis tilfælde. små problemser løser - ikke rekusiv

T(n) tiden det tager for input n
a hvor mange rekusrive kald, 
b hvor stor del bliver under problem
f(n) lokalt arejde
$$
T(n)=

\begin{cases} a\cdot T( \frac{n}{b})+\Theta(f(n))  & n>1 \\ 
\Theta(1) & n\leq 1 \end{cases} 
$$