
### intro til stringe
aflabet mængde af tegn f ek$\{a,b,c,\dots\}$
streng (over et alfabet), en endelig sekvenst af tegn
sprog en mængde af strenge, så der strenge der med for sproget, der er også stregne der ikke er med


# DFA (Deterministic Finite Automaton)
determinstic finete automaton


### Balanced parathens
Some correct strings: (), (()), ((())), ()()(), ()(()), (())((()()())). 
Some incorrect strings: (, ), ((), ()), (()(), (())), ))((

#### Det kan ikke lade sig gøre med en DFA, Her er et bevis for dette
DFA her et endeligt antal states (per defntion)
*bruger Modstrids bevis*
Antag den findes en DFA, hvis sprog er er sprog af balanceret paranterser
Lad $k$ være antal states.
Se på strengen $((((\dots(\dots)\dots)$ der er $k$ åbne parantser, og der $k$ lukke paratenser.  Den er balanceret, der vil blive accepteret
der er må en gentalse af en state, for der er $k+1$ valg ind tilmidten, og der kun $k$ states.
Så der for må der være en løkke inden midten, derfor kan man indsætte en mængde som gentager løkken en gang mere, derfor vil er kunne være mere flere åbning end lukket. Derfor modstrid.

