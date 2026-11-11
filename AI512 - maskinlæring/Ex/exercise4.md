This set contains 4 questions. All questions ask for an evaluation of five statements with (yes/no) or (true/false) answers. A true answer adds $+1$ points and a false answer adds $-1$ points to your score. Hence, skipping to evaluate a statement is very likely to be more advantageous for you than making a random guess. Your score is calculated as (your point sum)$/(4 \times 5)\times 100$. The questions follow the exam format; work through them at the exercise sessions and commit to your answers before consulting the answer key.

**Notation.** The conventions are those of the lecture notes. $P(\cdot)$ denotes a probability — of an event, or of a discrete random variable taking a value; lowercase $p(\cdot)$ is reserved for the density of a continuous random variable, which is not itself a probability. $\mathbb{E}[\cdot]$, $\mathrm{Var}[\cdot]$, $\mathrm{Cov}[\cdot,\cdot]$ carry subscripts naming the variable averaged over; $\mathbb{1}(\cdot)$ is the indicator and $\log$ the natural logarithm. $(\Omega,\mathcal{F},P)$ is a probability space; random variables are measurable maps $X:\Omega\to\Lambda$ with law $P_X$; i.i.d. means independent and identically distributed; $\widehat\mu_m:=\frac1m\sum_{i=1}^mX_i$ is the sample mean of an i.i.d. sample; $\widehat\sigma_m^2:=\frac1m\sum_{i=1}^m(X_i-\widehat\mu_m)^2$ is the sample variance; $[m]:=\{1,\ldots,m\}$.

**Every statement below is a mathematical assertion about the setup stated in its question**, decidable by proof or by counterexample from the results of the course. No numerical evaluation is required anywhere. **No assumptions may be made additional to those specified in the question text.**

---

## Question 1

Let $(\Omega,\mathcal{F},P)$ be a probability space, let $A,B\subseteq\Omega$ be events, and let $X,Y$ be random variables on it. Recall the axioms: $P(\Omega)=1$, $P(A)\ge0$, and $\sigma$-additivity over pairwise-disjoint countable unions. Evaluate the following statements. They quantify over all probability spaces, events, and random variables unless stated.

**Answer 1.1:** For all events $A,B$: $\ P(A\cup B)=P(A)+P(B)-P(A\cap B)$; in particular $P(A\cup B)\le P(A)+P(B)$, with no conditions on $A$ and $B$.

True

**Answer 1.2:** If $P(A\mid B)=P(A)$ for events with $P(A),P(B)>0$, then also $P(B\mid A)=P(B)$ — independence is symmetric.

TRue

**Answer 1.3:** If events $A$ and $B$ are independent, then $A$ and the complement $B^c$ are independent as well.

False

**Answer 1.4:** If $X$ and $Y$ are discrete independent random variables, then for any sets $S,T$ of possible values, the events $\{X\in S\}$ and $\{Y\in T\}$ are independent: $P(X\in S,\,Y\in T)=P(X\in S)\,P(Y\in T)$.

True


**Answer 1.5:** The density $p_X$ of a continuous random variable satisfies $p_X(x)\le1$ for every $x$ — a density, being "like a probability", cannot exceed one.

False

---

## Question 2

Let $X$ be a random variable with finite mean $\mu=\mathbb{E}[X]$, let $X_1,\ldots,X_m$ be i.i.d. as $X$, and let $\widehat\mu_m:=\frac1m\sum_{i=1}^mX_i$. Recall that expectation is a Lebesgue integral against $P$ — the two familiar formulas ($\sum_xx\,P(X{=}x)$ for discrete, $\int x\,p_X(x)\,dx$ for continuous) are special cases of one definition — and that $\mathrm{Var}[X]=\mathbb{E}[X^2]-\mathbb{E}[X]^2$ and $\mathrm{Cov}[X,Y]=\mathbb{E}[XY]-\mathbb{E}[X]\mathbb{E}[Y]$. Evaluate the following statements. They quantify over all random variables and samples unless stated.

**Answer 2.1:** Linearity $\mathbb{E}[X+Y]=\mathbb{E}[X]+\mathbb{E}[Y]$ holds for **all** jointly distributed $X,Y$ — no independence required. For instance, for a fair die $X$ and the perfectly dependent $Y:=7-X$, both identities $\mathbb{E}[X+Y]=7$ and $\mathbb{E}[X]=\mathbb{E}[Y]=3.5$ hold.

True

**Answer 2.2:** The variance identity $\mathrm{Var}[X+Y]=\mathrm{Var}[X]+\mathrm{Var}[Y]$ holds for all jointly distributed $X,Y$ as well.

Does not hold for dependet.

Lotes of algrebra

False 

Noah har notes

**Answer 2.3:** The estimator $\widehat\mu_m$ is unbiased for $\mu$ for every distribution of $X$ with a finite mean; the computation uses only linearity, not independence.

True

**Answer 2.4:** The sample variance $\widehat\sigma_m^2:=\frac1m\sum_{i=1}^m(X_i-\widehat\mu_m)^2$ is unbiased for $\sigma^2:=\mathrm{Var}[X]$, and so is the corrected version $\frac{1}{m-1}\sum_{i=1}^m(X_i-\widehat\mu_m)^2$.

False

**Answer 2.5:** Two random variables with $\mathrm{Cov}[X,Y]=0$ are independent.

False

---

## Question 3

Let $X_1,\ldots,X_m$ be independent random variables with $P(a_i\le X_i\le b_i)=1$ for all $i\in[m]$, and let $\widehat\mu_m:=\frac1m\sum_{i=1}^mX_i$, $\mu:=\mathbb{E}[\widehat\mu_m]$. It is given (Hoeffding's inequality, Theorem 5.6.5) that for every $\epsilon>0$,

$$P\big(\widehat\mu_m-\mu\ge\epsilon\big)\le\exp\Big(-\frac{2m^2\epsilon^2}{\sum_{i=1}^m(b_i-a_i)^2}\Big),$$

that the same bound holds for the opposite tail $\mu-\widehat\mu_m\ge\epsilon$, and that the two-sided version carries an extra factor of $2$. Recall that the proof applies Markov's inequality to $e^{s\sum_i(X_i-\mathbb{E}[X_i])}$ and optimizes over $s>0$, using Hoeffding's lemma (Lemma 5.6.4) and the factorization of the expectation of a product of independent variables. Evaluate the following statements. They quantify over all $m$, all confining intervals, and all $\epsilon>0,\delta\in(0,1)$ unless stated.


**Answer 3.1:** If the $X_i$ are i.i.d. with $P(X_i\in[0,1])=1$, the displayed bound becomes $P(\widehat\mu_m-\mu\ge\epsilon)\le e^{-2m\epsilon^2}$.



**Answer 3.2:** If the $X_i$ are i.i.d. with $P(X_i\in[-1,1])=1$, the displayed bound still holds with the exponent $-2m\epsilon^2$: $P(\widehat\mu_m-\mu\ge\epsilon)\le e^{-2m\epsilon^2}$.



**Answer 3.3:** The bound remains valid if the $X_i$ are merely independent but not identically distributed, each in its own interval $[a_i,b_i]$ of width at most $1$.



**Answer 3.4:** Fix $\delta\in(0,1)$. In the unit-width case the bound reads $P(\widehat\mu_m-\mu\ge\epsilon)\le e^{-2m\epsilon^2}$; quadrupling the sample size $m$ suffices to maintain confidence $1-\delta$ when the target accuracy is halved from $\epsilon$ to $\epsilon/2$.



**Answer 3.5:** The derivation of the bound uses independence in exactly one place: the factorization $\mathbb{E}\big[e^{s\sum_iY_i}\big]=\prod_i\mathbb{E}\big[e^{sY_i}\big]$ for the centered variables $Y_i=X_i-\mathbb{E}[X_i]$.

---

## Question 4

Suppose $K$ estimators $\widehat\mu_m^{(1)},\ldots,\widehat\mu_m^{(K)}$ are built, the $k$-th from $m$ independent observations $X_1^{(k)},\ldots,X_m^{(k)}$ confined to $[a_k,b_k]$ (independent across $i$ within each estimator; the $K$ estimators need not be independent of each other). Write $\mu^{(k)}:=\mathbb{E}[\widehat\mu_m^{(k)}]$. It is given (Theorem 5.6.6, the uniform Hoeffding bound) that for any $\epsilon_1,\ldots,\epsilon_K>0$,

$$P\Big(\exists k\in[K]:\ \mu^{(k)}-\widehat\mu_m^{(k)}\ge\epsilon_k\Big)\le\sum_{k=1}^K\exp\Big(-\frac{2m\epsilon_k^2}{(b_k-a_k)^2}\Big),$$

and that in the equal-range, equal-accuracy case ($\epsilon_k\equiv\epsilon$, $b_k-a\equiv b-a$) the right-hand side becomes $K\exp\big(-2m\epsilon^2/(b-a)^2\big)$, so that simultaneously for all $k$: $\ \mu^{(k)}\le\widehat\mu_m^{(k)}+(b-a)\sqrt{\log(K/\delta)/(2m)}$ with probability at least $1-\delta$. Evaluate the following statements. They quantify over all $K$, $m$, ranges, and $\epsilon,\delta$ unless stated.

**Answer 4.1:** The proof of the uniform bound requires the $K$ estimators to be independent of one another.

**Answer 4.2:** In the equal-range case, doubling the number of monitored estimators $K$ doubles the guaranteed deviation $\epsilon$ at fixed confidence.

**Answer 4.3:** The proof of Theorem 5.6.6 consumes nothing beyond the single-estimator Hoeffding bound and the union bound — the two tools it is assembled from.

**Answer 4.4:** If each estimator $k$ is the training loss of a hypothesis $h_k$ in a finite class $\mathcal{H}=\{h_1,\ldots,h_K\}$ (losses in $[0,1]$, i.i.d. across the sample), then with probability at least $1-\delta$, simultaneously for every $h\in\mathcal{H}$: $\ R(h)\le\widehat R_S(h)+\sqrt{\log(K/\delta)/(2m)}$ — the seed of the finite-class generalization bound of Chapter 6.

**Answer 4.5:** If hypothesis $h_{K+1}$ is added to the class after the sample $S$ has been observed and its training loss inspected, the uniform guarantee extends to it at no extra cost, since the class size only grew from $K$ to $K+1$.

---

*(Solutions in `answer4.md`.)*
