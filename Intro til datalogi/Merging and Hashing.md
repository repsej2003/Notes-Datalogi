hente og gemme data efektivt, datastrukturer

Interfaces, man sætter nogle implentation om bag en væg, så det kan bare bruges uden at vide hvordan

## Datastrukter
hente og gemme data efektivt
interface vs impleantion



## Sekventiel tilgang
#### Interface 
Funktioner til at læse
`readNext(), isEndOfFile(),`
Funktioner til at skrive
`writeNext()`

Håndteringsfunkitioner
`open(), close()`


#### Ting der kan implenteres med sekventiel acces
- linær søgning
- find det mindste elemt
- find sum og antalet elementer, og gennemsnint
- fjerne mindst ellement
- selectionssort
- merge
- merge sort

##### Selection sort 
Find og det mindste elemt i listen, sæt ind i ny liste, fjern første tilfæde af det tal fra oprindelige liste, forsæt til oprindlige list er tom.

Invartion- skal bruge den ene side til at drive fremad, den anden til at vise at den er sortede til sidst



### Mergesort

mergesort bygger på merge

#### Merge 
sætte to soterede lister sammen



# Random access
#### Interface
Tilgang ved ID, ID er unkit
```
findElem(ID)
insertElem(ID,data)
deleteElem(ID)
```

Håndteringsfunkitioner
`open(), close()`