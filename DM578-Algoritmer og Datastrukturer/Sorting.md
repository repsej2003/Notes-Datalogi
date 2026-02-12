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

# Quciksort

# Heapsort
