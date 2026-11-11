# Answer Key — Exercise 3

*(Companion to `exercise3.md`, to be kept away from the version handed to students.)*

| | .1 | .2 | .3 | .4 | .5 |
|---|---|---|---|---|---|
| **Q1** | True | True | True | True | True |
| **Q2** | True | True | True | True | False |
| **Q3** | True | True | True | True | True |
| **Q4** | True | True | True | True | True |

## Question 1

**1.1 — True.** $g$ is strictly increasing with $g(0)=\frac12$, so $P_i\ge\frac12\iff w^\top x_i\ge0$; the two rules label every input identically. This is why the score's *sign* carries the prediction and its *magnitude* the confidence.

**1.2 — True.** At $P_i\equiv c$, a point of class $1$ contributes $-\log c$ and a point of class $0$ contributes $-\log(1-c)$, so each positive–negative pair contributes $-\log c-\log(1-c)$, i.e. $\log2$ per point on average when the set is evenly split. The pair contribution $-\log c-\log(1-c)$ is minimized at $c=\frac12$: on $(0,\frac12)$ both $-\log c$ and $-\log(1-c)$ strictly decrease as $c$ rises toward $\frac12$, and on $(\frac12,1)$ both strictly increase — its value at $c=\frac12$ is $-\log\frac12-\log\frac12=2\log2$, i.e. $\log2$ per point. Any other constant $c\in(0,1)$ makes one of the two classes' contributions strictly larger than $\log2$, and on an evenly split set the total strictly increases. So among constant assignments, $c=\frac12$ — the uninformative prediction — is the best the model can do without fitting signal.

**1.3 — True.** Rescaling sends the score to $c\,w^\top x$: at inputs with $w^\top x=0$ the score stays $0$ and $P_i$ stays $\frac12$; at inputs with $w^\top x\ne0$ the score moves, and strict monotonicity of $g$ makes $g(c\,w^\top x)\ne g(w^\top x)$ whenever $c\ne1$. Scaling the weights rescales confidence, not the decision.

**1.4 — True.** $-\log$ is decreasing, so $-\log P_i\to0$ as $P_i\to1$ and $-\log P_i\to\infty$ as $P_i\to0$; the threshold $\log2$ sits exactly at $P_i=\frac12$. Being confidently wrong costs without bound; being confidently right saves at most $\log2$ — the asymmetry that makes cross-entropy punish mistakes hard.

**1.5 — True.** $g(u)\in(0,1)$ for every finite $u$ since $e^{-u}>0$ always. A training loss of $0$ would need some point's contribution $-\log P_i$ or $-\log(1-P_i)$ to vanish, i.e. a boundary probability — unreachable at finite weights. (The loss can be driven *arbitrarily close* to $0$ by growing the weights, but never equals $0$.)

## Question 2

**2.1 — True.** Every $e^{u_c}>0$ and the denominator strictly exceeds each numerator; the ratios sum to $1$ because numerator and denominator share the terms.

**2.2 — True.** Dividing numerator and denominator by $e^{u_1}$: $\frac{e^{u_1}}{e^{u_1}+e^{u_2}}=\frac{1}{1+e^{-(u_1-u_2)}}=g(u_1-u_2)$; the class-$2$ probability is $1-g(u_1-u_2)=g(u_2-u_1)$ by the same algebra. Only the logit *difference* matters in the two-class case.

**2.3 — True.** $e^{u_c+t}=e^te^{u_c}$: the common factor $e^t$ cancels in every ratio, so every coordinate of the softmax — and with it the loss — is unchanged; the logits' order, and hence the argmax, is preserved by adding a constant. This is the shift invariance that makes the softmax well behaved under rescaling of all weights.

**2.4 — True.** Dividing the two probabilities, the common denominator cancels: $\frac{\mathrm{softmax}(u)_c}{\mathrm{softmax}(u)_{c'}}=\frac{e^{u_c}}{e^{u_{c'}}}$, and $u\mapsto e^u$ is strictly increasing, so the order of the probabilities is the order of the logits. For the second half, take $u=(100,0)$: the two exponentials are $e^{100}$ and $e^0=1$, and $e^{100}$ is astronomically larger than $1$, so the second class's probability is $\frac{1}{e^{100}+1}<\frac1C$ for any $C$ — one dominant logit starves the others, so no lower bound of $\frac1C$ holds per class.

**2.5 — False.** The loss is a sum of terms $-\log\mathrm{softmax}(u_i)_{y_i}$, and every softmax coordinate lies strictly inside $(0,1)$ — a sum of strictly positive terms cannot equal $0$. It can be made arbitrarily small by enlarging the logit gap of the correct class, but never exactly $0$; contrast the zero-one loss, which does attain $0$.

## Question 3

**3.1 — True.** $TP\le TP+FP$ and $TP\le TP+FN$ give both ratios at most $1$ (and trivially at least $0$); recall $=1$ iff $FN=0$, i.e. every actual positive is classified positive — recall is the positive class's own accuracy.

**3.2 — True.** The harmonic mean of two numbers in $[0,1]$ equals $1$ only when both equal $1$. To see it, subtract: $\ (p+r)-2pr=p(1-r)+r(1-p)$, a sum of two products of non-negative factors, hence $\ge0$ — with equality iff both products vanish, which for $p,r\le1$ happens only at $p=r=1$ (if $p<1$ then $r(1-p)>0$ unless $r=0$, and $p=0,r=1$ gives $p(1-r)=0$ but $r(1-p)=1$). So $\mathrm{F1}=1$ forces precision $=1$ and recall $=1$: $TP=TP+FP$ (no false positives) and $TP=TP+FN$ (no false negatives). Every positive is a TP, and since no negative is classified positive, every negative is a TN — all four counts outside $TP$ are zero, so accuracy $\frac{TP+TN}{TP+FP+TN+FN}=1$.

**3.3 — True.** All $9990$ negatives are TN, the $10$ positives are FN: accuracy $\frac{9990}{10000}=0.999$, recall $\frac{0}{10}=0$. A hopeless classifier scores $99.9\%$ accuracy on an imbalanced set — the chapter's remark that accuracy is meaningful only on balanced classes, made concrete.

**3.4 — True.** If some threshold gives TPR $=1$ and FPR $=0$, the curve attains the corner $(0,1)$, and since TPR and FPR are non-decreasing along the sweep (lowering the threshold only ever adds predictions, never removes any), the curve is confined to the two edges meeting at that corner — from $(0,0)$ up to $(0,1)$, then across to $(1,1)$ — enclosing the full unit square: area $1$. Conversely, if no threshold separates the classes, then at every threshold either some positive is still missed (TPR $<1$) or some negative is already included (FPR $>0$), and the curve passes through at least one strictly interior point; the area under a curve from $(0,0)$ to $(1,1)$ that dips strictly below the top edge at some FPR $>0$ is strictly less than $1$. (Ties among scores are immaterial here: a tied positive-negative pair enters together, which also produces an interior point.)

**3.5 — True.** With a constant score $s$, every threshold yields the same confusion counts: a threshold above $s$ classifies *everything* negative (TPR $=$ FPR $=0$), a threshold at or below $s$ classifies *everything* positive (TPR $=$ FPR $=1$) — TPR and FPR always move together, so every point of the curve lies on the diagonal TPR $=$ FPR. The area under the diagonal from $(0,0)$ to $(1,1)$ is the triangle with base $1$ and height $1$: exactly $\frac12$. The converse fails: on two positives and two negatives with scores (negative $0.9$, positive $0.8$, positive $0.7$, negative $0.3$), sweeping the threshold downward admits the points in that order — the first negative moves the curve to $(\frac12,0)$, the two positives to $(\frac12,1)$, the last negative to $(1,1)$ — enclosing the same area $\frac12$ as the diagonal, though the scores vary.

## Question 4

**4.1 — True.** Each round holds out exactly one fold; each fold is held out exactly once. A point is in the training set of every round except its own — $K-1$ times.

**4.2 — True.** With $K=n$, each fold is a single point; the training set is the rest of the data set, and the held-out point is not in it. Leave-one-out maximizes training-set size per round at the price of $n$ trainings.

**4.3 — True.** By M1 of the metric, $\mathrm{dist}(x_i,x_i)=0$, and by non-negativity no other training point is closer — with all training inputs pairwise distinct, $x_i$ is the *unique* nearest training point to itself. Its own label therefore wins the $k=1$ vote. Whatever the labels — pure noise included — the training error is $0$.

**4.4 — True.** Take $k=2$, two training points carrying different labels, and the query placed exactly at the midpoint between them: both training points are at the *same* distance from the query (equidistant), so both belong to the $2$-nearest-neighbor set, and the vote is one per label — tied — and the fixed rule decides. Even $k$ genuinely needs a tie rule; odd $k$ with $C=2$ never has a tied vote (a vote of $k$ binary labels cannot split evenly when $k$ is odd).

**4.5 — True.** Training inputs $0$ (label A), $1$ and $1.1$ (label B), and $100$ (label A), under any metric agreeing with the usual distance on these numbers (e.g. the Euclidean distance on $\mathcal{X}=\mathbb{R}$). At the query $x=0$: the three nearest neighbors are $0$ itself (A), $1$ (B), and $1.1$ (B) — the distances are $0$, $1$, and $1.1$, all smaller than the distance $100$ to the last training point — so the vote is $2$ against $1$ and the $3$-NN prediction at the training point $x=0$ is B, a misclassification. The same happens at $x=100$ (neighbors $100$, $1.1$, $1$: again B against A). Smoothing over neighbors trades training fit for stability — the bias-variance dial of kNN, and the reason $k$ is a hyperparameter to be tuned by cross validation, not set to $1$.
