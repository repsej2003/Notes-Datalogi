# Answer Key — Exercise 5

*(Companion to `exercise5.md`, to be kept away from the version handed to students.)*

|        | .1    | .2   | .3    | .4    | .5    |
| ------ | ----- | ---- | ----- | ----- | ----- |
| **Q1** | True  | True | True  | False | False |
| **Q2** | False | True | True  | False | False |
| **Q3** | True  | True | False | True  | False |
| **Q4** | True  | True | True  | False | False |

## Question 1

**1.1 — True.** Let $h^*\in\arg\min_{h\in\mathcal{H}}R(h)$ and let $h_{\mathrm{ERM}}$ minimize $\widehat R_S$. On the stated event, the bound holds simultaneously for both, so
$$R(h_{\mathrm{ERM}})\le\widehat R_S(h_{\mathrm{ERM}})+\epsilon\le\widehat R_S(h^*)+\epsilon\le R(h^*)+2\epsilon,$$
where the middle inequality uses the defining property of ERM and the last uses the bound for $h^*$. With $\epsilon=\sqrt{(\log N+\log(1/\delta))/(2m)}$ this is the displayed oracle inequality. The point is that uniformity over $\mathcal{H}$ is exactly what allows the empirical-risk comparison to be transferred to the true risks; the approximation error $\min_{h\in\mathcal{H}}R(h)-R^*_{\mathcal{D}}$ is not controlled and remains as a separate term.

**1.2 — True.** Apply the one-sided bound with failure probability $\delta/2$ to the loss class and to the complementary loss class $1-\ell$. The union bound over the two tails gives
$$P\big(\exists h\in\mathcal{H}:\ |R(h)-\widehat R_S(h)|>\epsilon\big)\le \frac{\delta}{2}+\frac{\delta}{2}=\delta.$$
The one-sided sample size at confidence $\delta/2$ is $m_2=(\log N+\log(2/\delta))/(2\epsilon^2)$, while the one-sided sample size at confidence $\delta$ is $m_1=(\log N+\log(1/\delta))/(2\epsilon^2)$. Their difference is
$$m_2-m_1=\frac{\log2}{2\epsilon^2},$$
independent of $N$ and $\delta$. Controlling both tails therefore costs an additive constant in the sample size, not a multiplicative factor.

**1.3 — True.** Write the deviation as
$$\epsilon_m=\sqrt{\frac{\log N+\log(1/\delta)}{2m}}.$$
Replacing $m$ by $4m$ gives $\epsilon_{4m}=\epsilon_m/2$: the numerator is unchanged and the denominator is multiplied by $2$. The exponent in the Hoeffding bound is linear in $m$ and quadratic in $\epsilon$, which is exactly the arithmetic behind this scaling.

**1.4 — False.** The bound is proved for a class fixed before the sample is drawn; the union bound runs over hypotheses chosen in advance. If the class is selected after inspecting $S$, the event "the bound holds" is no longer the complement of a union of $N$ fixed bad events. A concrete failure: let $\mathcal{X}$ be infinite, let $\mathcal{D}$ have a non-atomic marginal and deterministic labels $y=f(x)$, and after observing $S$ set $\mathcal{H}:=\{h_S\}$ with $h_S(x)=f(x)$ on $\{x_1,\ldots,x_m\}$ and $h_S(x)=1-f(x)$ off this finite set. Then $N=1$, $\widehat R_S(h_S)=0$, and $R(h_S)=1$, while the displayed bound asserts $R(h_S)\le\sqrt{\log(1/\delta)/(2m)}<1$ for large $m$ with probability one. Cardinality alone does not protect against a data-dependent choice.

**1.5 — False.** Uniform convergence compares $R(h)$ with $\widehat R_S(h)$ for the same $h$; it never involves $R^*_{\mathcal{D}}$, which is a property of $\mathcal{D}$ alone. The bound controls the estimation error, not the approximation error. For a minimal illustration, take $\mathcal{X}=\{0\}$ and $\mathcal{H}=\{h_0\}$ with $h_0\equiv0$. Under $\mathcal{D}_1$ with $y=0$ almost surely, $R^*_{\mathcal{D}_1}=0$, $R(h_0)=0$, and $\epsilon_{app}=0$. Under $\mathcal{D}_2$ with $y=1$ almost surely, $R^*_{\mathcal{D}_2}=0$, $R(h_0)=1$, and $\epsilon_{app}=1$. The displayed bound is respectively $0\le\sqrt{\log(1/\delta)/(2m)}$ and $1\le1+\sqrt{\log(1/\delta)/(2m)}$; in the second case it is vacuous as a bound on $\epsilon_{app}$, and no choice of the right-hand side that tends to $0$ with $m$ can cover it. The point is algebraic: a uniform bound on $R(h)-\widehat R_S(h)$ constrains only the estimation error and says nothing about how far the best hypothesis in $\mathcal{H}$ is from the Bayes predictor.

## Question 2

**2.1 — False.** Take $\mathcal{H}$ to be the class of all dichotomies on a fixed set of $d\ge2$ points. This class is finite, with $|\mathcal{H}|=2^d$, and $d_{VC}(\mathcal{H})=d$. Theorem 6.4.7 gives the lower bound
$$m_{\mathrm{agn}}(\epsilon,\delta)\ge C_1\frac{d+\log(1/\delta)}{\epsilon^2}$$
and the upper bound
$$m_{\mathrm{PAC}}(\epsilon,\delta)\le C_2\frac{d\log(1/\epsilon)+\log(1/\delta)}{\epsilon}.$$
Hence
$$\frac{m_{\mathrm{agn}}(\epsilon,\delta)}{m_{\mathrm{PAC}}(\epsilon,\delta)}\ge\frac{C_1}{C_2}\cdot\frac{d+\log(1/\delta)}{\epsilon\big(d\log(1/\epsilon)+\log(1/\delta)\big)},$$
which diverges as $\epsilon\to0$ for fixed $d$ and $\delta$. No constant factor independent of $\epsilon$ can relate the two sample complexities. The different exponents reflect the different tasks: the realizable case only needs to rule out hypotheses with $R(h)\ge\epsilon$ that happen to have zero empirical risk, which decays like $e^{-\epsilon m}$, whereas the agnostic case must estimate every risk to accuracy $\epsilon$, which decays like $e^{-2\epsilon^2m}$. The divergence is therefore at least of order $1/(\epsilon\log(1/\epsilon))$, not a constant.

**2.2 — True.** By the Fundamental Theorem, PAC learnability of $\mathcal{H}$ implies that $d_{VC}(\mathcal{H})$ is finite. The same theorem then gives uniform convergence: there is $m^{\mathrm{UC}}_{\mathcal{H}}(\epsilon/2,\delta)$ such that, with probability at least $1-\delta$, $|R(h)-\widehat R_S(h)|\le\epsilon/2$ for every $h\in\mathcal{H}$. Let $h_S$ be any ERM and let $h^*\in\arg\min_{h\in\mathcal{H}}R(h)$. On this event,
$$R(h_S)\le\widehat R_S(h_S)+\frac{\epsilon}{2}\le\widehat R_S(h^*)+\frac{\epsilon}{2}\le R(h^*)+\epsilon,$$
where the middle inequality uses the defining property of ERM. Thus $h_S$ satisfies the agnostic PAC guarantee with accuracy $\epsilon$ and confidence $1-\delta$. The argument uses only uniformity over $\mathcal{H}$ and the empirical optimality of $h_S$; it does not depend on how ties are broken, so every ERM qualifies. PAC learnability enters only through its finite-VC characterization; the rest is the ERM oracle inequality.

**2.3 — True.** Write $M(N):=\left\lceil 2\log(2N/\delta)/\epsilon^2\right\rceil$ and set $A:=2\log N/\epsilon^2$, $B:=2\log(2/\delta)/\epsilon^2$, so that $M(N)=\lceil A+B\rceil$ and $M(N^2)=\lceil 2A+B\rceil$. Let $k:=M(N)$. Since $B>0$, we have $A<A+B\le k$, hence
$$2A+B=(A+B)+A\le k+A<2k.$$
Therefore $M(N^2)=\lceil2A+B\rceil\le2k=2M(N)$. Squaring the class size therefore at most doubles the sample-complexity bound. The reason is that the class enters only through $\log|\mathcal{H}|$: an exponential increase in the number of hypotheses is absorbed by a linear increase in the logarithmic factor, and hence by a constant-factor increase in the sample size. This is the quantitative content of the finite-class bound's usefulness.

**2.4 — False.** Countability is not sufficient. Take $\mathcal{X}=\mathbb{N}$ and let $\mathcal{H}$ be the class of indicators of **finite** subsets:
$$\mathcal{H}:=\{x\mapsto\mathbb{1}(x\in A)\ :\ A\subseteq\mathbb{N},\ |A|<\infty\}.$$
This class is countable, since the finite subsets of a countable set are countable. For any finite $S\subseteq\mathbb{N}$ and any labeling $B\subseteq S$, the set $B$ is finite, so $h_B\in\mathcal{H}$ realizes that labeling. Hence $\mathcal{H}$ shatters every finite set, $d_{VC}(\mathcal{H})=\infty$, and Theorem 6.4.6 says that $\mathcal{H}$ is not PAC learnable. Countability controls the number of hypotheses but not the number of distinct behaviors on a sample.

**2.5 — False.** Agnostic PAC learning competes with the best hypothesis **inside** $\mathcal{H}$, not with the Bayes predictor. Let $\mathcal{X}=\{0\}$, let $\mathcal{H}=\{h_0\}$ with $h_0\equiv0$, and let $\mathcal{D}$ satisfy $P(y=1)=0.9$. Then $R^*_{\mathcal{D}}=0.1$ while $\min_{h\in\mathcal{H}}R(h)=R(h_0)=0.9$. Nevertheless $\mathcal{H}$ is agnostic PAC learnable: the algorithm that always returns $h_0$ satisfies $R(A(S))=0.9=\min_{h\in\mathcal{H}}R(h)$, so the guarantee $R(A(S))\le\min_{h\in\mathcal{H}}R(h)+\epsilon$ holds deterministically for every $\epsilon>0$ and every $m$. The gap $0.9-0.1$ is the approximation error of $\mathcal{H}$, which agnostic PAC learnability does not require to vanish.

## Question 3

**3.1 — True.** Write $\bar y:=\frac1m\sum_i y_i$ and $\widehat b=\frac{\sum_i(x_i-\bar x)y_i}{S_{xx}}$, so that $h_S(x)=\bar y+\widehat b(x-\bar x)$. Since the design is fixed and $y_i=f^*(x_i)+\epsilon_i$, only the noise contributes to the variance. With $\bar\epsilon:=\frac1m\sum_i\epsilon_i$,
$$\mathrm{Var}_S[h_S(x)]=\mathrm{Var}\Big(\bar\epsilon+(x-\bar x)\frac{\sum_i(x_i-\bar x)\epsilon_i}{S_{xx}}\Big).$$
The first term has variance $\sigma^2/m$; the second has variance
$$\frac{(x-\bar x)^2}{S_{xx}^2}\sum_i(x_i-\bar x)^2\sigma^2=\frac{\sigma^2(x-\bar x)^2}{S_{xx}};$$
and their covariance is
$$\frac1m\sum_i\frac{(x_i-\bar x)\sigma^2}{S_{xx}}=0$$
because $\sum_i(x_i-\bar x)=0$. Adding the two variances gives the formula. The factor $\frac1m+\frac{(x-\bar x)^2}{S_{xx}}$ measures how far the test point lies from the average $\bar x$ of the design points; it is smallest at $x=\bar x$ and grows quadratically with that distance.

**3.2 — True.** If $f^*(x)=\alpha+\beta x$, then
$$\mathbb{E}[\widehat b]=\frac{\sum_i(x_i-\bar x)(\alpha+\beta x_i)}{S_{xx}}=\beta,\qquad \mathbb{E}[\widehat a]=\mathbb{E}[\bar y]-\mathbb{E}[\widehat b]\,\bar x=(\alpha+\beta\bar x)-\beta\bar x=\alpha.$$
Hence $g(x)=\alpha+\beta x=f^*(x)$ for every $x$, and the bias term vanishes. Substituting $\mathrm{Var}_S[h_S(x)]=\sigma^2\big(\frac1m+\frac{(x-\bar x)^2}{S_{xx}}\big)$ into the given decomposition gives the displayed expression.

**3.3 — False.** The bound fails when the test point lies outside the design range, where the slope must be extrapolated. Take $m=2$, $x_1=-1$, $x_2=1$, so that $\bar x=0$ and $S_{xx}=2$, and evaluate at $x=2$. Then the least-squares variance formula gives
$$\mathrm{Var}_S[h_S(2)]=\sigma^2\Big(\frac12+\frac{(2-0)^2}{2}\Big)=\frac52\sigma^2>\sigma^2.$$
Averaging the labels does reduce the noise contribution to $\sigma^2/m$, but estimating the slope adds the term $\sigma^2(x-\bar x)^2/S_{xx}$, which grows without bound as $|x-\bar x|$ grows. The claim confuses averaging independent labels with estimating a trend.

**3.4 — True.** At $x=\bar x$, the least-squares variance formula gives $\mathrm{Var}_S[h_S(\bar x)]=\sigma^2/m$. The $k$-nearest-neighbours regressor with $k=m$ uses all training points as neighbours for every test point, so $h_S(x)=\bar y$ and $\mathrm{Var}_S[h_S(x)]=\sigma^2/m$ at every $x$. For $x\ne\bar x$, it gives a strictly larger value because $(x-\bar x)^2/S_{xx}>0$. The additional variance comes from estimating the slope, which is what allows the line to follow the trend of $f^*$; a constant predictor avoids that term but incurs a bias whenever $f^*$ is not constant.

**3.5 — False.** The design is symmetric about the origin, so $\bar x=0$ and $\widehat b=\sum_i x_i y_i/\sum_i x_i^2$. For the noiseless values $f^*(x_i)=x_i^2$ the numerator is $\sum_i x_i^3=0$, hence $\mathbb{E}[\widehat b]=0$ and
$$\mathbb{E}[\widehat a]=\mathbb{E}[\bar y]=\frac1m\sum_{i=1}^m x_i^2.$$
At $x=0$,
$$g(0)=\mathbb{E}[\widehat a]=\frac1m\sum_{i=1}^m x_i^2\;\longrightarrow\;\frac12\int_{-1}^{1}x^2\,dx=\frac13,$$
while $f^*(0)=0$. Therefore $\mathrm{Bias}^2(0)\to\frac19\ne0$. The least-squares line does converge to the best linear approximation of $f^*$ on $[-1,1]$, but that approximation is the constant $1/3$, not $x^2$: the bias is the approximation error of the linear class, and it persists however large $m$ grows. For $m=2$ the same computation gives the constant line $h_S\equiv1$ and $\mathrm{Bias}^2(0)=1$.

## Question 4

**4.1 — True.** A polynomial of degree at most $k$ is also of degree at most $k+1$, so $\mathcal{H}_k\subseteq\mathcal{H}_{k+1}$. The given fact $d_{VC}(\mathcal{H}_k)=k+1$ then implies that for every $n\ge1$, the class $\mathcal{H}_n$ shatters some set of $n+1$ points; any $n$-point subset of that set is also shattered, by the same hypotheses. That subset is shattered by $\mathcal{H}_\infty$, which contains $\mathcal{H}_n$. Hence $\mathcal{H}_\infty$ shatters a set of every finite cardinality, and $d_{VC}(\mathcal{H}_\infty)=\infty$.

**4.2 — True.** $\mathcal{H}_\infty$ contains every $\mathcal{H}_k$, so it shatters a set of every finite cardinality and has infinite VC dimension. Theorem 6.4.6 states that a class with $d_{VC}=\infty$ is not PAC learnable; equivalently, by the Fundamental Theorem 6.4.7, it is not agnostic PAC learnable and does not have the uniform convergence property. The intuition is the No Free Lunch mechanism: for every $m$, $\mathcal{H}_\infty$ can shatter a set of $2m$ points, so no algorithm can identify the labeling from $m$ examples.

**4.3 — True.** $\mathcal{H}_\infty=\bigcup_{k\ge1}\mathcal{H}_k$ is a countable union of classes each of finite VC dimension. By Theorem 6.4.7, each $\mathcal{H}_k$ has the uniform convergence property, so Theorem 6.4.11 applies with any summable weight function, for instance $w(k)=6/(\pi^2k^2)$; the SRM rule
$$h_{SRM}\in\arg\min_{h\in\mathcal{H}_\infty}\Big\{\widehat R_S(h)+\epsilon_{i(h)}\big(m,w(i(h))\delta\big)\Big\}$$
is therefore a nonuniform learner. Since $\mathcal{H}_\infty$ contains $\mathcal{H}_k$ for every $k$, it shatters a set of every finite cardinality, so $d_{VC}(\mathcal{H}_\infty)=\infty$. Hence a class can be nonuniformly learnable while failing the finite-VC characterization that the Fundamental Theorem gives for PAC learnability. Finite VC dimension is sufficient for nonuniform learnability, because PAC learnability implies it, but it is not necessary; nonuniformity is exactly the relaxation that admits this example. The sample size guaranteed by the theorem depends on the target hypothesis through the index $i(h)$ of the first subclass containing it.

**4.4 — False.** PAC learnability is not preserved by countable unions. The class $\mathcal{H}_\infty$ is precisely a counterexample: each $\mathcal{H}_k$ is PAC learnable because $d_{VC}(\mathcal{H}_k)=k+1<\infty$, but the union shatters a set of every finite cardinality and is therefore not PAC learnable by Theorem 6.4.6. The correct closure statement is weaker: a countable union of uniformly convergent classes is **nonuniformly** learnable, a strictly weaker guarantee. Nonuniform learnability was introduced to occupy exactly this gap.

**4.5 — False.** The maximum of a countable set of finite numbers need not be finite; it can grow without bound. In the SRM bound, the penalty $\epsilon_k(m,w(k)\delta)$ increases as $k\to\infty$ because the summable weights satisfy $w(k)\to0$, so for every fixed $m$ and $\epsilon$ there are subclasses $\mathcal{H}_k$ whose guarantee exceeds $\epsilon$. Taking a supremum over $k$ therefore gives infinity, not a finite sample complexity. Moreover, $\mathcal{H}_\infty$ shatters a set of every finite cardinality, so it has infinite VC dimension and, by the Fundamental Theorem, is not PAC learnable. Nonuniform learnability is strictly weaker than PAC learnability precisely because the sample complexity may depend on the target hypothesis.
