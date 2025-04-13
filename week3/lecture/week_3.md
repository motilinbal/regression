# Page 0

# 4 Statistical modeling 

So far we have been working with arbitrary data points $\left(1, x_{i 1}, \ldots, x_{i p}, y_{i}\right), i=1, \ldots, n$. In other words, the $n \times(p+1)$ matrix $\boldsymbol{X}$ and the vector $\boldsymbol{y}$ consisted of any fixed numbers, except that we assumed that $\boldsymbol{X}$ has full column rank (i.e., the columns of $\boldsymbol{X}$ are linearly independent). If we return to the motivation for the regression problem, recall that we are ultimately interested in learning something about the relationship between the covariate vector $\left(1, X_{i 1}, \ldots, X_{i p}\right)$ and the response $Y$ in some population, rather than in the particular dataset (sample) we happened to observe. In other words, we want the least squares regression line that we fit on the sample to estimate a 'theoretical' (or 'true') regression line for some target population. This will be possible if we assume that the observations are a random sample from the target population. Hence, we will now assume that the data points $\left(1, x_{i 1}, \ldots, x_{i p}, y_{i}\right)$ are i.i.d. (independent, identically distributed) realizations of a random vector

$$
\left(1, X_{1}, \ldots, X_{p}, Y\right) \sim P
$$

Now, we can always write

$$
Y_{i}=\underbrace{\mathbb{E}\left(Y_{i} \mid X_{i 1}, \ldots, X_{i p}\right)}_{f\left(X_{i 1}, \ldots, X_{i p}\right)}+\underbrace{\left(Y_{i}-\mathbb{E}\left(Y_{i} \mid X_{i 1}, \ldots, X_{i p}\right)\right)}_{\epsilon_{i}}
$$

where $f\left(X_{i 1}, \ldots, X_{i p}\right)$, the conditional expectation of $Y$ given $X_{1}, \ldots, X_{p}$, is the systematic part, and $\epsilon_{i}$, the deviation of $Y$ from its conditional expectation given the $X_{i j}$ 's, $j=1, \ldots, p$, is the error part. Note that

$$
\begin{aligned}
& \mathbb{E}\left(\epsilon_{i} \mid X_{i 1}, \ldots, X_{i p}\right)=\mathbb{E}\left[Y_{i}-\mathbb{E}\left(Y_{i} \mid X_{i 1}, \ldots, X_{i p}\right) \mid X_{i 1}, \ldots, X_{i p}\right]= \\
& =\mathbb{E}\left(Y_{i} \mid X_{i 1}, \ldots, X_{i p}\right)-\mathbb{E}\left[\mathbb{E}\left(Y_{i} \mid X_{i 1}, \ldots, X_{i p}\right)\right]=\mathbb{E}\left(Y_{i} \mid X_{i 1}, \ldots, X_{i p}\right)-\mathbb{E}\left(Y_{i} \mid X_{i 1}, \ldots, X_{i p}\right)=0
\end{aligned}
$$

i.e., the random variable $\epsilon$ has mean zero conditionally on $X_{i 1}, \ldots, X_{i p}$ (by the way, this implies that we also have $\mathbb{E} \epsilon_{i}=0$ unconditionally).

In general, the function $f\left(X_{i 1}, \ldots, X_{i p}\right)$ can be any function of $\left(X_{i 1}, \ldots, X_{i p}\right)$. From now on, we make the assumption that this is a linear (in fact, affine) function of $\left(x_{i 1}, \ldots, x_{i p}\right)$, i.e.,

$$
f\left(1, X_{i 1}, \ldots, X_{i p}\right)=\sum_{j=0}^{p} \beta_{j} X_{i j}
$$

We can summarize all of the above as follows. The general linear model is given by

$$
Y_{i}=\sum_{j=0}^{p} \beta_{j} X_{i j}+\epsilon_{i j}, \quad \mathbb{E}\left[\epsilon_{i} \mid \text { all } X_{i j} \text { 's }\right]=0, \quad \operatorname{Cov}\left(\epsilon_{k}, \epsilon_{l} \mid \text { all } X_{i j} \text { 's }\right)= \begin{cases}\sigma^{2}, & k=l \\ 0, & i \neq j\end{cases}
$$

Actually, throughout the course we will generally treat the $X_{i j}$ 's as fixed (nonrandom). In that case, the above is equivalent to

$$
Y_{i}=\sum_{j=0}^{p} \beta_{j} x_{i j}+\epsilon_{i j}, \quad \mathbb{E}\left[\epsilon_{i}\right]=0, \quad \operatorname{Cov}\left(\epsilon_{k}, \epsilon_{l}\right)= \begin{cases}\sigma^{2}, & k=l \\ 0, & i \neq j\end{cases}
$$

Moments of random vectors, algebra of covariance. We are headed toward providing statistical inference for $\boldsymbol{\beta}$ (and $\sigma^{2}$ ) under the model (12). As this will involve working with random vectors, we begin with some general definitions.

# Page 1

A random vector is a vector $Z=\left(Z_{1}, \ldots, Z_{n}\right)^{\top}$ whose components $Z_{i}$ are random variables with some joint distribution. A random matrix is a matrix

$$
\boldsymbol{Z}=\left[\begin{array}{cccc}
Z_{11} & Z_{12} & \cdots & Z_{1 m} \\
Z_{21} & Z_{22} & \cdots & Z_{2 m} \\
\vdots & & & \\
Z_{n 1} & Z_{n 2} & \cdots & Z_{n m}
\end{array}\right]
$$

whose components $Z_{i j}$ are random variables with some joint distribution.
Definition 2. The expectation of a random $n \times m$ matrix $\mathbf{Z}$ is defined as the $n \times m$ matrix $\mathbb{E} \boldsymbol{Z}$ whose $(i, j)$-th entry is

$$
[\mathbb{E} \boldsymbol{Z}]_{i j}=\mathbb{E} Z_{i j}
$$

In other words,

$$
\mathbb{E} \boldsymbol{Z}=\left[\begin{array}{cccc}
\mathbb{E} Z_{11} & \mathbb{E} Z_{12} & \cdots & \mathbb{E} Z_{1 m} \\
\mathbb{E} Z_{21} & \mathbb{E} Z_{22} & \cdots & \mathbb{E} Z_{2 m} \\
\vdots & & & \\
\mathbb{E} Z_{n 1} & \mathbb{E} Z_{n 2} & \cdots & \mathbb{E} Z_{n m}
\end{array}\right]
$$

and, as a special case when $m=1$, for a random vector $\boldsymbol{Z}=\left(Z_{1}, \ldots, Z_{n}\right)^{\top}$,

$$
\mathbb{E} \boldsymbol{Z}=\left[\begin{array}{c}
\mathbb{E} Z_{1} \\
\mathbb{E} Z_{2} \\
\vdots \\
\mathbb{E} Z_{n}
\end{array}\right]
$$

Properties. $\boldsymbol{Z}, \boldsymbol{W}$ random matrices. For any fixed matrices $\boldsymbol{A}, \boldsymbol{B}$ of compatible dimensions, we have:

1. $\mathbb{E}[Z+W]=\mathbb{E}[Z]+\mathbb{E}[\boldsymbol{W}]$

Proof. $[\mathbb{E}(\boldsymbol{Z}+\boldsymbol{W})]_{i j} \stackrel{(1)}{=} \mathbb{E}\left([\boldsymbol{Z}+\boldsymbol{W}]_{i j}\right) \stackrel{(2)}{=} \mathbb{E}\left(\boldsymbol{Z}_{i j}+\boldsymbol{W}_{i j}\right) \stackrel{(3)}{=} \mathbb{E} \boldsymbol{Z}_{i j}+\mathbb{E} \boldsymbol{W}_{i j} \stackrel{(4)}{=}[\mathbb{E} \boldsymbol{Z}]_{i j}+[\mathbb{E} \boldsymbol{W}]_{i j}$ where (1) is due to the definition of the expectation of a matrix; (2) is due to the rule of addition of two matrices (the $(i, j)$-th element of the sum is the sum of the $(i, j)$-th elements); (3) is due to linearity of expectation for (univariate) random variables (this is the main step of the proof); and (4) is again due to the definition of the expectation of a matrix.
2. $\mathbb{E}[\boldsymbol{A} \boldsymbol{Z} \boldsymbol{B}]=\boldsymbol{A} \mathbb{E}[\boldsymbol{Z}] \boldsymbol{B}$

Proof. First,

$$
[\mathbb{E}(\boldsymbol{A} \boldsymbol{Z})]_{i j}=\mathbb{E}\left(\sum_{r} \boldsymbol{A}_{i r} \boldsymbol{Z}_{r j}\right)=\sum_{r} \boldsymbol{A}_{i r} \mathbb{E} \boldsymbol{Z}_{r j}=[\boldsymbol{A} \mathbb{E} \boldsymbol{Z}]_{i j} \Rightarrow \mathbb{E}(\boldsymbol{A} \boldsymbol{Z})=\boldsymbol{A} \mathbb{E} \boldsymbol{Z}
$$

A similar argument yields

$$
\mathbb{E}(\boldsymbol{Z} \boldsymbol{B})=(\mathbb{E} \mathbf{Z}) \boldsymbol{B}
$$

Finally,

$$
\mathbb{E}[\boldsymbol{A} \boldsymbol{Z}]=\mathbb{E}[\boldsymbol{A}(\boldsymbol{Z} \boldsymbol{B})] \stackrel{(1)}{=} \boldsymbol{A} \mathbb{E}[\boldsymbol{Z} \boldsymbol{B}] \stackrel{(2)}{=} \boldsymbol{A} \mathbb{E}[\boldsymbol{Z}] \boldsymbol{B}
$$

# Page 2

3. $\mathbb{E}[A U+C]=A \mathbb{E}[U]+C \quad($ from $1+2)$

Proof. Exercise.
Reminder. For two random variables $Z, W$, recall that the covariance of $Z$ and $W$ is

$$
\operatorname{Cov}(Z, W):=\mathbb{E}\left(Z-\mu_{Z}\right)\left(W-\mu_{W}\right)
$$

where $\mu_{Z}:=\mathbb{E} Z, \mu_{W}:=\mathbb{E} W$.
Using linearity of the expectation, we get the identity

$$
\operatorname{Cov}(Z, W)=\mathbb{E}[Z W]-\mu_{Z} \mu_{W}
$$

In the special case $W=Z$, by the definition we have

$$
\operatorname{Cov}(Z, Z)=V(Z)=\mathbb{E}\left(Z-\mu_{Z}\right)^{2}
$$

Properties of covariance. For any fixed $a \in \mathbb{R}$, we have:

1. $\operatorname{Cov}(W, Z)=\operatorname{Cov}(Z, W)$
2. $\operatorname{Cov}(a Z+R, W)=a \operatorname{Cov}(Z, W)+\operatorname{Cov}(R, W)$

Definition 3. The covariance matrix of a random vector $\boldsymbol{Z} \in \mathbb{R}^{n}$ with a random vector $\boldsymbol{W} \in \mathbb{R}^{m}$ is denoted $\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W})$, and defined to be the $n \times m$ matrix whose $(i, j)$-th entry is

$$
[\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W})]_{i j}:=\operatorname{Cov}\left(Z_{i}, W_{j}\right)
$$

In the special case where $\boldsymbol{W}=\boldsymbol{Z}$, we denote $\operatorname{cov}(\boldsymbol{Z}):=\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{Z})$, and by the above definition,

$$
[\operatorname{cov}(\boldsymbol{Z})]_{i j}:=[\operatorname{cov}(\mathbf{Z}, \mathbf{Z})]_{i j}=\operatorname{Cov}\left(Z_{i}, Z_{j}\right)
$$

Presented differently, with $\mu_{Z}:=\mathbb{E} Z, \mu_{W}:=\mathbb{E} \boldsymbol{W},(3.7)$ and (3.8) can be expressed in matrix notation as

$$
\operatorname{cov}(\mathbf{Z}, \boldsymbol{W}):=\mathbb{E}\left[\left(\boldsymbol{Z}-\mu_{\boldsymbol{Z}}\right)\left(\boldsymbol{W}-\mu_{\boldsymbol{W}}\right)^{\top}\right] \in \mathbb{R}^{n \times m}
$$

and

$$
\operatorname{cov}(\mathbf{Z}):=\operatorname{cov}(\mathbf{Z}, \mathbf{Z})=\mathbb{E}\left[\left(\mathbf{Z}-\mu_{\mathbf{Z}}\right)\left(\mathbf{Z}-\mu_{\mathbf{Z}}\right)^{\top}\right] \in \mathbb{R}^{n \times n}
$$

Using the identity (3.8) for (univariate) random variables $Z, W$, and the entry-wise definition of the expectation of a matrix, we also have the multivariate counterparts,

$$
\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W})=\mathbb{E}\left[\boldsymbol{Z} \boldsymbol{W}^{\top}\right]-\mu_{\boldsymbol{Z}} \mu_{\boldsymbol{W}}^{\top}
$$

and

$$
\operatorname{cov}(\mathbf{Z})=\mathbb{E}\left[\mathbf{Z} \mathbf{Z}^{\top}\right]-\mu_{\mathbf{Z}} \mu_{\mathbf{Z}}^{\top}
$$

Properties of covariance matrix. $\boldsymbol{Z}, \boldsymbol{W}, \boldsymbol{R}$ random vectors; $\boldsymbol{a}$ fixed vector. Then the following properties hold:

# Page 3

1. $\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W})=\operatorname{cov}(\boldsymbol{W}, \boldsymbol{Z})^{\top}$
2. $\operatorname{cov}(\boldsymbol{Z}+\boldsymbol{R}, \boldsymbol{W})=\operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W})+\operatorname{cov}(\boldsymbol{R}, \boldsymbol{W})$
3. $\operatorname{cov}(\boldsymbol{A} \boldsymbol{Z}, \boldsymbol{B} \boldsymbol{W})=A \operatorname{cov}(\boldsymbol{Z}, \boldsymbol{W}) \boldsymbol{B}^{\top}$
4. $\quad \operatorname{cov}(\boldsymbol{A} \boldsymbol{Z})=\boldsymbol{A} \operatorname{cov}(\boldsymbol{Z}) \boldsymbol{A}^{\top} \quad$ (from 3)
5. $\quad V\left(\boldsymbol{a}^{\top} \boldsymbol{Z}\right)=\boldsymbol{a}^{\top} \operatorname{cov}(\boldsymbol{Z}) \boldsymbol{a} \quad$ (from 4)
6. $\operatorname{cov}(\boldsymbol{Z})$ is a nonnegative definite matrix (from 5 )

Now return to the linear model. By the definition of the covariance matrix and expectation, (12) is equivalent to

$$
\boldsymbol{Y}=\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon}, \quad \mathbb{E} \boldsymbol{\epsilon}=\mathbf{0}, \quad \operatorname{cov}(\boldsymbol{\epsilon})=\sigma^{2} \boldsymbol{I}_{n}
$$

where $\boldsymbol{X}$ is a fixed (nonrandom) $n \times p+1$ matrix, and $\boldsymbol{\beta}, \sigma^{2}$ unknown.
The vector $\epsilon$ is called the errors. We will sometimes write $\epsilon \sim\left(\mathbf{0}, \sigma^{2} \boldsymbol{I}_{n}\right)$ as shorthand for $\mathbb{E} \boldsymbol{\epsilon}=\mathbf{0}, \quad \operatorname{cov}(\boldsymbol{\epsilon})=$ $\sigma^{2} \boldsymbol{I}_{n}$. With this notation, (15) can be written even more compactly as: $\boldsymbol{Y}=\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon}, \boldsymbol{\epsilon} \sim\left(\mathbf{0}, \sigma^{2} \boldsymbol{I}_{n}\right)$.

