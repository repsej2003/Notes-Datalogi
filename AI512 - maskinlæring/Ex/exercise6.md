This set contains 4 questions. All questions ask for an evaluation of five statements with (yes/no) or (true/false) answers. A true answer adds $+1$ points and a false answer adds $-1$ points to your score. Hence, skipping to evaluate a statement is very likely to be more advantageous for you than making a random guess. Your score is calculated as (your point sum)$/(4 \times 5)\times 100$. The questions follow the exam format; work through them at the exercise sessions and commit to your answers before consulting the answer key.

**Notation.** The conventions are those of the lecture notes. $P(\cdot)$ denotes a probability — of an event, or of a discrete random variable taking a value; lowercase $p(\cdot)$ is a density. $\mathbb{E}[\cdot]$ carries subscripts naming the variable averaged over; $\mathbb{1}(\cdot)$ is the indicator and $\log$ the natural logarithm. $S=\{(x_i,y_i)\}_{i=1}^m \overset{\text{i.i.d.}}{\sim}\mathcal{D}$ over $\mathcal{X}\times\mathcal{Y}$, with $\mathcal{D}_{\mathcal{X}}$ the marginal on $\mathcal{X}$; $[m]:=\{1,\ldots,m\}$. $\ell(y,\widehat y)$ is the pointwise loss (true label first), $R(h)=\mathbb{E}_{(x,y)\sim\mathcal{D}}[\ell(y,h(x))]$, $\widehat R_S(h)=\frac1m\sum_i \ell(y_i,h(x_i))$. For a sample $S$, $\mathcal{H}_S:=\{(h(x_1),\ldots,h(x_m)):h\in\mathcal{H}\}$ is the restriction of $\mathcal{H}$ to $S$, $\tau_{\mathcal{H}}$ is the growth function, and $d_{VC}$ is the VC dimension. For $A\subseteq\mathbb{R}^m$ and i.i.d. Rademacher signs $\sigma_1,\ldots,\sigma_m\in\{-1,+1\}$,
$$\widehat{\mathfrak{R}}(A):=\mathbb{E}_\sigma\Big[\sup_{a\in A}\frac1m\sum_{i=1}^m\sigma_i a_i\Big],\qquad \widehat{\mathfrak{R}}_S(\mathcal{H}):=\widehat{\mathfrak{R}}(\mathcal{H}_S),$$
and $\mathfrak{R}_m(\mathcal{H}):=\mathbb{E}_S[\widehat{\mathfrak{R}}_S(\mathcal{H})]$; for a loss class, $\ell\circ\mathcal{H}\circ S:=\{(\ell(y_1,h(x_1)),\ldots,\ell(y_m,h(x_m))):h\in\mathcal{H}\}$ and $\widehat{\mathfrak{R}}_S(\ell\circ\mathcal{H}):=\widehat{\mathfrak{R}}(\ell\circ\mathcal{H}\circ S)$.

**Every statement below is a mathematical assertion about the setup stated in its question**, decidable by proof or by counterexample from the results of the course. No numerical evaluation is required anywhere. **No assumptions may be made additional to those specified in the question text.**

---

## Question 1

Let $Z_1,\ldots,Z_m$ be independent random variables with values in a set $\mathcal{Z}$, and let $f:\mathcal{Z}^m\to\mathbb{R}$ satisfy the bounded-differences property: for every $i\in[m]$ and every $z_1,\ldots,z_m,z_i'\in\mathcal{Z}$,
$$\big|f(z_1,\ldots,z_i,\ldots,z_m)-f(z_1,\ldots,z_i',\ldots,z_m)\big|\le c_i.$$
It is given (Theorem 7.1.1, McDiarmid's inequality) that for every $t>0$,
$$P\big(|f(Z_1,\ldots,Z_m)-\mathbb{E}[f(Z_1,\ldots,Z_m)]|\ge t\big)\le2\exp\Big(-\frac{2t^2}{\sum_{i=1}^m c_i^2}\Big).$$
Evaluate the following statements. They quantify over all $m\ge1$, all independent variables, all bounded-difference functions, and all $t>0$ unless stated.

**Answer 1.1:** If $f(z_1,\ldots,z_m)=\frac1m\sum_{i=1}^m z_i$ and $P(Z_i\in[a_i,b_i])=1$ for every $i$, then $c_i=(b_i-a_i)/m$ and McDiarmid's inequality becomes
$$P\big(|f-\mathbb{E}[f]|\ge t\big)\le2\exp\Big(-\frac{2m^2t^2}{\sum_{i=1}^m(b_i-a_i)^2}\Big);$$
in particular, for $[a_i,b_i]=[0,1]$ the exponent is $-2mt^2$.

True

**Answer 1.2:** McDiarmid's inequality applies only when $f$ is a sum or an average of the $Z_i$; for a general nonlinear $f$ — for instance a supremum over a hypothesis class — the bounded-differences condition alone is not enough.

False
Fordi den stiller ikke krav til f

**Answer 1.3:** For $f(S):=\sup_{h\in\mathcal{H}}\big(R(h)-\widehat R_S(h)\big)$ with a loss taking values in $[0,1]$, changing one example changes $f$ by at most $1/m$; hence McDiarmid's inequality gives
$$P\big(|f(S)-\mathbb{E}_S[f(S)]|\ge t\big)\le2e^{-2mt^2}.$$

True


**Answer 1.4:** The exponent of McDiarmid's bound is governed by $\sum_i c_i^2$ rather than by $\big(\sum_i c_i\big)^2$; consequently, for a fixed total influence $\sum_i c_i$, the bound is strongest when the influence is spread evenly across the coordinates.

True

0.1 0.1 0.1 0.1 0.1 0.5 

**Answer 1.5:** The bounded-differences property alone suffices for the conclusion of McDiarmid's inequality: if $f$ satisfies it, the bound holds even when $Z_1,\ldots,Z_m$ are dependent.

false, we use hoefdings which assume independent variable

---

## Question 2

Let $S,S'\overset{\text{i.i.d.}}{\sim}\mathcal{D}^m$ be independent samples, let $\sigma_1,\ldots,\sigma_m$ be independent Rademacher signs, and let the loss take values in $[0,1]$. Write
$$\Phi(S):=\sup_{h\in\mathcal{H}}\big(R(h)-\widehat R_S(h)\big).$$
It is given (the symmetrization argument of Chapter 7) that
$$\mathbb{E}_S[\Phi(S)]\le2\,\mathfrak{R}_m(\ell\circ\mathcal{H}).$$
Evaluate the following statements. They quantify over all nonempty hypothesis classes $\mathcal{H}$, all distributions $\mathcal{D}$, and all $m\ge1$ unless stated.

**Answer 2.1:** If $\mathfrak{R}_m(\ell\circ\mathcal{H})=0$, then any two hypotheses in $\mathcal{H}$ have the same risk.



**Answer 2.2:** Combining the two one-sided symmetrization bounds, for the difference $R(h)-\widehat R_S(h)$ and for its opposite, upgrades the guarantee to a two-sided one at the same complexity:
$$\mathbb{E}_S\Big[\sup_{h\in\mathcal{H}}\big|R(h)-\widehat R_S(h)\big|\Big]\le4\,\mathfrak{R}_m(\ell\circ\mathcal{H}).$$



**Answer 2.3:** The expectation bound alone, without a concentration inequality, yields a high-probability bound with the usual $\sqrt{\log(1/\delta)}$ dependence on the confidence.



**Answer 2.4:** For a finite class, the symmetrization inequality and Massart's lemma together give
$$\mathbb{E}_S[\Phi(S)]\le2\sqrt{\frac{2\log|\mathcal{H}|}{m}},$$
which tends to zero as $m\to\infty$.



**Answer 2.5:** The symmetrization inequality is an equality for every $\mathcal{H}$ and every $\mathcal{D}$.



---

## Question 3

Let $A\subseteq\mathbb{R}^m$ and let $\sigma_1,\ldots,\sigma_m$ be i.i.d. Rademacher signs. Recall Definition 7.3.1 and Lemma 7.3.3 (Massart's lemma): for a finite set $A=\{a^{(1)},\ldots,a^{(N)}\}\subset\mathbb{R}^m$ with $\|a^{(j)}\|_2\le B$ for all $j$,
$$\widehat{\mathfrak{R}}(A)\le\frac{B\sqrt{2\log N}}{m}.$$
Recall also Theorem 7.3.2. Evaluate the following statements. They quantify over all $m\ge1$, all nonempty sets $A$, and all finite hypothesis classes unless stated.

**Answer 3.1:** If $A=\{a\}$ is a singleton, then $\widehat{\mathfrak{R}}(A)=0$; if $A\subseteq A'$, then $\widehat{\mathfrak{R}}(A)\le\widehat{\mathfrak{R}}(A')$; and for every $c\ge0$, $\widehat{\mathfrak{R}}(cA)=c\,\widehat{\mathfrak{R}}(A)$.

**Answer 3.2:** In Massart's bound, halving the norm bound $B$ halves the bound, whereas halving the number $N$ of vectors changes it only by the factor $\sqrt{\log(N/2)/\log N}$, which tends to $1$ as $N\to\infty$; hence for large classes, reducing $B$ is far more effective than reducing $N$.

**Answer 3.3:** Massart's lemma requires the vectors $a^{(1)},\ldots,a^{(N)}$ to be mutually orthogonal, or at least linearly independent; without such a geometric condition the union bound over $N$ is invalid.

**Answer 3.4:** For a finite hypothesis class $\mathcal{H}$ with a loss taking values in $[0,1]$, applying Massart's lemma to the loss vectors gives
$$\widehat{\mathfrak{R}}_S(\ell\circ\mathcal{H})\le\sqrt{\frac{2\log|\mathcal{H}|}{m}},$$
and substituting this into the Rademacher generalization bound of Theorem 7.3.2 recovers the finite-class bound of Theorem 6.1.3 up to constant factors.

**Answer 3.5:** For the sign cube $A=\{-\frac{B}{\sqrt m},\frac{B}{\sqrt m}\}^m$, whose $2^m$ vectors all have Euclidean norm $B$, one has $\widehat{\mathfrak{R}}(A)=B/\sqrt m$, while Massart's lemma gives $B\sqrt{2\log 2}/\sqrt m$; the two differ by exactly the factor $\sqrt{2\log 2}$.

---

## Question 4

Let $\mathcal{H}$ be a class of binary classifiers with $d_{VC}(\mathcal{H})=d<\infty$, let the loss be the zero-one loss, and let $S$ be a sample of size $m$. It is given (Theorem 7.3.5) that
$$\widehat{\mathfrak{R}}_S(\mathcal{H})\le2\sqrt{\frac{d\log(m+1)}{m}}.$$
Separately, for $B,R>0$ let
$$\mathcal{H}_B:=\{x\mapsto w^\top x\ :\ \|w\|_2\le B\},$$
and suppose $\|x\|_2\le R$ almost surely under $\mathcal{D}$. It is given (Theorem 7.3.6) that $\widehat{\mathfrak{R}}_S(\mathcal{H}_B)\le BR/\sqrt m$. Evaluate the following statements. They quantify over all nonempty binary classes, all $B,R>0$, all distributions satisfying the stated norm bound, and all samples unless stated.

**Answer 4.1:** Both bounds decrease at the rate $m^{-1/2}$, but the VC bound carries the extra factor $\sqrt{\log(m+1)}$; consequently, for fixed $d,B,R$, the ratio of the VC bound to the norm bound grows like $\sqrt{\log m}$.

**Answer 4.2:** In finite dimension the VC bound is always at least as tight as the norm bound, because $d$ is the exact combinatorial capacity of the class.

**Answer 4.3:** The norm bound remains finite and informative when the predictor is $x\mapsto w^\top\phi(x)$ for a map $\phi$ into an infinite-dimensional feature space with $\|\phi(x)\|_2\le R$ almost surely, where $d_{VC}$ is infinite; it therefore provides a guarantee in a regime where the VC bound is vacuous.

**Answer 4.4:** Within the class $\mathcal{H}_B$, the complexity term is linear in the radius $B$; consequently, for fixed $R$, halving the allowed weight norm halves the term $BR/\sqrt m$.

**Answer 4.5:** Since the bound $BR/\sqrt m$ does not involve the dimension, it remains valid for $\mathcal{H}_B$ without the assumption $\|x\|_2\le R$ almost surely; the data norms can simply be absorbed into $B$.

---

*(Solutions in `answer6.md`.)*
