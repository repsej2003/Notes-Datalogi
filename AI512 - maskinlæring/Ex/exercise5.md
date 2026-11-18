This set contains 4 questions. All questions ask for an evaluation of five statements with (yes/no) or (true/false) answers. A true answer adds $+1$ points and a false answer adds $-1$ points to your score. Hence, skipping to evaluate a statement is very likely to be more advantageous for you than making a random guess. Your score is calculated as (your point sum)$/(4 \times 5)\times 100$. The questions follow the exam format; work through them at the exercise sessions and commit to your answers before consulting the answer key.

**Notation.** The conventions are those of the lecture notes. $P(\cdot)$ denotes a probability — of an event, or of a discrete random variable taking a value; lowercase $p(\cdot)$ is a density. $\mathbb{E}[\cdot]$ carries subscripts naming the variable averaged over; $\mathbb{1}(\cdot)$ is the indicator and $\log$ the natural logarithm. $S=\{(x_i,y_i)\}_{i=1}^m \overset{\text{i.i.d.}}{\sim}\mathcal{D}$ over $\mathcal{X}\times\mathcal{Y}$, with $\mathcal{D}_{\mathcal{X}}$ the marginal on $\mathcal{X}$; $[m]:=\{1,\ldots,m\}$ and $[C]:=\{1,\ldots,C\}$. $\ell(y,\widehat y)$ is the pointwise loss (true label first), $R(h)=\mathbb{E}_{(x,y)\sim\mathcal{D}}[\ell(y,h(x))]$, $\widehat R_S(h)=\frac1m\sum_i \ell(y_i,h(x_i))$. $R^*_{\mathcal{D}}:=\inf_{h}R(h)$ is the Bayes error, $\tau_{\mathcal{H}}$ the growth function, $d_{VC}$ the VC dimension. A training set is $\epsilon$-representative if $|R(h)-\widehat R_S(h)|\le\epsilon$ for all $h\in\mathcal{H}$; $m^{\mathrm{UC}}_{\mathcal{H}}$ and $m_{\mathcal{H}}$ denote the sample complexities of uniform convergence and of agnostic PAC learning.

**Every statement below is a mathematical assertion about the setup stated in its question**, decidable by proof or by counterexample from the results of the course. No numerical evaluation is required anywhere. **No assumptions may be made additional to those specified in the question text.**

---

## Question 1

Let $\mathcal{H}=\{h_1,\ldots,h_N\}$ be a finite hypothesis class, let $\ell:\mathcal{Y}\times\mathcal{Y}\to[0,1]$, and let $S\sim\mathcal{D}^m$ be an i.i.d. sample. It is given (Theorem 6.1.3 and Corollary 6.2.6) that for every $\delta\in(0,1)$, with probability at least $1-\delta$ over $S$,

$$R(h)\le\widehat R_S(h)+\sqrt{\frac{\log N+\log(1/\delta)}{2m}}\qquad\text{for all }h\in\mathcal{H},$$

and that

$$P\Big(\exists h\in\mathcal{H}:\ |R(h)-\widehat R_S(h)|>\epsilon\Big)\le 2N e^{-2m\epsilon^2}.$$

Evaluate the following statements. They quantify over all finite $\mathcal{H}$, all losses with values in $[0,1]$, all distributions $\mathcal{D}$, and all $m\ge1$, $\delta\in(0,1)$, $\epsilon>0$ unless stated.

**Answer 1.1:** The bound is uniform over $\mathcal{H}$, so it yields the ERM oracle inequality, which compares ERM with the best risk in the class: with probability at least $1-\delta$, $R(h_{\mathrm{ERM}})\le\min_{h\in\mathcal{H}}R(h)+2\sqrt{\frac{\log N+\log(1/\delta)}{2m}}$.

Sandt

**Answer 1.2:** The two-sided guarantee at confidence $\delta$ follows from the one-sided guarantee at confidence $\delta/2$ applied to both the loss class and the complementary loss class $1-\ell$, and costs at most an additive $\log 2/(2\epsilon^2)$ in sample size relative to the one-sided guarantee at confidence $\delta$.

falsk

**Answer 1.3:** For fixed $N$ and $\delta$, the deviation $\sqrt{(\log N+\log(1/\delta))/(2m)}$ is proportional to $1/\sqrt m$; consequently, quadrupling the sample size halves it.

Sandt

**Answer 1.4:** If $\mathcal{H}$ is selected after observing $S$, but its cardinality is still $N$, then with probability at least $1-\delta$,
$$R(h)\le\widehat R_S(h)+\sqrt{\frac{\log N+\log(1/\delta)}{2m}}\qquad\text{for all }h\in\mathcal{H}.$$

???

**Answer 1.5:** Because the bound is uniform over $\mathcal{H}$ and distribution-free, it also controls the approximation error $\min_{h\in\mathcal{H}}R(h)-R^*_{\mathcal{D}}$: it bounds how much the best hypothesis in $\mathcal{H}$ can improve on the Bayes predictor.

??

---

## Question 2

Let $\mathcal{X}$ be a domain, $\mathcal{Y}=\{0,1\}$, and let $\ell$ be the zero-one loss. Recall the definitions of realizability (Definition 6.2.1), the uniform convergence property (Definition 6.2.4), agnostic PAC learnability (Definition 6.2.5), and PAC learnability (Definition 6.2.8), and the Fundamental Theorem of Statistical Learning (Theorem 6.4.7). Evaluate the following statements. They quantify over all nonempty hypothesis classes $\mathcal{H}\subseteq\{0,1\}^{\mathcal{X}}$, all distributions $\mathcal{D}$ over $\mathcal{X}\times\{0,1\}$, and all $\epsilon,\delta\in(0,1)$ unless stated.

**Answer 2.1:** For a finite class, the sample complexity of agnostic PAC learning exceeds that of PAC learning by at most a constant factor independent of $\epsilon$ and $\delta$.

Falsk
det afhænger ogs er størrelse på H


**Answer 2.2:** If $\mathcal{H}$ is PAC learnable, then every ERM algorithm for $\mathcal{H}$ is an agnostic PAC learner.

True 
Uniform convergence ⇒ ERM is an agnostic PAC learner. Immediate from Lemma 6.2.3: take m ≥ mUC H (ϵ/2, δ), so that S is ϵ/2-representative with probability ≥ 1 − δ, on which event every ERM output satisfies R(hS ) ≤ minh R(h) + ϵ.


**Answer 2.3:** For fixed $\epsilon$ and $\delta$, squaring the number of hypotheses, from $N$ to $N^2$, at most doubles the finite-class sample-complexity bound.

Sansd it its a log

**Answer 2.4:** Every countable hypothesis class is PAC learnable; countability of $\mathcal{H}$ is sufficient for PAC learnability.

False

**Answer 2.5:** Agnostic PAC learnability of $\mathcal{H}$ requires that, for every distribution $\mathcal{D}$, the best risk inside the class equals the Bayes error: $\min_{h\in\mathcal{H}}R(h)=R^*_{\mathcal{D}}$.

False

---

## Question 3

Let $x_1,\ldots,x_m\in\mathbb{R}$ be fixed design points with $\bar x:=\frac1m\sum_{i=1}^m x_i$ and $S_{xx}:=\sum_{i=1}^m(x_i-\bar x)^2>0$. The labels are $y_i=f^*(x_i)+\epsilon_i$, where $\epsilon_1,\ldots,\epsilon_m$ are independent with $\mathbb{E}[\epsilon_i]=0$ and $\mathrm{Var}[\epsilon_i]=\sigma^2>0$. Let $h_S(x)=\widehat a+\widehat b\,x$ be the least-squares line fitted to $\{(x_i,y_i)\}_{i=1}^m$, and let $g(x):=\mathbb{E}_S[h_S(x)]$. At a test point $x$, the label is $y=f^*(x)+\epsilon$ with $\epsilon$ independent of $S$, $\mathbb{E}[\epsilon]=0$, and $\mathrm{Var}[\epsilon]=\sigma^2$. It is given (the bias-variance decomposition of the lecture notes) that

$$\mathbb{E}_{S,\epsilon}\big[(y-h_S(x))^2\big]=\underbrace{\big(g(x)-f^*(x)\big)^2}_{\mathrm{Bias}^2(x)}+\underbrace{\mathrm{Var}_S[h_S(x)]}_{\mathrm{Variance}(x)}+\sigma^2.$$

Evaluate the following statements. They quantify over all $m\ge2$, all fixed designs with $S_{xx}>0$, all $f^*$, and all $x$ unless stated.

**Answer 3.1:** $\mathrm{Var}_S[h_S(x)]=\sigma^2\big(\frac1m+\frac{(x-\bar x)^2}{S_{xx}}\big)$ for every $x$.

?? idk


**Answer 3.2:** If $f^*$ is affine, then $\mathrm{Bias}^2(x)=0$ for every $x$, and $\mathbb{E}_{S,\epsilon}\big[(y-h_S(x))^2\big]=\sigma^2\big(1+\frac1m+\frac{(x-\bar x)^2}{S_{xx}}\big)$.

Idk

**Answer 3.3:** $\mathrm{Var}_S[h_S(x)]\le\sigma^2$ for every fixed design and every $x$, because averaging over the training set can only reduce the variance of a single noisy label.

No , nothing can reduce variance

**Answer 3.4:** At $x=\bar x$ the least-squares variance equals $\sigma^2/m$, which is also the variance of the $k$-nearest-neighbours regressor with $k=m$ at every $x$; for $x\ne\bar x$ the least-squares variance is strictly larger.

True

**Answer 3.5:** If $f^*(x)=x^2$ and $x_i=-1+\frac{2(i-1)}{m-1}$ for $i=1,\ldots,m$, then $\mathrm{Bias}^2(0)\to0$ as $m\to\infty$, because the least-squares line converges to the best linear approximation of $f^*$.

Falske

---

## Question 4

Let $\mathcal{X}=\mathbb{R}$, $\mathcal{Y}=\{0,1\}$, and let $\ell$ be the zero-one loss. For $k\ge1$, let

$$\mathcal{H}_k:=\Big\{x\mapsto\mathbb{1}\big(p(x)\ge0\big)\ :\ p\text{ a polynomial of degree at most }k\Big\},$$

with ties at the roots broken in favour of $1$, and let $\mathcal{H}_\infty:=\bigcup_{k\ge1}\mathcal{H}_k$. It is given that $d_{VC}(\mathcal{H}_k)=k+1$ for every $k\ge1$. Evaluate the following statements. They quantify over all $k\ge1$ and all finite samples unless stated.

**Answer 4.1:** $\mathcal{H}_k\subseteq\mathcal{H}_{k+1}$ and $d_{VC}(\mathcal{H}_k)=k+1$; consequently $\mathcal{H}_\infty$ shatters some set of every finite cardinality.

Sandt

**Answer 4.2:** $\mathcal{H}_\infty$ is not PAC learnable.

Sandt

 -- Theorem 6.4.6: VC and PAC learnability If dV C (H) = ∞ then H is not PAC learnable.


**Answer 4.3:** $\mathcal{H}_\infty$ is nonuniformly learnable, although $d_{VC}(\mathcal{H}_\infty)=\infty$; consequently, finite VC dimension is sufficient but not necessary for nonuniform learnability.

Sandt

Theorem 6.4.11 If H = ∪i∈NHi such that each Hi has the uniform convergence property, then H is nonuniformly learnable. 



**Answer 4.4:** Since each $\mathcal{H}_k$ is PAC learnable and $\mathcal{H}_\infty=\bigcup_{k\ge1}\mathcal{H}_k$ is a countable union, $\mathcal{H}_\infty$ is PAC learnable as well.

False


**Answer 4.5:** Nonuniform learnability of $\mathcal{H}_\infty$ implies PAC learnability, because one can take the maximum of the sample complexities $m(\epsilon,\delta,h)$ over the countably many $h\in\mathcal{H}_\infty$.

False


---

*(Solutions in `answer5.md`.)*
