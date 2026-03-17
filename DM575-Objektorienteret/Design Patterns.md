Is a
* Name
* Problem
* Solution UML
* COnsequences (trad offs, pros/cons)



https://refactoring.guru/design-patterns

# Sctructiaral Patterns
### Adapter
Movations enable reuse of classes despute incompatilbe interaces

Idea
create clas compatobe that interface that forward  all request

Make to class compaltet

### Facade

### Compostie
Movation: avoid case distinctions for primtive and compound objects

Solutions: create a common abstract superclass enabling a inified acces

 File system
https://refactoring.guru/design-patterns/composite 
### Decorator
Intent " attach adduntel respsnibitles to an object dynamcally dacoratises , decoratoes proce a flex"

# Creatinoal patterns
### builder

### Abstract factory
Movatoin avoud case distance when creating object of certian kind, constent creates objects of  particular kind


class to make instaces of a object, with types. 

To separate code that change and code that stables



### Singleton

# Behhavore patterns

### Observer
Motivaton: avoid coupling of class
(explicit refernece such as impors)

Example: no coupling between graphical
user interfaces and the application data
(cf., model-view-controller)

dea data object (model) has a list of
observers (views) that are notified about
changes«interface»
### Staregy
motivation: introducing a new behavior
to a class causes several changes to existing
code

example: navigation system, delegate
calculations, use different logics on views

idea: collect the different behaviors as
methods in an interface and choose the cor-
rect implementing class at runtime

### Iterator
Motivation

Solutuins

https://refactoring.guru/design-patterns/iterator

### Mediator

### State
motivation:
an object has in internal state which needs
to change at runtime

example: TCPConnections, automata/-
machines (e.g., media player)

idea introduce an interface representing the
desired states, the realizations implement
the behavior specific for a certain state
