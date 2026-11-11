# Answer Key — Exercise 1

*(Companion to `exercise1.md`, to be kept away from the version handed to students.)*

| | .1 | .2 | .3 | .4 | .5 |
|---|---|---|---|---|---|
| **Q1** | True | True | True | False | False |
| **Q2** | True | True | False | True | False |
| **Q3** | True | False | True | True | False |
| **Q4** | True | False | True | True | False |

## Question 1

**1.1 — True.** A hypothesis assigns one of $|\mathcal{Y}|=2$ labels to each of $|\mathcal{X}|=3$ inputs: $2^3=8$ choices; in general $|\mathcal{Y}|^{|\mathcal{X}|}$.

**1.2 — True.** $y=f(x)$ with $f$ a function: the same input always receives the same label, so a conflicting pair cannot arise — the labeling-function assumption is a genuine restriction on the data-generating model.

**1.3 — True.** Under the zero-one loss, $R(h)=\frac13\sum_{x\in\mathcal{X}}\mathbb{1}(h(x)\ne f(x))$. Since $|\mathbb{1}(h(x)\ne f(x))-\mathbb{1}(h'(x)\ne f(x))|\le\mathbb{1}(h(x)\ne h'(x))$ and $h,h'$ disagree on at most one of the three inputs, $|R(h)-R(h')|\le\frac13$.

**1.4 — False.** $R(h)=P_{x\sim\mathcal{D}_{\mathcal{X}}}(h(x)\ne f(x))$ is a fixed number once $(\mathcal{D},f,h)$ are fixed — unknown, but not random. What is random is $\widehat R_S(h)$ (through $S$), and $h_S$; the risk of a *fixed* hypothesis is not.

**1.5 — False.** Take $\mathcal{H}=\mathcal{H}_{\mathrm{all}}$ (which contains $f$), $m=1$, and $S=\{(1,f(1))\}$. Define $h_S(1)=f(1)$, $h_S(2)=1-f(2)$, $h_S(3)=f(3)$. Then $\widehat R_S(h_S)=0$ (its single training point is classified correctly), so $h_S$ is an ERM solution — the minimum over $\mathcal{H}_{\mathrm{all}}$ cannot be below $0$. Yet $h_S(2)=1-f(2)\ne f(2)$, so $h_S$ errs at the input $2$, and $R(h_S)\ge P(x=2)=\frac13>0$ under the uniform marginal. This is the finite miniature of the memorization construction of Chapter 2. What *does* hold: $f\in\mathcal{H}$ gives $\min_{h\in\mathcal{H}}\widehat R_S(h)=0$ for every $S$ and $R(f)=0$; upgrading this to $R(h_S)\approx0$ for the ERM output requires further conditions — how large $m$ must be before the empirical risk faithfully proxies the true risk is exactly what Chapter 6 quantifies.

## Question 2

**2.1 — True.** $\widehat R_S(h_0)$ is the fraction of $1$-labels and $\widehat R_S(h_1)$ the fraction of $0$-labels; $R(h_0)=q$ and $R(h_1)=1-q$. Both sums are $1$. ERM over this class is the majority vote.

**2.2 — True.** For $y,y'\in\{0,1\}$, $(y-y')^2=\mathbb{1}(y\ne y')$ — the two losses are the *same function* on $\{0,1\}\times\{0,1\}$, so every $\widehat R_S$ and every argmin coincide. (The identity uses that predictions take values in $\mathcal{Y}$; with real-valued predictions the two losses differ.)

**2.3 — False.** Let $f=\mathbb{1}(x<\frac1{40})$, so $q=\frac1{40}$, and let $S$ contain one point with label $1$ and one with label $0$. Then $\widehat R_S(h_0)=\widehat R_S(h_1)=\frac12$ — an empirical tie, both are ERM solutions — while $R(h_0)=\frac1{40}$ and $R(h_1)=\frac{39}{40}$. An empirical tie carries no information about a tie in true risk.

**2.4 — True.** The best constant errs exactly on the minority label, so the minimum empirical risk is the minority frequency $\min\big(\widehat R_S(h_0),\widehat R_S(h_1)\big)$ (equal to both at an empirical tie), and the best true risk is $\min(q,1-q)$, attained by the constant matching the more probable label — the majority vote. Note $\min(q,1-q)\le\frac12$ always, with equality only at $q=\frac12$.

**2.5 — False.** Take $q=\frac{39}{40}$, so $h_1$ is the majority constant with $R(h_1)=\frac1{40}$, while $R(h_0)=\frac{39}{40}>\frac12$. The event that a single draw carries label $0$ has probability $\frac1{40}>0$; on the sample $S=\{(x,0)\}$, $\widehat R_S(h_0)=0<1=\widehat R_S(h_1)$, so $h_0$ is the *unique* ERM output — and its true risk is $\frac{39}{40}$: ERM has returned the *worst* hypothesis in the class. ERM minimizes what the sample measures, and a small sample can misrepresent the chances badly; quantifying how badly, and how $m$ must grow to control it, is exactly what Chapter 6 takes up.

## Question 3

**3.1 — True.** Setting $w_{M+1}=0$ exhibits every element of $\mathcal{H}_M$ as an element of $\mathcal{H}_{M+1}$; a minimum over a larger set cannot increase.

**3.2 — False.** Training inputs $0$ and $\frac12$ with labels $0$ and $1$ (a valid realization: $f$ vanishes at both — $f(0)=f(\frac12)=\sin\pi=0$ — so $\varepsilon=(0,1)$); test point $(\frac38,0)$ (there $f(\frac38)=\frac{\sqrt2}{2}$, so $\tilde\varepsilon=-\frac{\sqrt2}{2}$). For $M=0$, the constants are $h\equiv c$, and completing the square gives $\widehat R(c)=\frac{(c-0)^2+(c-1)^2}{2}=(c-\frac12)^2+\frac14$, minimized at the mean $c=\frac12$ with training error $\frac14$. For $M=1$, the fit is the unique straight line through both training points — the degree-$1$ polynomial $w_0+w_1x$ with $w_0=0$ (from $h(0)=0$) and $w_1=\frac{1-0}{\frac12-0}=2$ (slope: rise $1$ over run $\frac12$, from $h(\frac12)=1$) — i.e. $h^{(1)}(x)=2x$, which attains training error $0$, the best a sum of squares can do. Test errors: the $M=0$ fit predicts $\frac12$ at $\frac38$, error $(0-\frac12)^2=\frac14$; the $M=1$ fit predicts $2\cdot\frac38=\frac34$, error $(0-\frac34)^2=\frac9{16}$ — the test error *increased* with the degree, while the training error decreased ($\frac14\to0$). This is the chapter's U-shaped test curve in a single example: the added capacity is spent fitting the noise.

**3.3 — True.** Apply the given fact with $v_i:=y_i$: since $M\ge m-1$, the interpolating polynomial lies in $\mathcal{H}_M$, attains $\widehat R_{S_{train}}(h)=0$, and a sum of squares cannot be negative, so the minimum is exactly $0$ — no matter how the labels were generated: the class memorizes *any* labeling, pure noise included.

**3.4 — True.** Uniqueness for $m\ge M+1$: suppose distinct $h,h'\in\mathcal{H}_M$ both minimize. Their difference $v:=h-h'$ is a nonzero polynomial of degree at most $M$, and a nonzero polynomial of degree at most $M$ has at most $M$ zeros (each zero $z$ contributes a factor $(x-z)$, and more than $M$ such factors would exceed the degree) — but there are $m\ge M+1$ distinct training inputs, so $v(x_{i_0})\ne0$ at some $x_{i_0}$. The midpoint hypothesis $\bar h:=\frac{h+h'}2$ lies in $\mathcal{H}_M$, and the pointwise inequality $\big(\frac{a+b}2-c\big)^2\le\frac{(a-c)^2+(b-c)^2}2$ — strict when $a\ne b$, proved by expanding both sides — gives $\widehat R_{S_{train}}(\bar h)\le\min$, with a *strict* improvement at $x_{i_0}$, where the two hypotheses predict differently. Contradiction; hence $h,h'$ agree at all $m\ge M+1$ inputs, and a polynomial with more zeros than its degree is identically zero, so $h=h'$ on all of $\mathcal{X}$. Non-uniqueness for $m\le M$: take any labels and let $h\in\mathcal{H}_M$ be the polynomial of degree at most $m-1\le M$ passing through all training points supplied by the given fact (error $0$); then $h':=h+c\prod_{i=1}^m(x-x_i)$ with $c\ne0$ is still a polynomial of degree $\le M$ (since $m\le M$), it passes through the very same training points (the product $\prod$ vanishes at each $x_i$), so it too has error $0$, yet $h'\ne h$. Two distinct minimizers.

**3.5 — False.** $M=0$ (the constants $h\equiv c$), training inputs $0$ and $\frac12$ with labels $1000$ and $-1000$ (i.e. $\varepsilon=(1000,-1000)$; both are admissible noise values since $f$ vanishes at both inputs), test point $(\frac14,0)$ (there $f(\frac14)=1$, so $\varepsilon=-1$). Completing the square, $\widehat R(c)=\frac{(c-1000)^2+(c+1000)^2}{2}=c^2+10^6$, minimized at the mean $\bar y=0$ with training error $10^6\ge B$ for $B=10^6$; the fit predicts $0$ at the test input, giving test error $(0-0)^2=0<B$. Training and test error are correlated in practice — underfitting means both high, overfitting means the first low and the second high — but no logical implication runs from one to the other: here the large training error is an artifact of the training noise realization, while the fit happens to generalize.

## Question 4

**4.1 — True.** $t\mapsto\sqrt t$ is strictly increasing on $[0,\infty)$, so it preserves orderings and argmin sets; the RMSE merely re-expresses the squared-loss risk on the scale of the labels.

**4.2 — False.** Take $S'$ to be the two training points $(0,0)$ and $(\frac12,2)$ (valid: $f$ vanishes at both inputs, so the labels are noise realizations) and $\mathcal{H}$ the class of constant functions $x\mapsto c$. For the absolute loss, $\widehat R^{\mathrm{abs}}_{S'}(c)=\frac{|c-0|+|c-2|}{2}$, which equals $1$ for every $c\in[0,2]$ (the two distances to $0$ and $2$ add up to $2$ exactly when $c$ lies between them) and is strictly larger outside, so every $c\in[0,2]$ — in particular $c=0$ — minimizes. For the squared loss, completing the square gives $\widehat R^{\mathrm{sq}}_{S'}(c)=\frac{c^2+(c-2)^2}{2}=(c-1)^2+1$, minimized uniquely at $c=1$: the absolute-loss minimizer $c=0$ has $\widehat R^{\mathrm{sq}}_{S'}(0)=2>1$. The two losses rank hypotheses differently because they charge differently for one large error versus two medium ones. (The converse inclusion fails as well; and for *binary* labels the two losses coincide — on $\{0,1\}\times\{0,1\}$, $(y-y')^2=\mathbb{1}(y\ne y')$.)

**4.3 — True.** $\mathbb{1}(y\ne y')$, $|y-y'|$, and $(y-y')^2$ are each invariant under swapping the two arguments; the sum defining $\widehat R^{\ell}_{S'}(h)$ is therefore unchanged. (For asymmetric losses — e.g. unequal costs of false positives and false negatives — the true-label-first convention is load-bearing.)

**4.4 — True.** Splitting the pooled sum over its two groups of terms,
$$\widehat R^{\mathrm{sq}}_{S}(h)=\frac1{n}\sum_{i=1}^m (y_i-h(x_i))^2+\frac1{n}\sum_{j=1}^k(\tilde y_j-h(\tilde x_j))^2=\frac{m}{n}\,\widehat R^{\mathrm{sq}}_{S_{train}}(h)+\frac{k}{n}\,\widehat R^{\mathrm{sq}}_{S_{test}}(h).$$
No probabilistic assumption is used — only arithmetic. The identity also shows why the split discipline matters: for the learned hypothesis $h_{S_{train}}$ the training term was *minimized by construction*, so any average that includes it (the pooled error, a fortiori the training error) is not an honest measurement of $R(h_{S_{train}})$; only the test term, computed on data that played no role in learning, is.

**4.5 — False.** Take $\mathcal{H}$ to be the constants $x\mapsto c$, training points $(0,0)$ and $(\frac12,0)$ (noise $0,0$), test point $(\frac34,1)$ (there $f(\frac34)=-1$, so the noise is $2$ — an arbitrary real, as permitted). A constant has zero training risk iff it equals both training labels, i.e. $c=0$; zero test risk iff $c=1$; no single $c$ does both. The premise holds ($h\equiv0$ and $h'\equiv1$ witness the two zeros), the conclusion fails. For the class of *all* functions $\mathcal{X}\to\mathbb{R}$ the statement would be true — the training and test input sets are disjoint, so $h$ and $h'$ can be glued into one function that agrees with $h$ on the training inputs and with $h'$ on the test inputs — which is precisely the memorization mechanism of Chapter 2; restricted classes lose this ability, and that loss is the point of restricting.
