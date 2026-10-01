# What is machine learning?

> **Notational conventions used throughout these notes.**
>
> **Probability.** $P(\cdot)$ denotes a probability — of an event, or of a discrete random variable taking a value, so that $P(X=x)$ is the probability mass function of a discrete $X$. Lowercase $p(\cdot)$ is reserved for the probability **density** of a continuous random variable, which is not itself a probability. Where a joint object mixes the two (a continuous feature vector with a discrete label, say) we write $p$ for the joint and $P$ for its discrete factors. Subscripts name the distribution being integrated against, e.g. $P_{S \sim \mathcal{D}^m}(\cdot)$. Probabilities always take parentheses; expectations, variances and covariances take brackets: $\mathbb{E}[\cdot]$, $\mathrm{Var}[\cdot]$, $\mathrm{Cov}[\cdot,\cdot]$, with subscripts naming the variable averaged over ($\mathbb{E}_{S}$, $\mathbb{E}_{x\sim\mathcal{D}}$). $\mathds{1}(\cdot)$ is the indicator function and $\log$ always the **natural** logarithm.
>
> **Data.** $m$ is the size of a data set $S$, $d$ the dimension of the feature space, $C$ the number of classes, $[m] := \{1,\ldots,m\}$. Calligraphic letters denote spaces: $\mathcal{X}$ the feature space, $\mathcal{Y}$ the label space, $\mathcal{H}$ a hypothesis class, $\mathcal{D}$ a data distribution over $\mathcal{X}\times\mathcal{Y}$, and $\mathcal{D}_{\mathcal{X}}$ its marginal on $\mathcal{X}$.
>
> **Losses and risks.** The pointwise loss is always written $\ell(y, \widehat{y})$ — **true label first, prediction second**. $R(h)$ is the true risk and $\widehat{R}_S(h)$ the empirical risk on $S$. A calligraphic $\mathcal{L}$ denotes a training objective (an empirical risk plus a regularizer).
>
> **Recurring symbols.** $h$ is a hypothesis, $f$ the labeling function and $f^*$ the Bayes predictor, $A$ a learning algorithm, $w$ a weight vector, $\epsilon$ an accuracy and $\delta$ a failure probability, $\alpha$ a learning rate, $\lambda$ a regularization coefficient. From Chapter 5a onwards, $\sigma_i \in \{-1,+1\}$ are Rademacher signs; the activation function of a neural network is therefore written $g(\cdot)$, not $\sigma(\cdot)$, to keep the two apart. $\sigma$ without a subscript is a standard deviation (and, in Chapter 9 only, the bandwidth of an RBF kernel, which is its universal name there).

**Definition:** “A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E”. [Mitchell, 1997](http://www.cs.cmu.edu/~tom/mlbook.html)<!-- cite: mitchell1997ml | book | author={Mitchell, Tom M.}; title={Machine Learning}; publisher={McGraw-Hill}; year={1997} -->

(Mitchell's $P$ for "performance measure" is the only place in these notes where the letter $P$ does not denote a probability; from the next section on we call it the **loss** $\ell$ and the **risk** $R$.)

**Purpose:** Designing algorithms to solve T with maximum P and minimum:

  1. time complexity (same as in any application)
  2. space complexity (same as in any application)
  3. sample complexity (new!)

## Formal definitions

### Experience (E)

Our computer program observes the environment by means of a **data set**, a set of tuples called **data points**: 

$$S := \{ (x_1, y_1), \ldots, (x_m, y_m) \}.$$ 

Each tuple comprises an **input** observation $x_i \in \mathcal{X}$, also called a **feature vector**, and a corresponding output observation $y_i \in \mathcal{Y}$. 

The set $\mathcal{X}$ is called the **feature space** and the set $\mathcal{Y}$ a **label space**. In some contexts, $S$ is called a **sample**. 

We assume that there exists a **labeling function** $f: \mathcal{X} \rightarrow \mathcal{Y}$ such that $y_i = f(x_i)$, which is **unknown** to us.

We further assume that each observation in the data set is an **independent and identically distributed (i.i.d.)** sample from an unknown data distribution $\mathcal{D}$. An i.i.d. data set is denoted as $S := \{(x_i, y_i) \overset{i.i.d.}{\sim} \mathcal{D} : i \in [m]\}$. 

> [!Notes]+  
> # I. I. D.  
> - distributed Betyder  er statik ord, at der valgt nogle input tilfældigt. 
> - independet betyder  at data set er uafhænginge af hinanden række følge er lige meget, 
> - identically betyder at de bliver gentaget 

Imagine playing backgammon. Each rolling of the dice is a sample. These are independent samples if consecutive rolls do not influence each other. The samples are identically distributed if we use the same dice throughout the game. The i.i.d. assumption is at the heart of machine learning. The same process needs to be repeated for an agent to be able to learn it, just like us humans. 

### Task (T) 

Our task is to predict the outputs $y_i$ from input observations $x_i$ as accurately as possible. In mathematical terms, we look for a **hypothesis** $h: \mathcal{X} \rightarrow \mathcal{Y}$ that would approximate the unknown labeling function, i.e. it will satisfy $f(x) \approx h(x), \forall x \in \mathcal{X}$. 
   * If $\mathcal{Y}$ is a set with discrete elements, then our task is called **classification**, because it boils down to assigning an input $x_i$ to an appropriate class. Imagine $x_i$ is a picture expressed as an array of pixel intensity values, $\mathcal{Y}$ is then the type of the object in the foreground.
   * If $\mathcal{Y}$ is a continuous set such as $\mathbb{R}$, then our task is called **regression**. Imagine $x_i$ is the properties of a house (size, age, coordinates), $\mathcal{Y}$ can be its price.

We do not search over all conceivable maps $\mathcal{X} \rightarrow \mathcal{Y}$. We commit in advance to a **hypothesis class** $\mathcal{H} \subseteq \mathcal{Y}^{\mathcal{X}}$ and search inside it. This commitment is the **inductive bias** of the learner. Chapter 5 shows that learning is impossible without one.


### Performance Measure (P) 

We define what we mean by an **accurate prediction** via a **loss function**: $\ell: \mathcal{Y} \times \mathcal{Y} \rightarrow \mathbb{R}^+$ which maps a pair $(y,y')$ comprising a prediction $y'$ and a corresponding true label $y$ to a score inversely proportional to the quality of the prediction. Commonsense design choices for supervised learning problems are:

1. the **zero-one loss** defined as $\ell(y,y') := \mathds{1}(y \neq y')$ for classification, and
2. the **squared error** defined as $\ell(y,y') := (y-y')^2$ for regression.

>[!notes]
>$\ell$ loss function



Here $\mathds{1}$ is the indicator function that returns $1$ if the predicate in its argument holds (e.g. if $y$ differs from $y'$) and $0$ otherwise. Put together, we are interested in a **learning algorithm** $A(\cdot)$ that takes a data set $S$ as input and returns a hypothesis. Let us denote this hypothesis as $h_S$, where the subscript $S$ is to highlight its dependence on the data set. Then we can express the learning process as $h_S \gets A(S)$. We expect from this algorithm to minimize the **generalization error (true risk)**, which is defined for zero-one loss as:

$$R(h) := \mathbb{E}_{x \sim \mathcal{D}_{\mathcal{X}}}\big[ \ell(f(x), h(x)) \big] = P_{x \sim \mathcal{D}_{\mathcal{X}}}\big(f(x) \neq h(x)\big),$$

> [!Notes]
> $\mathbb{E}$ forvent udfald probalyt thery vi har ikke lærtet endnu


where $\mathcal{D}_{\mathcal{X}}$ is the marginal of $\mathcal{D}$ on the feature space and the second equality is specific to the zero-one loss. Here $P_{x \sim \mathcal{D}_{\mathcal{X}}}$ denotes the probability that the sample $x$ will be observed. In words, this is the probability that our hypothesis will make a different prediction than the true labeling function. We will cover probability theory in the following chapters. For now it is sufficient to read it as the true chance of encountering $x$, relying on your intuitive understanding of the notion of chance.

## The Empirical Risk Minimization (ERM) Paradigm

The goal of a learning algorithm $A$ is to find the hypothesis that minimizes the generalization error:

$$h_* := \arg \min_{h \in \mathcal{H}} R(h).$$
> [!notes]
> $\arg \min$ betyder hvilket værdi dr skal gives til en funktion $f(x)$ for at det giver den minsten værdi


We cannot solve this optimization problem because we do not know $\mathcal{D}$ and $f$. We only have an idea about these unknowns via the data set $S$. Let us then use the data set to curate a quantity that approximates the generalization error:

$$\widehat{R}_S(h) := \frac{1}{m} \sum_{i \in [m]} \ell(y_i, h(x_i)) = \frac{|\{i \in [m] : h(x_i) \neq y_i\}|}{m}$$

where $[m] := \{1, \ldots, m\}$ and $|\cdot|$ counts the number of elements a set contains, e.g. $|\{1,2\}|=2$. The quantity $\widehat{R}_S(h)$ is called the **training error** or **empirical risk**. We can then find a suitable hypothesis by minimizing the empirical risk:

$$h_S := \arg \min_{h \in \mathcal{H}} \widehat{R}_S(h).$$

This paradigm, called **Empirical Risk Minimization (ERM)**, is at the center of machine learning. Yet, it has certain weaknesses. For instance, consider the following solution:

$$
h_S(x) :=
\begin{cases}
y_i, & \text{if } \exists i \in [m] \text{ s.t. } x_i = x,\\
0, & \text{otherwise.}
\end{cases}
$$

This solution will provide us zero $\widehat{R}_S(h_S)$. It may look like that the problem is solved, but actually this is the moment where all problems start.

> Memoerations, den husker alle svar, til alle stillet spørgsmål 
## Example: Polynomial curve fitting

We observe data like below for 50 input observations $x$ and the corresponding outputs $y$. We aim to find a function $y=f(x)$ that maps inputs to outputs.


```python
import matplotlib.pyplot as plt
import torch as th

th.manual_seed(6)  # fix the random draws so that the figures are reproducible

# This is the true data generating process.
# We do not have access to this information in a typical machine learning problem
inputs = th.linspace(0, 1, 50, dtype=th.float64)
outputs = th.sin(2 * th.pi * inputs)
labels = outputs + th.randn(inputs.shape[0], dtype=th.float64) * 0.25

plt.plot(inputs, labels, 'bo')
plt.xlabel("inputs (x)")
plt.ylabel("labels (y)")
plt.show()
```


    
![Synthetic noisy observations of a sinusoidal labeling function.](fig/generated/01_Basic_Concepts_1.png)
    


Express our observations as a set of input-output tuples: $S = \{ (x_1, y_1), \cdots, (x_{50}, y_{50}) \}$. We would like to use them for two purposes: 
  * to **learn** the unknown function $f$,
  * to **evaluate** the success of the learning process (i.e. how well we expect $f$ to predict future observations)

Let us then split our data into two equal partitions randomly, one per purpose: $S = S_{train} \cup S_{test}$.

$S_{train}$ is called the **training set**. Our learning algorithm will use it to find a hypothesis that minimizes the empirical risk.

$S_{test}$ is called the **test set**. We will use it to check how well the empirical risk represents the true risk. In formal terms, we are up to approximating $R(h_S)$.


```python
num_samples = inputs.shape[0]
num_train_samples = num_samples // 2 
# draw a random permutation of indices
idx = th.randperm(num_samples)
inputs_train = inputs[idx[:num_train_samples]]
labels_train = labels[idx[:num_train_samples]]
inputs_test = inputs[idx[num_train_samples:]]
labels_test = labels[idx[num_train_samples:]]
```

By visual inspection we find out that the input and the output have a nonlinear and periodic relationship. Let us then choose a hypothesis space suitable to this approximation, for instance a polynomial of degree $M$:

$$y(x) := \sum_{m=0}^M w_m x^m.$$

If $M=0$, then our model learns to fit a constant: $y(x) = w_0$. 

If $M=1$, then it fits a line: $y(x) = w_0 + w_1 x$. 

If $M=2$, it fits a parabola: $y(x)=w_0 + w_1 x + w_2 x^2$, and so on.


```python
class PolynomialModel:
    def __init__(self, num_polynomial_degrees=1, regularizer=0.0):
        self.M = num_polynomial_degrees
        self.regularization_factor = regularizer
      
    def extract_features(self, inputs):
        # Column m of the feature matrix Z holds x^m, for m = 0, ..., M
        powers = th.arange(self.M + 1, dtype=inputs.dtype)
        return inputs.unsqueeze(1) ** powers

    def learn(self, inputs, labels):
        Z = self.extract_features(inputs)
        ridge = self.regularization_factor * th.eye(Z.shape[1], dtype=Z.dtype)
        A = Z.T @ Z + ridge
        # w_S = (Z^T Z + lambda I)^{-1} Z^T y, obtained by solving the linear
        # system A w = Z^T y rather than by forming A^{-1} explicitly
        self.weights = th.linalg.solve(A, Z.T @ labels)

    def predict(self, inputs):
        return self.extract_features(inputs) @ self.weights
```

The **extract_features** function converts each one-dimensional observation to an $M-$ dimensional **feature vector**. This operation is called **feature extraction**. 

The **learn** function takes a set of inputs and their corresponding labels in its arguments and fits the unknown model parameters $w_0, \cdots, w_M$ to data. We will cover later how exactly it does that.

The **predict** function takes only inputs in its arguments. It predicts their corresponding labels itself, hence the name. The source code of advanced machine learning models we will see later on follows the same template.


```python
model = PolynomialModel(num_polynomial_degrees=3) # Create the model instance

# Training
model.learn(inputs_train, labels_train) 

# Testing
predictions_test = model.predict(inputs_test) 
root_mean_squared_error = ((labels_test - predictions_test) ** 2).mean().sqrt()

print(root_mean_squared_error.item())
```

    0.25155540073010746


Let us visualize all we have. In the plot below, the training set is shown as blue circles, test set as green circles, and the predictions of our machine learning model in red circles. The black curve is the labeling function we are trying to finding out. Note that we can observe only noisy evaluations of it, just as in the real life. Data collection processes are affected by unintended factors, which we call **noise**. 


```python
plt.plot(inputs,outputs,'k-', label="True function")
plt.plot(inputs_train,labels_train,'bo', label="Training data")
plt.plot(inputs_test, labels_test,'go', label="Test data")
plt.plot(inputs_test,predictions_test,'ro', label="Test predictions")
plt.legend(loc="upper right")
plt.show()
```


    
![The true labeling function together with the training set, the test set, and the model's predictions on the test set.](fig/generated/01_Basic_Concepts_2.png)
    


The properties of the model we have to choose before running the learning algorithm are called **hyperparameters**. For instance, the polynomial degree $M$ is a hyperparameter. Let us simply try all options from 1 to 10 and see how it affects the model behavior.

Since we have a regression problem, we follow the common sense and choose the squared error loss function. We take its square-root to bring it to the same scale as the label space:

$$\mathrm{RMSE}_S(h) := \sqrt{\widehat{R}_S(h)} = \sqrt{\frac{1}{m} \sum_{i \in [m]} (h(x_i) - y_i)^2}.$$

This loss function is called the **Root Mean Squared Error (RMSE)**.


```python
# The performance score
def root_mean_squared_error(labels_true, predictions):
    return ((labels_true - predictions) ** 2).mean().sqrt()

Mmax = 10
train_errors = th.zeros(Mmax, dtype=th.float64)
test_errors = th.zeros(Mmax, dtype=th.float64)

for M in range(Mmax):
    # Create the model instance
    model = PolynomialModel(num_polynomial_degrees=M)

    # Training: fit parameters to data on the training split.
    model.learn(inputs_train, labels_train)
    predictions_train = model.predict(inputs_train)
    train_err = root_mean_squared_error(labels_train, predictions_train)

    # Testing: predict on the test split and evaluate performance.
    predictions_test = model.predict(inputs_test)
    test_err = root_mean_squared_error(labels_test, predictions_test)

    train_errors[M] = train_err
    test_errors[M] = test_err

plt.plot(th.arange(Mmax), train_errors, "bo-", label="Training")
plt.plot(th.arange(Mmax), test_errors, "ro-", label="Test")
plt.xlabel("Polynomial degree")
plt.ylabel("Error")
plt.legend(loc="upper right")
plt.show()
```


    
![Training and test error as a function of the polynomial degree $M$.](fig/generated/01_Basic_Concepts_3.png)
    


**Expected:** As $M$ increases, the training error $\widehat{R}_{S_{train}}(h_S)$ monotonically decreases.

**Surprise:** However, the test error $\widehat{R}_{S_{test}}(h_S)$ decreases up to $M=6$, and then sharply increases. 

What may have gone wrong? Let us take a closer look into individual cases.


```python
model0 = PolynomialModel(num_polynomial_degrees=0) 
model0.learn(inputs_train, labels_train) 
pred_0 = model0.predict(inputs)

model1 = PolynomialModel(num_polynomial_degrees=1) 
model1.learn(inputs_train, labels_train) 
pred_1 = model1.predict(inputs)

model4 = PolynomialModel(num_polynomial_degrees=4) 
model4.learn(inputs_train, labels_train) 
pred_4 = model4.predict(inputs)

model9 = PolynomialModel(num_polynomial_degrees=9) 
model9.learn(inputs_train, labels_train) 
pred_9 = model9.predict(inputs)

fig, axs = plt.subplots(2, 2)

for ax in axs.flat:
    ax.plot(inputs, outputs,'k-', label="True f")
    ax.plot(inputs_train, labels_train,'ro', label="Tr data")

axs[0, 0].plot(inputs, pred_0,'b-', label="M=0")
axs[0, 1].plot(inputs, pred_1,'g-', label="M=1")
axs[1, 0].plot(inputs, pred_4,'c-', label="M=4")
axs[1, 1].plot(inputs, pred_9,'m-', label="M=9")

for ax in axs.flat:
    ax.legend(loc="upper right")
    ax.label_outer()


```


    
![Polynomial fits of degree $M \in \{0,1,4,9\}$ against the true function and training data, illustrating underfitting and overfitting.](fig/generated/01_Basic_Concepts_4.png)
    


The model had poor performance because it could not express a periodic relationship with a constant $M=0$ or a line $M=1$. Poor model fit due to limited model capacity is called **underfitting**. An underfitted model performs poorly on both training and test data, i.e. it has high $\widehat{R}_{S_{train}}(h_S)$ and high $\widehat{R}_{S_{test}}(h_S)$.

What goes on for $M=9$ is interesting. A polynomial with such high degree is flexible enough to make sharp turns. The model learned to use this flexibility to fit also to the left and right-most data points, but then it missed to capture the trend and diverged from the true labeling function. It is called **overfitting** when a model fits to training data extremely well, i.e. low $\widehat{R}_{S_{train}}(h_S)$, but delivers poor performance on test data, i.e. high $\widehat{R}_{S_{test}}(h_S)$. 

**REMARK:** Designing highly-expressive models while keeping them immune to overfitting is one of the fundamental problems of machine learning.

To mitigate overfitting, we need to devise an algorithm that encourages minimum empirical risk and penalizes the increase of model capacity. Once choice could be as follows:

$$h_S := \arg \min_{h \in \mathcal{H}} \widehat{R}_S(h) + \lambda \sum_{m=0}^M w_m^2.$$

Here the term $\lambda \sum_{m=0}^M w_m^2$ is called a **regularizer** and $\lambda$ a **regularization coefficient**. Let us see what happens then.

> der skal have mindre hypptese set, så mindst hypptese set og den bedst i det set


```python
for M in range(Mmax):
    # Create the model instance
    model = PolynomialModel(num_polynomial_degrees=M, regularizer=0.01)

    # Training: fit parameters to data on the training split.
    model.learn(inputs_train, labels_train)
    predictions_train = model.predict(inputs_train)
    train_err = root_mean_squared_error(labels_train, predictions_train)

    # Testing: predict on the test split and evaluate performance.
    predictions_test = model.predict(inputs_test)
    test_err = root_mean_squared_error(labels_test, predictions_test)

    train_errors[M] = train_err
    test_errors[M] = test_err

plt.plot(th.arange(Mmax), train_errors, "bo-", label="Training")
plt.plot(th.arange(Mmax), test_errors, "ro-", label="Test")
plt.xlabel("Polynomial degree")
plt.ylabel("Error")
plt.legend(loc="upper right")
plt.show()
```


    
![Training and test error versus polynomial degree with $L_2$ regularization, showing reduced overfitting compared to the unregularized fit.](fig/generated/01_Basic_Concepts_5.png)
    


As seen, having a regularizer term significantly mitigates overfitting when the model capacity, i.e. the polynomial degree, increases.
