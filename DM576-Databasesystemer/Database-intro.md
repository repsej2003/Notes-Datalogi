# Kursus information
eksamens 
24timer hjemme examen
Projekt fåes ca til påske (aflevers i 5 del, hver 10 dage inden den 31.) ca (31. maj, 21. maj, 11. maj, 1. maj, april 21)

# Database
colloction of Information over time.  (peristent)


# DBMS (DatabasemanagentSystem)
* Create DB
* Enable users to query/modify the db (chance)
* Lots of data
* Be durable
* Support concurrency
* Be consistent (All constrat of the must be meet at alltime)


Why not just file instead:
Slow search with lots of data, you have to search though the whole
I file can only be acceses by one at the time 

# Transactoins
Blocks of changes that needs to be done together.

for eksample moving money, (cause it is not possible to one of the chances of the trancsinc )
Fail over

propreties of transacition
## ACID
- A - atomicity - all of nothing of a transactopms
- C  - consistency - constrains hold before and after the each transaction
- I - isolation - illusion of sequential execution of each transaction.
- D - durability - effect of a completede transaction may not get lost

# Realtion is a table
![[Pasted image 20260202133729.png]]
bags are set that can cotain doublecates

# Schema
No data, just the structure


# Keys
Prima key, allways unicq , can be more than one attriubete,  to ensure they are 
candidante keys, are possible primary keys, that are not nullable
Uniqe, allows null, but the key is stil uniqe so only one null


# 