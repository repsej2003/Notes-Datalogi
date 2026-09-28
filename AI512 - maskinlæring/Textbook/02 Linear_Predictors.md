Assume we observe data that look as below.

```python
import matplotlib.pyplot as plt
import torch as th

th.manual_seed(0)  # fix the random draws so that the figures are reproducible

# This is the true data generating process.
# We do not have access to this information in a typical machine learning problem
inputs = th.linspace(-5, 5, 50, dtype=th.float64)
outputs = inputs * 0.5 + 3
labels = outputs + th.randn(inputs.shape[0], dtype=th.float64)

grid = th.linspace(-5, 5, 500, dtype=th.float64)
plt.plot(inputs, labels, 'bo')
plt.plot(grid, grid * 0.5 + 3, 'k-')
plt.xlabel("inputs (x)")
plt.ylabel("labels (y)")
plt.show()
```

![Synthetic data with a strong linear relationship between input and label, together with the underlying linear generating function.](fig/generated/02_Linear_Predictors_1.png)

Our visual inspection tells us that there is strong linear correlation between inputs and the outputs. Then let us choose our hypothesis set accordingly:

$$\mathcal{H} := \{h: h(x) = w_0 + w_1 x,~ (w_0,w_1) \in \mathbb{R}^2 \}.$$

Denoting $w := (w_0,w_1)$, we can re-express the hypothesis as $h(x) := w^\top x$, where $\top$ indicates a matrix transpose.

Assume we are given a training set $S=\{(x_i, y_i) : i \in [m]\}$. Its mean squared-error empirical risk for our chosen hypothesis $h$ is:

$$\widehat{R}_S(w) := \frac{1}{m} \sum_{i \in [m]} (w^\top x_i - y_i)^2.$$

Let us perform empirical risk minimization:

$$w_S := \arg \min_w \widehat{R}_S(w).$$

The squared error loss gets its minimum value at the point where its derivative is zero. Hence, we can find the solution at $w_S$ that satisfies $\nabla_w \widehat{R}_S(w) \vert_{w := w_S} = 0$, that is

$$
\begin{aligned}
\widehat{R}_S(w) &= \frac{1}{m} \sum_{i \in [m]} \Big (  w^\top x_i x_i^\top w - 2 w^\top x_i y_i + y_i^2\Big )\\
   \Rightarrow \nabla_w \widehat{R}_S(w) &= \frac{1}{m} \sum_{i \in [m]} \Big ( 2x_i x_i^\top w - 2 x_i y_i \Big ) \triangleq 0\\
   \Rightarrow & \sum_{i \in [m]} x_i x_i^\top w_S =  \sum_{i \in [m]} x_i y_i \\
      \Rightarrow &  w_S = \Bigg ( \sum_{i \in [m]} x_i x_i^\top \Bigg )^{-1} \sum_{i \in [m]} x_i y_i \\
\end{aligned}
$$

Fitting a linear model on data is often referred to as **least-squares regression** and $w_S$ the **least-squares solution**.

Denote each data point by a column vector $z_i := (x_i, 1)$. Expressing the linear model as $w^\top z_i$ and using the definition of the dot product we have

$$w^\top z_i = x_i w_1 + w_0$$

where the term $w_0$ is referred to as the **bias**. The bias gives the model the opportunity to shift the predictor to an appropriate position before fitting the line. As we will see later, this flexibility sometimes brings substantial improvement in model fit.

Let us collect all input samples into a $\mathbb{R}^{m \times 2}$ matrix that contains data points on its rows:

$$
\begin{aligned}
Z=\begin{bmatrix}
 z_1^\top\\
  \vdots\\
  z_m^\top
\end{bmatrix}
\end{aligned}
$$

Let us also collect the corresponding labels in a vector $y := (y_1, \ldots, y_m)$. We can re-express the least-squares solution in vector notation as follows

$$w_S :=  (Z^\top Z)^{-1} Z^\top y.$$

Let us implement it and solve the task.

```python
num_samples = inputs.shape[0]
num_train_samples = num_samples
idx = th.randperm(num_samples)
inputs_train = inputs[idx[:num_train_samples]]
labels_train = labels[idx[:num_train_samples]]

class LinearRegression:
    def extract_features(self, inputs):
        # Append a constant 1 to every input, so that w^T z = w_1 x + w_0
        ones = th.ones(inputs.shape[0], 1, dtype=inputs.dtype)
        return th.cat((inputs.unsqueeze(1), ones), dim=1)

    def learn(self, inputs, labels):
        Z = self.extract_features(inputs)
        # This is where the least-squares solution is implemented!
        # w_S = (Z^T Z)^{-1} Z^T y, obtained by solving the linear system
        # (Z^T Z) w = Z^T y, which is numerically safer than inverting Z^T Z
        self.weights = th.linalg.solve(Z.T @ Z, Z.T @ labels)

    def predict(self, inputs):
        return self.extract_features(inputs) @ self.weights

model = LinearRegression()

model.learn(inputs_train, labels_train)
predictions = model.predict(grid)

plt.plot(inputs, labels, 'bo')
plt.plot(grid, grid * 0.5 + 3, 'k-', label='true labeling function')
plt.plot(grid, predictions, 'r-', label='learned hypothesis')
plt.legend(loc="upper left")
plt.xlabel("inputs (x)")
plt.ylabel("labels (y)")
plt.show()
```

![The learned least-squares line together with the true labeling function and the training data.](fig/generated/02_Linear_Predictors_2.png)

# Metric spaces

We would like the vector spaces (such as feature spaces, parameters spaces etc.) used in machine learning to have some plausible properties. We can guarantee the existence of these properties by accompanying a continuous domain $\mathcal{X}$ with a distance function $dist: \mathcal{X} \times \mathcal{X} \rightarrow \mathbb{R}^+$ that is

1. **positive:**  $\forall a, a' \in \mathcal{X},~ a \neq a' \Rightarrow \mathrm{dist}(a,a') > 0$,
2. **zero on the diagonal:** $\forall a \in \mathcal{X},~ \mathrm{dist}(a,a) = 0$,
3. **symmetric:** $\forall a, a' \in \mathcal{X},~ \mathrm{dist}(a,a') = \mathrm{dist}(a',a)$.

We get these properties by assuming these vector spaces to be **metric spaces**, that is vector space that satisfies

 * $\forall a, b, c \in \mathcal{X},~ \mathrm{dist}(a,c) \leq \mathrm{dist}(a,b) + \mathrm{dist}(b,c)$, which is called the **triangle inequality**.

For $p \geq 1$, the $L_p$-norm of a vector $u \in \mathbb{R}^d$ is defined as follows

$$|| u ||_p := \Big ( \sum_{j=1}^d |u_j|^p \Big )^{1/p}.$$

If $p=2$, we get the well-known **Euclidean norm**.

If $p=1$, we get the **Manhattan norm**.

As $p \rightarrow \infty$, we tend to get the **Maximum norm** ($L_\infty$), i.e. $||u||_\infty := \max \{|u_1|, \ldots, |u_d|\}$.

We can use this norm to derive many nice metric spaces

$$\mathrm{dist}(a,b) := ||a-b||_p.$$

For $0 < p < 1$ the same expression is still well defined and still traces the iso-contours plotted below, but it is no longer a norm: it violates the triangle inequality.

Let us plot the behavior of these distances as a function of $p$. The red lines below are iso-contours of $||u||_p=1$ for $u = (a_1,a_2)$ and different choices of $p$. The unit ball shrinks as $p$ decreases: a small $p$ charges a vector heavily for spreading its mass over many coordinates, so it favours **sparse** vectors.

```python
p_values = [0.5, 1, 2, 3, 7, float('inf')]
a1, a2 = th.meshgrid(th.linspace(-1.2, 1.2, 101),
                     th.linspace(-1.2, 1.2, 101), indexing='xy')
fig, axes = plt.subplots(ncols=(len(p_values) + 1) // 2,
                         nrows=2, figsize=(14, 7))
for p, ax in zip(p_values, axes.flat):
    if p == float('inf'):
        zz = th.maximum(a1.abs(), a2.abs())
    else:
        zz = (a1.abs()**p + a2.abs()**p)**(1./p)
    ax.contour(a1, a2, zz, [1], colors='red', linewidths=2)
    ax.set_title("p= {0}".format(p))

plt.show()
```

![Unit-ball contours of the $\ell_p$ norm for $p \in \{0.5,1,2,3,7,\infty\}$, shrinking towards the axes as $p$ decreases.](fig/generated/02_Linear_Predictors_3.png)

# Regularized least squares

We have seen in Chapter 1 that $\widehat{R}_S(h_S)=0$ can be achieved by memorizing the training set, resulting in overfitting. Let us then write the hypothesis space as a nested chain of subclasses of growing capacity, $\mathcal{H}_1 \subset \mathcal{H}_2 \subset \cdots$ with $\mathcal{H} = \bigcup_{i} \mathcal{H}_i$, and devise an objective that pursues the dual goals of fitting the data as well as possible and constraining model complexity concurrently:

$$\begin{gathered}
h_S := \arg \min_{h \in \mathcal{H}} \widehat{R}_S(h) + \lambda \cdot \mathrm{pen}(i(h)), \\
i(h) := \min\{ i : h \in \mathcal{H}_i \}.
\end{gathered}$$

Here $\lambda$ is called a **regularization coefficient** and $\mathrm{pen}(\cdot)$, an increasing function of the subclass index, a **regularizer**. As we will see in more detail in Chapter 5, this paradigm is called **Structural Risk Minimization (SRM)**, one of the biggest achievements of machine learning research in the pre-deep-learning era.

Let us next apply the idea of constraining the hypothesis space to the least squares problem:

$$w_S := \arg \min_w \frac{1}{m} \sum_{i \in [m]} (w^\top x_i - y_i)^2$$

$$\text{s.t.}~~||w||_p^p \leq \eta$$

where the abbreviation $\text{s.t.}$ stands for **subject to**, meaning that we search for a solution within a feasible set of parameters $\{ w :  ||w||_p \leq \eta\}$. This constrained optimization problem can be expressed equivalently as:

$$w_S := \arg \min_w \max_{\lambda \geq 0} \frac{1}{m} \sum_{i \in [m]} (w^\top x_i - y_i)^2 + \lambda (||w||_p^p - \eta)$$

where $\lambda \geq 0$ is the Lagrange multiplier of the constraint. For every budget $\eta$ there is a $\lambda$ whose unconstrained problem has the same solution. Fixing $\lambda$ instead of $\eta$ and dropping the constant $\lambda \eta$ gives the **regularized least squares** objective:

$$w_S := \arg \min_w  \underbrace{\frac{1}{m} \sum_{i \in [m]} (w^\top x_i - y_i)^2}_{\widehat{R}_S(w)} + \lambda ||w||_p^p.$$

The special case of $p=2$ deserves detailed investigation:

$$w_S := \arg \min_w \frac{1}{m} \sum_{i \in [m]} (w^\top x_i - y_i)^2 + \lambda ||w||_2^2.$$

We can rewrite the loss of this optimization in vector form as:

$$\mathcal{L}_S(w) := \frac{1}{m} \|Z w-y\|_2^2 + \lambda w^\top w.$$

Let us find the optimal weights that minimize the loss by setting its gradient to zero once again:

$$
\begin{aligned}
\mathcal{L}_S(w) &= \frac{1}{m} w^\top Z^\top Zw - \frac{2}{m} w^\top Z^\top y + \frac{1}{m} y^\top y + \lambda w^\top w\\
  &= w^\top \left (\frac{1}{m} Z^\top Z + \lambda I \right )w - \frac{2}{m} w^\top Z^\top y + \frac{1}{m} y^\top y\\
  \Rightarrow ~ & \nabla_w \mathcal{L}_S(w) = 2\left(\frac{1}{m} Z^\top Z + \lambda I \right )w - \frac{2}{m} Z^\top y \triangleq 0\\
  \Rightarrow ~ & w_S = \left(\frac{1}{m} Z^\top Z + \lambda I \right )^{-1} \frac{1}{m} Z^\top y = \left( Z^\top Z + m \lambda I \right )^{-1} Z^\top y.
\end{aligned}
$$

The result, known as **ridge regression** [Hoerl and Kennard (1970)](https://www.jstor.org/stable/1267351)<!-- cite: hoerl1970ridge | article | author={Hoerl, Arthur E. and Kennard, Robert W.}; title={Ridge Regression: Biased Estimation for Nonorthogonal Problems}; journal={Technometrics}; year={1970}; volume={12}; number={1}; pages={55--67} -->, differs from the least-squares solution $w_S = (Z^\top Z)^{-1} Z^\top y$ by only the added term $m \lambda I$. This term makes the matrix invertible even when $Z^\top Z$ is singular, and it pulls every coordinate of $w_S$ towards zero. Methods that pull parameters towards zero instead of fitting them freely are known in statistics as **parameter shrinkage** methods. Note that ridge shrinks but does not sparsify: it drives coefficients close to zero, never exactly to zero. We will see next that $p=1$ does sparsify. The regularizer of ridge regression is referred to as **weight decay**, a name still in active use by deep learning libraries.

Let us next see ridge regression in action.

```python
class RidgeRegression:
    def extract_features(self, inputs):
        ones = th.ones(inputs.shape[0], 1, dtype=inputs.dtype)
        return th.cat((inputs, ones), dim=1)

    def learn(self, inputs, labels, lambda_coef=0.1):
        Z = self.extract_features(inputs)
        # w_S = (Z^T Z + lambda I)^{-1} Z^T y: the least-squares system above
        # with lambda I added to the matrix being inverted
        ridge = lambda_coef * th.eye(Z.shape[1], dtype=Z.dtype)
        A = Z.T @ Z + ridge
        self.weights = th.linalg.solve(A, Z.T @ labels)

    def predict(self, inputs):
        return self.extract_features(inputs) @ self.weights

```

This time we work on the Diabetes data set that consists of 442 data points. Each data point represents a patient with the following 10 features:

  1. age
  2. sex
  3. body-mass index
  4. average blood pressure
  5. total serum cholesterol
  6. low-density lipoprotein level
  7. high-density lipoprotein level
  8. total cholesterol level
  9. possibly log of serum triglycerides level
  10. blood sugar level

The goal is to predict a quantitative progression of disease progression, the higher the more severe.

```python
from sklearn.datasets import load_diabetes

# The only library-provided piece is the raw data set itself; the split,
# the normalization, and both estimators are implemented below.
d = load_diabetes()
X = th.tensor(d.data, dtype=th.float64)
y = th.tensor(d.target, dtype=th.float64)

# hold out 20% of the data as the test split
perm = th.randperm(X.shape[0])
n_test = int(0.20 * X.shape[0])
X_test, y_test = X[perm[:n_test]], y[perm[:n_test]]
X_train, y_train = X[perm[n_test:]], y[perm[n_test:]]

print("Means:")
print(X_train.mean(dim=0))
print("Variances:")
print(X_train.var(dim=0, unbiased=False))

```

    Means:
    tensor([-2.3438e-03,  5.7266e-05,  6.4150e-04, -1.2388e-03,
            -2.0432e-03, -2.1458e-03, -1.7280e-04, -1.1079e-03,
            -6.1292e-04, -1.4638e-03],
           dtype=torch.float64)
    Variances:
    tensor([0.0023, 0.0023, 0.0024, 0.0023, 0.0022,
            0.0021, 0.0022, 0.0022, 0.0023, 0.0023],
           dtype=torch.float64)

Notably, different features have different scales. This may cause artifacts in model fitting, such as prioritization of features according to their scales instead of their relevance to the predicted quantity of interest. We can mitigate these artifacts by **normalizing** the data. One commonplace approach is **z-score normalization**, which assumes that each feature is normal distributed with some mean $\mu$ and variance $\sigma^2$. That is, each coordinate $x_j$ of a $d$-dimensional observation $x$ comes from a sampling process as below:

$$\begin{gathered}
\epsilon \sim \mathcal{N}(0,1), \\
x_j = \mu_j + \sigma_j \epsilon.
\end{gathered}$$

This operation makes the assumption that all the observed differences across individual results (called factors of variation) stem from the first step, i.e. a sample from a standard normal distribution. The second step scales and shifts this sample. Z-score normalization reverses the second operation to bring all features to the first step:

$$\begin{gathered}
x'_j := \dfrac{x_j - \mu_j}{\sigma_j}, \\
\forall j \in [d].
\end{gathered}$$

For $\mu_j$ and $\sigma_j$, we use the sample mean and standard deviation of the corresponding feature, computed on the **training split only** so that no information leaks from the test split. This preprocessing step is also referred to as **standardization**. We will revisit its probability-theoretic justification later.

```python
# z-score normalization, with mu and sigma taken from the training split only
mu = X_train.mean(dim=0)
sd = X_train.std(dim=0, unbiased=False)
X_train = (X_train - mu) / sd
X_test = (X_test - mu) / sd

print("Means:")
print(X_train.mean(dim=0))
print("Variances:")
print(X_train.var(dim=0, unbiased=False))
```

    Means:
    tensor([ 5.0180e-18,  3.6380e-17,  1.5054e-17,  3.7635e-18,
             2.8226e-17,  1.7563e-17, -4.0144e-17,  4.5162e-17,
            -5.0180e-18,  1.7563e-17],
           dtype=torch.float64)
    Variances:
    tensor([1.0000, 1.0000, 1.0000, 1.0000, 1.0000,
            1.0000, 1.0000, 1.0000, 1.0000, 1.0000],
           dtype=torch.float64)

Now we are ready to train and test ridge regression on the Diabetes data set.

```python
model_ridge = RidgeRegression()

model_ridge.learn(X_train, y_train, lambda_coef=1)

predictions = model_ridge.predict(X_train)
train_error = ((predictions - y_train)**2).mean().sqrt()
print("Train RMSE: {:.2f}".format(train_error))

predictions = model_ridge.predict(X_test)
test_error = ((predictions - y_test)**2).mean().sqrt()
print("Test RMSE: {:.2f}".format(test_error))
```

    Train RMSE: 54.35
    Test RMSE: 50.92

We have a decent result. But can we do even better? Can we actually sparsify our solution? Inspired by the shape of the $L_p$ balls illustrated above, we can next try out $p=1$. For $d$-dimensional input vectors $x_i$, the resulting objective reads:

$$\mathcal{L}_S(w) := \frac{1}{m} \sum_{i \in [m]} (w^\top x_i - y_i)^2 + \lambda \sum_{j=1}^d |w_j|.$$

This approach is known as **Least Absolute Shrinkage Selection Operator (LASSO) Regression** [Tibshirani (1996)](https://www.jstor.org/stable/2346178)<!-- cite: tibshirani1996lasso | article | author={Tibshirani, Robert}; title={Regression Shrinkage and Selection via the Lasso}; journal={Journal of the Royal Statistical Society: Series B}; year={1996}; volume={58}; number={1}; pages={267--288} -->.

Unlike ridge regression and least squares, the Lasso objective does not have an analytical solution. The $L_1$ term is not differentiable at $w_j = 0$, which is exactly where its solutions like to sit. No closed-form formula exists for a $w$ that would satisfy

$$\nabla_w \Big ( \frac{1}{m}  \sum_{i \in [m]} (w^\top x_i - y_i)^2 + \lambda \sum_{j=1}^d |w_j| \Big ) \triangleq 0.$$

If we cannot go straight to the value that minimizes the loss, we can instead find its direction and take a step towards there. Remember that the derivative of a function points to the direction towards which a function grows. Then negating it should point us towards a neighboring position with lower loss than our current position. It is reasonable to hope that repetitively taking small steps towards a neighboring point with lower loss will bring us to the point where the loss is minimum. Consider a series $w_0, w_1, \ldots$ created by the following succession rule and some arbitrary initialization $w_0$:

$$w_{t+1} := w_t - \alpha \nabla_w \mathcal{L}_S(w) \vert_{w:=w_t}$$

This approach is called **gradient descent**. It is in use with nearly all modern machine learning approaches. The coefficient $\alpha>0$ is called a **learning rate**. It determines how fast the model parameters will change in a single iteration. Too large a learning rate may result in missing the optimal solution due to large oscillations around it. Too small a learning rate may result in infeasibly long training time.

Gradient descent requires repetitive evaluation of the gradient of the loss with respect to the parameters at every iteration: $\nabla_w \mathcal{L}_S(w) \vert_{w:=w_t}$. Hence its implementation on the computer requires an analytical calculation of this gradient. This may be time consuming for complex loss functions. Deep learning libraries such as PyTorch and TensorFlow allow us to automate this process, a mechanism called **automatic differentiation**: flagging a tensor with `requires_grad_()` makes the library record every operation it takes part in, and a later call to `backward()` replays that record in reverse, accumulating $\nabla_w \mathcal{L}_S(w)$ into the tensor's `.grad` field. Note that only the *gradient computation* is automated — the update rule $w_{t+1} := w_t - \alpha \nabla_w\mathcal{L}_S(w)$ is still ours to write, and we write it out explicitly below rather than delegating it to a library optimizer, so that nothing about the algorithm is hidden.

```python
class LassoRegression:
    def __init__(self, n_dims, lambda_coef=1.0):
        self.lambda_coef = lambda_coef
        # The parameters are plain tensors flagged for gradient tracking:
        # requires_grad_() tells torch to record every operation they take
        # part in, so that backward() can later replay the record in reverse.
        self.w = th.randn(n_dims, 1).requires_grad_()
        self.b = th.randn(1).requires_grad_()

    def predict(self, inputs):
        return inputs @ self.w + self.b

    def learn(self, inputs, labels, alpha=0.01, num_steps=1):
        for _ in range(num_steps):
            # Forward pass: evaluate the objective at the current parameters
            loss = ((self.predict(inputs) - labels)**2).mean() \
                   + self.lambda_coef * self.w.abs().sum()
            # Backward pass: automatic differentiation fills w.grad and b.grad
            loss.backward()
            # The gradient descent step itself, written out explicitly. The
            # no_grad() block switches the recording off, since the update is
            # not part of the function we are differentiating.
            with th.no_grad():
                for param in (self.w, self.b):
                    param -= alpha * param.grad
                    param.grad.zero_()   # clear it for the next iteration


# Single precision is enough for an iterative solver, and it is what the
# deep learning libraries use by default
X_train = X_train.float()
X_test = X_test.float()
y_train = y_train.float().reshape(-1, 1)
y_test = y_test.float().reshape(-1, 1)

# Train our model
model_lasso = LassoRegression(n_dims=X_train.shape[1], lambda_coef=1)
# Number of gradient descent iterations
num_iterations = 250

# Collect the train and test errors here.
train_errors = th.zeros(num_iterations)
test_errors = th.zeros(num_iterations)

for ii in range(num_iterations):
    model_lasso.learn(X_train, y_train)

    with th.no_grad():   # evaluation needs no gradient record
        predictions = model_lasso.predict(X_train)
        train_errors[ii] = ((predictions - y_train)**2).mean().sqrt()

        # Test our model
        predictions = model_lasso.predict(X_test)
        test_errors[ii] = ((predictions - y_test)**2).mean().sqrt()

# Plot the learning curve
plt.plot(th.arange(num_iterations), train_errors, 'b-', label="Train RMSE")
plt.plot(th.arange(num_iterations), test_errors, 'r-', label="Test RMSE")
plt.xlabel("Iteration")
plt.ylabel("RMSE")
plt.legend(loc="upper right")
plt.show()
```

![Learning curve: training and test RMSE of Lasso regression across gradient descent iterations.](fig/generated/02_Linear_Predictors_4.png)

The figure above is called the **learning curve**. It depicts the evolution of model performance throughout the learning process. 

**REMARK:** Learning curves give plenty of information about the model behavior. Hence, plotting and visually inspecting them facilitates debugging.

Let us next see how much shrinkage we gained from the Lasso and ridge regression regularizers. As visible below, Lasso sparsifies the parameters more than ridge.

```python
fig, axes = plt.subplots(ncols=2, nrows=1, figsize=(14, 7))

axes[0].bar(th.arange(X_train.shape[1]),
            model_lasso.w.view(-1).detach())
axes[0].set_ylim(-40,40)
axes[0].set_title("Lasso weights")
axes[1].bar(th.arange(X_train.shape[1]),
            model_ridge.weights[:10])
axes[1].set_ylim(-40,40)
axes[1].set_title("Ridge weights")
plt.show()

```

![Learned weight coefficients under Lasso versus ridge regularization, showing that Lasso drives more coefficients to zero.](fig/generated/02_Linear_Predictors_5.png)
