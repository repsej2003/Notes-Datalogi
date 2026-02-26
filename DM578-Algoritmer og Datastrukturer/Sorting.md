# Sorting gennerlt
Meget generel problem, det meste er lette når noget er sorrtet 
* Insertions, Selectionsort, Bubblesort, Mergesort, QUick, radixsort, heapsort, countingsort

Sorteringsnøgle, det stykke data der samenliges, der mere data der flyttes, men er ikke relavent for samlignen 

# Insertionsort
*kører tid $O(n^2)$*
```c
Insertionsort(A,n):
	for i = 2 to n:
		key = A[i]
		// A[1:i-1] er sortet
		j = i -1
		while j > 0 and A[j]> key:
			A[j+1] = A[j]
			j = j -1
		A[j+1] = key
```


# Selectionsort
Kan gøres i inplace
kører $O(n^2)$
```c
indlist
udliste
while indlist ikke tom:
	find mindst i indlist  x
	sæt x in i udlist

```

# Mergesort
$O(n\cdot \log n)$
# Quciksort

$\Theta(n\log n)$
# Heapsort
En heap
1. et binært træ
2. med heap orden
	1. max heap orden, forældre er større end begge børn, (min heap orden, hvor forældre er mindre end børn)
3. og heap- facon
	1. et fuldt binært træ, men med undtagelse at det nederste lag er fyldt fra venstre, 
4. udlagt i et array
	1. top -down , venstr-højre gennem hvertlag
		1. hvert barn findes ved $2\cdot i$ og $2\cdot i +1$ hvor i knude index

#### Fuldt binært træ
Et fuldt træ med højde h har 
$1+2+4+\dots+2^h=\sum_{i=0}^{h}2^i=2^{h+1}-1$
knuder

heraf $2^h$ blade