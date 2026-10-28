This set contains 4 questions. All questions ask for an evaluation of five statements with (yes/no) or (true/false) answers. A true answer adds $+1$ points and a false answer adds $-1$ points to your score. Hence, skipping to evaluate a statement is very likely to be more advantageous for you than making a random guess. Your score is calculated as (your point sum)$/(4 \times 5)\times 100$. The questions follow the exam format; work through them at the exercise sessions and commit to your answers before consulting the answer key.

**Notation.** The conventions are those of the lecture notes. $S=\{(x_i,y_i)\}_{i=1}^m$ with $m\ge1$; $d$ the feature dimension; $z=(x,1)$ the augmented input and $Z\in\mathbb{R}^{m\times(d+1)}$ the matrix holding $z_i^\top$ in row $i$; $y=(y_1,\ldots,y_m)^\top$. Linear hypotheses are $h_w(x)=w^\top z$ with $w\in\mathbb{R}^{d+1}$; $\widehat R_S(w):=\frac1m\sum_{i\in[m]}(w^\top z_i-y_i)^2=\frac1m\|Zw-y\|_2^2$; a calligraphic $\mathcal{L}$ denotes a training objective (an empirical risk plus a regularizer). $\|\cdot\|_p$ is the $L_p$ norm, $I$ the identity, $\top$ the transpose, $\mathbb{1}(\cdot)$ the indicator. $f$ is the labeling function, noise realizations $\varepsilon_i:=y_i-f(x_i)$ are arbitrary reals, and the *test set* of a question is disjoint from its training set.

**Every statement below is a mathematical assertion about the setup stated in its question**, decidable by proof or by counterexample from the results of the course. No numerical evaluation is required anywhere. **No assumptions may be made additional to those specified in the question text.**

---

## Question 1

A **metric space** is a pair $(\mathcal{X},\mathrm{dist})$ of a non-empty set $\mathcal{X}$ and a function $\mathrm{dist}:\mathcal{X}\times\mathcal{X}\to\mathbb{R}$ satisfying, for all $a,b,c\in\mathcal{X}$:

1. **(M1)** $\mathrm{dist}(a,b)=0\iff a=b$,
2. **(M2)** $\mathrm{dist}(a,b)=\mathrm{dist}(b,a)$,
3. **(M3)** $\mathrm{dist}(a,c)\le\mathrm{dist}(a,b)+\mathrm{dist}(b,c)$.

Evaluate the following statements.

**Answer 1.1:** Non-negativity, $\mathrm{dist}(a,b)\ge0$ for all $a,b$, is not an independent axiom: it follows from M1–M3 by applying M3 with $c:=a$.

TRUE


**Answer 1.2:** The function $\mathrm{dist}(a,b):=(a-b)^2$ on $\mathcal{X}=\mathbb{R}$ is a metric: it satisfies all three axioms above.

False
A = 1
B = 0
C = -1


**Answer 1.3:** On any non-empty set $\mathcal{X}$, the discrete metric $\mathrm{dist}(a,b):=\mathbb{1}(a\ne b)$ satisfies all three axioms.

TRUE

**Answer 1.4:** If a function $\mathrm{dist}:\mathcal{X}\times\mathcal{X}\to\mathbb{R}$ satisfies M1, M2, and non-negativity $\mathrm{dist}(a,b)\ge0$, then it also satisfies M3 — the triangle inequality is a consequence of the other properties.

not for eksampel
$$
\begin{align}
dist(a,c)=2 \\
dist(a,b)=dist(b,c)=0.5
\end{align}
$$
THere for it fails

$$
\begin{align}
x= \{ a,b,c \} \\
dist(a,a)=dist(b,b)=dist(c,c)=0 \\
dist(a,b)=dist(b,a)=0.5 \\
dist(a,c)=dist(c,a)=2 \\
dist(b,c)=dist(c,b)=0.5
\end{align}
$$

**Answer 1.5:** For $0<p<1$ and $d\ge2$, the function $\mathrm{dist}_p(a,b):=\big(\sum_{j=1}^d|a_j-b_j|^p\big)^{1/p}$ on $\mathcal{X}=\mathbb{R}^d$ satisfies M1, M2, and non-negativity, but violates M3.

FALSE

Dont know why

---

## Question 2

Let $\mathcal{X}=\mathbb{R}$, $\mathcal{Y}=\mathbb{R}$, and let the hypothesis class $\mathcal{H}$ consist of all affine hypotheses $h_w(x)=w_0+w_1x$. The least-squares (ERM) solutions are the members of $W:=\arg\min_{w}\widehat R_S(w)$; the notes derive them by expanding the square, differentiating $\widehat R_S$, and setting the gradient to zero. Evaluate the following statements. They quantify over all training sets $S$ and, where mentioned, over all labeling functions $f$ and noise realizations.

**Answer 2.1:** The step of the derivation that sets the gradient to zero loses nothing: $\widehat R_S$ is a convex function of $w$, and for a differentiable convex function every stationary point is a global minimizer — the least-squares problem has no suboptimal stationary points.

TRUE, IDK forstår ikke opgaven


**Answer 2.2:** Setting the gradient to zero is equally conclusive whatever loss the empirical risk is built from: for every differentiable loss $\ell:\mathbb{R}\times\mathbb{R}\to\mathbb{R}^+$, every stationary point of $w\mapsto\frac1m\sum_i\ell(y_i,w_0+w_1x_i)$ is a global minimizer.

False

loss can be have $$
l(y,y')=e^{-(y-y')}
$$

**Answer 2.3:** If the labeling function is itself affine, $f(x)=w_0^*+w_1^*x$, and the labels are noiseless ($\varepsilon_i=0$ for all $i$), then $\min_{w}\widehat R_S(w)=0$, so every member of $W$ has zero training error, and $f$ itself is a member of $W$.

TRUE

**Answer 2.4:** If the labeling function is itself affine, $f(x)=w_0^*+w_1^*x$, and the labels are noiseless ($\varepsilon_i=0$ for all $i$), then every member of $W$ coincides with $f$ on all of $\mathcal{X}$ — not only on the training inputs — whatever the training inputs are.

TRUE, vi har fundet den rigtigte funktion 

FALSe

**Answer 2.5:** If $h_{w_S}$ is a least-squares solution, then no hypothesis in $\mathcal{H}$ achieves a smaller loss than $h_{w_S}$ at any single training point.

False, fordi der kan hver en anden i H der har null loss på den præcise point

---

## Question 3

Consider the ridge objective and its minimizer, for $\lambda>0$,

$$\mathcal{L}_S(w):=\widehat R_S(w)+\lambda\|w\|_2^2,\qquad w_\lambda:=\arg\min_w\mathcal{L}_S(w),$$

over the class $\mathcal{H}$ of all affine hypotheses $h_w(x)=w_0+w_1x$ with $w=(w_0,w_1)\in\mathbb{R}^2$. It is given that $w_\lambda=(Z^\top Z+m\lambda I)^{-1}Z^\top y$ — the $m\lambda I$ term makes the formula applicable for every data set, unlike the unregularized $(Z^\top Z)^{-1}Z^\top y$, which presupposes that the training inputs determine the weights. Chapter 3 derives the objective from the constrained problem "minimize $\widehat R_S(w)$ subject to $\|w\|_2\le\eta$" and states that for every budget $\eta$ there is a $\lambda\ge0$ whose penalized problem has the same solution. Evaluate the following statements. They quantify over all admissible data sets (training sets, test sets, noise realizations) and all $\lambda>0$ unless stated.

**Answer 3.1:** Ridge is ERM under a capacity constraint: the constrained problem searches only the subclass $\{h_w:\|w\|_2\le\eta\}$, so the penalized problem is an instance of the structural risk minimization scheme — fitting the data and controlling model complexity in one objective.

TRUE

**Answer 3.2:** The training error of the ridge solution is non-decreasing in $\lambda$: increasing the regularization coefficient can only worsen the fit on the training set.

TRUE

**Answer 3.3:** Test error is monotone in the regularization coefficient: increasing $\lambda$ can only worsen the test error, since it moves the predictor away from the training-optimal one.

FALSE, 
hvis du har overfittet, pga for en lille lammda, så vil det gøre det bedre gør den større

**Answer 3.4:** Recording a feature in different units (multiplying it by a nonzero constant) changes neither the functions representable by $\mathcal{H}$ nor the minimum training error of unregularized least squares; it can, however, change the predictions that the ridge solution makes on the training set.



**Answer 3.5:** For every data set and every $\lambda>0$, all coordinates of $w_\lambda$ are non-zero: ridge pulls weights towards zero but never sets one exactly to zero.

---

## Question 4

Let $\mathcal{H}$ be the class of all affine hypotheses $h_w(x)=w_0+w_1x$ and $W:=\arg\min_w\widehat R_S(w)$ the set of least-squares solutions; it is given that $W$ is non-empty for every data set (a nonnegative quadratic function bounded below attains its minimum). Evaluate the following statements. They quantify over all admissible data sets.

**Answer 4.1:** All members of $W$ make the same predictions on the training inputs: two least-squares solutions cannot disagree at any $x_i$.

**Answer 4.2:** If a feature takes the value $0$ at every training point — say a sensor failed during data collection and recorded $0$ throughout — then all members of $W$ assign the same weight to that feature, namely $0$: an unused feature is switched off.

**Answer 4.3:** With such an always-zero feature, all members of $W$ make identical predictions on the training set, but they can make different predictions on a fresh input at which the feature is non-zero.

**Answer 4.4:** Since the ridge objective with any $\lambda>0$ has a unique minimizer, ridge merely breaks ties among the least-squares solutions: its output $w_\lambda$ is itself always a least-squares solution.

**Answer 4.5:** Collecting more data can eliminate non-uniqueness — there exist $S\subset S'$ (the same points plus new ones) such that $W(S)$ is not a singleton but $W(S')$ is — and once the solution is unique, it stays unique under any further data collection.

---


*(Solutions in `answer2.md`.)*