# Defention of agents
1. agents exists in a constraind task envirmet
2. it has sensors to perceive the environemet
3. it has acturars to interact with the enivmet 
4. it has a task to perfom


### Defitnit percept
A percept is the agent's information provided by a sensor
the percept sequence is a squence og percept

# Defention agent function
an agent function is a map from percept sequences to actions
the agent program is an implementatoin of the agent function on physical rchitecture


# How can agent be rational
* Perfrmance measure
* well defin, that the agent can do
* acction depend on percept sequence
* agent may have som pror knowledge of the environment

### Defention of Ratonal agent
An agent is rational if it select an action that is expected to maximse its performance measure for each possible percept sequnce, given the evidence procied by the percept sequence and whatever built-in knowledge the agent has.


Der kan være forskel på forvent performace messauce og det rigtige performace

learning = adapt the behacio of the afent is based on experience
autonomy = the agtens is capable of learn and not completelt depend on the prior knowledge

# PEAS
- Performance measure: evaulte succes
- Environment: the world the agent opreats in
- Actuartors: how it act 
- Sensor: how it percept the
- 

## Envirmeonemt properties
- Observability (full vs partial)
- Deterministic vs Non-deterministic(man ved ikke hvad der kommer til ske)/stochastic(man kan mål sandsynlig hede)
- Episodic(det forige har ikke sammæng til det nye) vs sequential(memory)
- Static cs dynamic (change while the is deliberation)
- Discrete vs continuos 
- Singe agent vs multiagent (if multi agent - cooperative vs competitive)
- known vs unkown (kender du reglerne )


# Agent
An Agent is anything that can be viewed as perceriving its enviroment thourgh senseor and acting upon that environment thorugh  actuators

it is instantiated by an architecture and an agent program

## Reflex Agent
ignore percept history,

vælge action udfra current percept
implemented as a condition-action rule

Excelent in simple envirmetns full obserbalve
![[Pasted image 20260212154057.png]]

```tikz
\begin{document}
  \begin{tikzpicture}
    \draw[very thin,color=gray] (-5,-5) grid (5,5);
	  \draw[line width=2pt, rounded corners=10pt] (-5,-5) rectangle (1,5);
	  \draw[line width=2pt, rounded corners=10pt] (2,-5) rectangle (5,5);
		  \draw[->,line width=2pt] (3,3) -- (0,3) node[left,font=\large] {Sensors};
  \end{tikzpicture}
\end{document}
```

# model based reflex agents
![[Pasted image 20260212154109.png]]
Store informations about the world (memory)
update the internal state based on percepts and the model

Select actions is based on history of perceptc

knowning the currenct does not mean knowing the goal

## Goal-based Agent
![[Pasted image 20260212154151.png]]
model base agent with tje ability to plan ahead and detmine perferance 

## Utility-based agentes
![[Pasted image 20260212154217.png]]
goal based, men holder øje med forbrug af noget

# Learning Agents
![[Pasted image 20260212154236.png]]
can update model of the envirment
- Performance element - select action from the current knowledge
- Learning ele,enmt - improvemnts based on feedback
- critic  - provides feedback on the agtens actions to guide learing
- Problem geneator - suggests exploratry action to discover


Learning = adapt the behavior of the agent based on "experience"

autonomy = agent is acapable of learning and not completely deped on the prior knowledge

