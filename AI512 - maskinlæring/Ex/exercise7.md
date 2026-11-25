This set contains 4 questions. All questions ask for an evaluation of five statements with (yes/no) or (true/false) answers. A true answer adds $+1$ points and a false answer adds $-1$ points to your score. Hence, skipping to evaluate a statement is very likely to be more advantageous for you than making a random guess. Your score is calculated as (your point sum)$/(4 \times 5)\times 100$. The questions follow the exam format; work through them at the exercise sessions and commit to your answers before consulting the answer key.

**Notation.** The conventions are those of the lecture notes. $P(\cdot)$ denotes a probability — of an event, or of a discrete random variable taking a value; lowercase $p(\cdot)$ is a density. $\mathbb{E}[\cdot]$ carries subscripts naming the variable averaged over; $\mathbb{1}(\cdot)$ is the indicator and $\log$ the natural logarithm. $[m]:=\{1,\ldots,m\}$ and $[C]:=\{1,\ldots,C\}$. For the Beta–Bernoulli model, $\theta\sim\mathrm{Beta}(\alpha,\beta)$ and $x_1,\ldots,x_m\mid\theta\overset{\text{i.i.d.}}{\sim}\mathrm{Bernoulli}(\theta)$, with $k:=\sum_{i=1}^m x_i$. For Naive Bayes, $x=(x_1,\ldots,x_d)\in\{0,1\}^d$, $y\in[C]$, $\pi_c:=P(y=c)$, $\theta_{j,c}:=P(x_j=1\mid y=c)$, $m_c:=\sum_{i=1}^m\mathbb{1}(y_i=c)$, and
$$\mathcal{H}_{\mathrm{NB}}:=\Big\{x\mapsto\arg\max_{c\in[C]}\Big[\log\pi_c+\sum_{j=1}^d\big(x_j\log\theta_{j,c}+(1-x_j)\log(1-\theta_{j,c})\big)\Big]\Big\}$$
with $\pi_c>0$, $\sum_c\pi_c=1$, $\theta_{j,c}\in(0,1)$, and ties broken towards the smallest class index. $\mathcal{H}_{\mathrm{aff}}$ is the class of multiclass affine predictors $x\mapsto\arg\max_{c\in[C]}\langle v_c,(1,x)\rangle$ with the same tie-breaking. $d_{\mathrm{N}}$ is the Natarajan dimension (Definition 8.6.3), $\tau_{\mathcal{H}}$ the growth function, and $\ell$ the zero-one loss.

**Every statement below is a mathematical assertion about the setup stated in its question**, decidable by proof or by counterexample from the results of the course. No numerical evaluation is required anywhere. **No assumptions may be made additional to those specified in the question text.**

---

## Question 1

Consider the Beta–Bernoulli model: $\theta\sim\mathrm{Beta}(\alpha,\beta)$ with $\alpha,\beta>0$, and $x_1,\ldots,x_m\mid\theta\overset{\text{i.i.d.}}{\sim}\mathrm{Bernoulli}(\theta)$. Write $k:=\sum_{i=1}^m x_i$. It is given that
$$p(\theta\mid S)=\mathrm{Beta}(\theta\mid\alpha+k,\ \beta+m-k),\qquad \theta_{MLE}=\frac{k}{m},$$
that
$$\theta_{MAP}=\frac{\alpha+k-1}{\alpha+\beta+m-2}$$
when $\alpha+k>1$ and $\beta+m-k>1$, and that the posterior predictive satisfies
$$P(x_*=1\mid S)=\frac{\alpha+k}{\alpha+\beta+m}.$$
Evaluate the following statements. They quantify over all $\alpha,\beta>0$, all $m\ge1$, and all $k\in\{0,\ldots,m\}$ unless stated.

**Answer 1.1:** The posterior variance is $\frac{(\alpha+k)(\beta+m-k)}{(\alpha+\beta+m)^2(\alpha+\beta+m+1)}$, so the posterior standard deviation is $O(m^{-1/2})$; since the posterior mean differs from the MLE by $O(1/m)$, the posterior concentrates around the MLE as $m\to\infty$.



**Answer 1.2:** With the uniform prior $\alpha=\beta=1$ and $1\le k\le m-1$, $\theta_{MAP}=\theta_{MLE}$; moreover, this identity persists for every Beta prior with $\alpha=\beta$.



**Answer 1.3:** Conditionally on $\theta$, the posterior mean $\mathbb{E}[\theta\mid S]$ has bias $\frac{\alpha-\theta(\alpha+\beta)}{\alpha+\beta+m}$; it is unbiased only when the prior mean equals $\theta$, and the bias vanishes as $m\to\infty$.



**Answer 1.4:** The evidence $P(S)=\int_0^1P(S\mid\theta)p(\theta)\,d\theta$ depends on the sample $S$ only through $k$ and equals $B(\alpha+k,\beta+m-k)/B(\alpha,\beta)$; consequently, the probability of observing exactly $k$ successes is $\binom{m}{k}$ times this quantity, where $B(\cdot,\cdot)$ is the Beta function.



**Answer 1.5:** The Gibbs predictor, which samples $x_*\sim P(x_*\mid S)$ from the posterior predictive, has error no larger than the Bayes predictor (the mode of the predictive distribution) for every predictive distribution.

---

## Question 2

Let $C\ge2$, $d\ge1$, $\mathcal{X}=\{0,1\}^d$, $\mathcal{Y}=[C]$, and let $\ell$ be the zero-one loss. Assume the Naive Bayes factorization
$$P(x\mid y=c)=\prod_{j=1}^dP(x_j\mid y=c)$$
with parameters $\pi_c=P(y=c)$ and $\theta_{j,c}=P(x_j=1\mid y=c)$. Given $S=\{(x_i,y_i)\}_{i=1}^m$, the MLE is
$$\widehat\pi_c=\frac{m_c}{m},\qquad \widehat\theta_{j,c}=\frac{\sum_{i:y_i=c}x_{ij}}{m_c},\qquad m_c=\sum_{i=1}^m\mathbb{1}(y_i=c),$$
and the add-$\alpha$ smoothed estimator is
$$\widetilde\theta_{j,c}=\frac{\sum_{i:y_i=c}x_{ij}+\alpha}{m_c+2\alpha},\qquad \widetilde\pi_c=\frac{m_c+\alpha}{m+C\alpha},\qquad \alpha>0.$$
It is given (Proposition 8.6.2) that every multiclass affine predictor can be represented as a Naive Bayes classifier. Evaluate the following statements. They quantify over all $C,d,m$ and all data sets with $m_c\ge1$ unless stated.

**Answer 2.1:** The Naive Bayes model has $C-1+Cd$ free parameters — linear in the number of features $d$ — whereas a full model with a class prior and a full class-conditional table over $\{0,1\}^d$ has $C2^d-1$ free parameters, exponential in $d$.

true


**Answer 2.2:** For any two classes $c\ne c'$ with $\theta_{\cdot,c}\ne\theta_{\cdot,c'}$, the Naive Bayes decision boundary is a hyperplane (the zero set of an affine function), because the log-odds $\log\frac{P(y=c\mid x)}{P(y=c'\mid x)}$ is affine in $x$.

True, det virker linæart

**Answer 2.3:** For $C=2$ and $d=2$, the Naive Bayes class cannot realize the XOR (exclusive-or) labeling $y=x_1\oplus x_2$, that is, $y=1$ exactly when $x_1\ne x_2$.



**Answer 2.4:** The Naive Bayes MLE — the maximizer of the joint likelihood over the Naive Bayes parameter space, with all estimated probabilities in $(0,1)$ — minimizes the empirical zero-one risk over $\mathcal{H}_{\mathrm{NB}}$; that is, it is an empirical risk minimizer over the same class.

false

**Answer 2.5:** Each smoothed feature probability $\widetilde\theta_{j,c}$ is a convex combination of the MLE and the baseline probability $1/2$, which assigns equal probability to $x_j=0$ and $x_j=1$, with weight $m_c/(m_c+2\alpha)$ on the MLE; hence smoothing shrinks the estimate toward that baseline, and the shrinkage vanishes as $m_c\to\infty$.



---

## Question 3

Let $C\ge2$, let $\mathcal{H}\subseteq[C]^{\mathcal{X}}$ be nonempty, and recall the definition of N-shattering and the Natarajan dimension $d_{\mathrm{N}}$ (Definition 8.6.3): a set $S=\{x_1,\ldots,x_m\}$ is N-shattered if there exist $f_1,f_2:S\to[C]$ with $f_1(x_i)\ne f_2(x_i)$ for all $i$ such that for every $B\subseteq[m]$ there is $h\in\mathcal{H}$ with $h(x_i)=f_1(x_i)$ for $i\in B$ and $h(x_i)=f_2(x_i)$ for $i\notin B$. Let $\mathcal{H}_{\mathrm{aff}}$ be the class of multiclass affine predictors $x\mapsto\arg\max_{c\in[C]}\langle v_c,(1,x)\rangle$ with ties broken towards the smallest class index. It is given (Theorem 8.6.4) that $d_{\mathrm{N}}(\mathcal{H}_{\mathrm{aff}})\le(C-1)(d+1)$. Evaluate the following statements. They quantify over all $C\ge2$, $d\ge1$, and all nonempty hypothesis classes unless stated.

**Answer 3.1:** For $C=2$, the Natarajan dimension is strictly larger than the VC dimension, because N-shattering requires two witness functions $f_1,f_2$ that differ at every point, a stronger requirement than ordinary shattering.

False

**Answer 3.2:** For the class of all constant classifiers on a nonempty domain, $d_{\mathrm{N}}=1$ for every $C\ge2$, although the class contains $C$ hypotheses; hence $d_{\mathrm{N}}$ does not grow with the number of labels.

True

**Answer 3.3:** Adding one class to the multiclass affine class increases the bound $(C-1)(d+1)$ by $d+1$, while adding one feature increases it by $C-1$; hence adding a class is more costly exactly when $d+1>C-1$.

True


**Answer 3.4:** In fact $d_{\mathrm{N}}(\mathcal{H}_{\mathrm{aff}})=C(d+1)$, since each of the $C$ classes contributes $d+1$ parameters.

False


**Answer 3.5:** If $d_{\mathrm{N}}(\mathcal{H})\le D$, then for $m\ge D$ the growth function satisfies $\tau_{\mathcal{H}}(m)\le(e(C-1)m/D)^D$; consequently, the uniform convergence bound is $O\big(\sqrt{D\log(Cm)/m}\big)$, and the sample complexity is linear in $D$ up to logarithmic factors.

True

---

## Question 4

Let $\mathcal{H}\subseteq[C]^{\mathcal{X}}$ be nonempty, let $\ell$ be the zero-one loss, and let $\tau_{\mathcal{H}}$ be the growth function. It is given (Lemma 8.6.5, the multiclass Sauer–Shelah lemma) that
$$\tau_{\mathcal{H}}(m)\le\sum_{i=0}^{\min\{d_{\mathrm{N}},m\}}\binom{m}{i}(C-1)^i,$$
and, for $m\ge d_{\mathrm{N}}$,
$$\tau_{\mathcal{H}}(m)\le\Big(\frac{e(C-1)m}{d_{\mathrm{N}}}\Big)^{d_{\mathrm{N}}}.$$
It is further given (Theorem 8.6.6) that for every distribution $\mathcal{D}$ on $\mathcal{X}\times[C]$ and every $\delta\in(0,1)$, with probability at least $1-\delta$ over $S\sim\mathcal{D}^m$,
$$\sup_{h\in\mathcal{H}}\big|R(h)-\widehat R_S(h)\big|\le\sqrt{\frac{16\log(2\tau_{\mathcal{H}}(m))+\log(1/\delta)}{m}}.$$
For the Naive Bayes class, let $d_{\mathrm{N}}:=(C-1)(d+1)$ and
$$\epsilon_m(\delta):=\sqrt{\frac{16d_{\mathrm{N}}\log(2e(C-1)m/d_{\mathrm{N}})+\log(1/\delta)}{m}}.$$
Evaluate the following statements. They quantify over all $C,d,m$ with $m\ge d_{\mathrm{N}}$, all distributions $\mathcal{D}$, and all $\delta\in(0,1)$ unless stated.

**Answer 4.1:** For fixed $d_{\mathrm{N}}$, the multiclass Sauer–Shelah bound implies $\tau_{\mathcal{H}}(m)=O(m^{d_{\mathrm{N}}})$; consequently, $\log\tau_{\mathcal{H}}(m)=O(d_{\mathrm{N}}\log m)$, so the effective number of hypotheses grows polynomially rather than exponentially in $m$.

True

**Answer 4.2:** For fixed $d_{\mathrm{N}}$ and $\delta$, the right-hand side of the uniform bound tends to zero as $m\to\infty$; consequently, every class with finite Natarajan dimension has the uniform convergence property.

Sandt

**Answer 4.3:** The uniform convergence bound for a class with finite Natarajan dimension requires the data distribution $\mathcal{D}$ to satisfy the Naive Bayes factorization $P(x\mid y)=\prod_{j=1}^dP(x_j\mid y)$.

False

**Answer 4.4:** For the Naive Bayes class, with probability at least $1-\delta$, simultaneously for every $h\in\mathcal{H}_{\mathrm{NB}}$,
$$R(h)\le\widehat R_S(h)+\epsilon_m(\delta).$$

True

**Answer 4.5:** The ERM oracle inequality over $\mathcal{H}_{\mathrm{NB}}$ — the bound comparing ERM with the best risk in the class — gives
$$R(\widehat h_{\mathrm{ERM}})\le\inf_{h\in\mathcal{H}_{\mathrm{NB}}}R(h)+2\epsilon_m(\delta)$$
with probability at least $1-\delta$; it does not imply the same guarantee for the Naive Bayes MLE, since the MLE need not minimize the empirical zero-one risk.

True


---

*(Solutions in `answer7.md`.)*
