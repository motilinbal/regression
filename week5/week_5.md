# Page 0

Linear combinations. If $\boldsymbol{a}=\left(a_{0}, \ldots, a_{p}\right)^{\top} \in \mathbb{R}^{p+1}$ is a fixed vector, then

$$
\theta:=\boldsymbol{a}^{\top} \boldsymbol{\beta}=\sum_{j=0}^{p} a_{j} \beta_{j} \in \mathbb{R}
$$

is called a linear combination (of $\boldsymbol{\beta}$ ). Consider estimating a linear combination (19). A natural estimator is

$$
\hat{\theta}=\boldsymbol{a}^{\top} \hat{\boldsymbol{\beta}}=\boldsymbol{a}^{\top}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top} \boldsymbol{Y}=\boldsymbol{c}^{\top} \boldsymbol{Y}
$$

where

$$
\boldsymbol{c}:=\boldsymbol{X}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{a}
$$

and note that $\boldsymbol{c} \in \mathbb{R}^{n}$ whereas $\boldsymbol{a} \in \mathbb{R}^{p+1}$. This estimator is a linear function of $\mathbf{Y}$, and we can calculate its mean and variance under the linear model,

$$
\mathbb{E}[\hat{\theta}]=\mathbb{E}\left[\boldsymbol{a}^{\top} \hat{\boldsymbol{\beta}}\right]=\boldsymbol{a}^{\top} \mathbb{E}[\hat{\boldsymbol{\beta}}]=\boldsymbol{a}^{\top} \boldsymbol{\beta}=\theta
$$

and

$$
V(\hat{\theta})=V\left(\boldsymbol{a}^{\top} \hat{\boldsymbol{\beta}}\right)=V\left(\boldsymbol{c}^{\top} \boldsymbol{Y}\right)=\boldsymbol{c}^{\top} \operatorname{cov}(\boldsymbol{Y}) \boldsymbol{c}=\boldsymbol{c}^{\top}\left[\sigma^{2} \mathbf{I}_{n}\right] \boldsymbol{c}=\sigma^{2} \boldsymbol{c}^{\top} \boldsymbol{c}
$$

Thus $\hat{\theta}$ is a linear, unbiased estimator of $\theta$ with variance $\sigma^{2} \boldsymbol{c}^{\top} \boldsymbol{c}$. Is there are better linear unbiased estimator of $\theta$ ? First we need to define "better". The mean squared error (MSE) of an estimator $\hat{\theta}$ of $\theta$ is

$$
\operatorname{MSE}(\hat{\theta}):=\mathbb{E}_{\theta}\left[(\hat{\theta}-\theta)^{2}\right]
$$

and notice that this generally depends on the true value $\theta$. We will say that an estimator $\hat{\theta}$ of $\theta$ is better than another estimator $\tilde{\theta}$ if

$$
\operatorname{MSE}(\hat{\theta}) \leq \operatorname{MSE}(\tilde{\theta}) \quad \text { for all } \theta
$$

For any estimator $\hat{\theta}$, we have

$$
\begin{aligned}
\operatorname{MSE}(\hat{\theta}) & =\mathbb{E}\left[(\hat{\theta}-\theta)^{2}\right]=\mathbb{E}\left[(\hat{\theta}-\mathbb{E} \hat{\theta})+(\mathbb{E} \hat{\theta}-\theta)^{2}\right]= \\
& =\mathbb{E}\left[(\hat{\theta}-\mathbb{E} \hat{\theta})^{2}\right]+\mathbb{E}\left[(\mathbb{E} \hat{\theta}-\theta)^{2}\right]+2 \underbrace{\mathbb{E}[(\hat{\theta}-\mathbb{E} \hat{\theta})(\mathbb{E} \hat{\theta}-\theta)]}_{=0}= \\
& =\underbrace{\mathbb{E}\left[(\hat{\theta}-\mathbb{E} \hat{\theta})^{2}\right]}_{V(\hat{\theta})}+\underbrace{\mathbb{E}\left[(\mathbb{E} \hat{\theta}-\theta)^{2}\right]}_{(\text {bias }(\hat{\theta}))^{2}}
\end{aligned}
$$

where we used that fact that $\mathbb{E}[(\hat{\theta}-\mathbb{E} \hat{\theta})=\mathbb{E} \hat{\theta}-\mathbb{E} \hat{\theta}=0$.
We conclude from the general decomposition (5) that an unbiased estimator has

$$
\operatorname{MSE}(\hat{\theta})=V(\hat{\theta})
$$

Hence, restricting attention to unbiased estimators, the estimator $\hat{\theta}$ is better than another estimator $\tilde{\theta}$ if

$$
V(\hat{\theta}) \leq V(\tilde{\theta}) \quad \forall \theta
$$

The following theorem, maybe the most famous result in all of linear regression, says that, under the linear model (15), the LS estimator $\hat{\boldsymbol{\beta}}$ is the best linear unbiased estimator (BLUE) of $\theta$.

# Page 1

Theorem 1 (Gauss-Markov). . Let $\theta:=\boldsymbol{a}^{\top} \boldsymbol{\beta}$ be a linear combination, and assume the linear model (15). Denote by $\hat{\theta}$ the LS estimator of $\theta$ in (20), and consider another linear unbiased estimator $\hat{\theta}$ of $\theta$

$$
\hat{\theta}=\boldsymbol{d}^{\top} \boldsymbol{Y}, \quad \mathbb{E}[\hat{\theta}]=\theta \quad \forall \theta
$$

Then

$$
V(\hat{\theta}) \leq V(\hat{\theta}) \quad \forall \theta
$$

Proof. For $c$ defined in (21), write

$$
\boldsymbol{d}=\boldsymbol{c}+\boldsymbol{\Delta}, \quad \boldsymbol{\Delta}:=\boldsymbol{d}-\boldsymbol{c} \in \mathbb{R}^{n}
$$

$\hat{\theta}$ is unbiased, hence for all $\boldsymbol{\beta}$ we have

$$
\begin{aligned}
\theta=\mathbb{E} \hat{\theta}=\mathbb{E}\left[\boldsymbol{d}^{\top} \boldsymbol{Y}\right]=\mathbb{E}\left[(\boldsymbol{c}+\boldsymbol{\Delta})^{\top} \boldsymbol{Y}\right]=\mathbb{E}\left[(\boldsymbol{c}+\boldsymbol{\Delta})^{\top} \boldsymbol{Y}\right] & =\mathbb{E}\left[\left(\boldsymbol{c}^{\top} \boldsymbol{Y}\right]+\mathbb{E}\left[\left(\boldsymbol{\Delta}^{\top} \boldsymbol{Y}\right]\right.\right. \\
& \left.\left.=\theta+\boldsymbol{\Delta}^{\top} \mathbb{E}[\boldsymbol{Y}]=\theta+\boldsymbol{\Delta}^{\top} \boldsymbol{X} \boldsymbol{\beta}\right]\right.
\end{aligned}
$$

where the second-to-last equality is due to unbiasedness of $\hat{\theta}$. Comparing the two extreme sides of the sequence of the equality, we get

$$
\boldsymbol{\Delta}^{\top} \boldsymbol{X} \boldsymbol{\beta}=\mathbf{0} \quad \forall \boldsymbol{\beta} \quad \Rightarrow \quad \boldsymbol{\Delta}^{\top} \boldsymbol{X}=\mathbf{0}
$$

so

$$
\boldsymbol{\Delta}^{\top} \boldsymbol{c}=\underbrace{\boldsymbol{\Delta}_{0}^{\top} \boldsymbol{X}}_{=0}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{a}=\mathbf{0}
$$

We then calculate

$$
\begin{aligned}
V(\hat{\theta})=V\left(\boldsymbol{d}^{\top} \boldsymbol{Y}\right) & =V\left[(\boldsymbol{c}+\boldsymbol{\Delta})^{\top} \mathbf{Y}\right] \\
& =\operatorname{cov}\left[(\boldsymbol{c}+\boldsymbol{\Delta})^{\top} \mathbf{Y}\right] \\
& =(\boldsymbol{c}+\boldsymbol{\Delta})^{\top} \operatorname{cov}[\boldsymbol{Y}](\boldsymbol{c}+\boldsymbol{\Delta}) \\
& =(\boldsymbol{c}+\boldsymbol{\Delta})^{\top} \sigma^{2}\left[\boldsymbol{I}_{n}\right](\boldsymbol{c}+\boldsymbol{\Delta}) \\
& =\sigma^{2}(\boldsymbol{c}+\boldsymbol{\Delta})^{\top}(\boldsymbol{c}+\boldsymbol{\Delta}) \\
& =\sigma^{2}\left(\boldsymbol{c}^{\top} \boldsymbol{c}+\boldsymbol{\Delta}^{\top} \boldsymbol{\Delta}\right) \\
& \geq \sigma^{2} \boldsymbol{c}^{\top} \boldsymbol{c} \\
& =V(\hat{\theta})
\end{aligned}
$$

# Page 2

We have considered point estimation of a scalar $\theta=\theta(\boldsymbol{\beta})$, more specifically unbiased estimation of a linear function of $\boldsymbol{\beta}$. We now want to move on to other inferential tasks, for example we'll want to use the LS estimator $\hat{\boldsymbol{\beta}}$ to construct a confidence interval for $\boldsymbol{\beta}$, or to test whether a particular coordinate $\beta_{j}$ is equal to zero. For this we will need some further assumptions on the linear model.

Review of multivariate distributions. All the concepts presented here generalize naturally beyond the two dimensional case. If $Z_{1}, Z_{2}$ are two random variables, then $Z=\left(Z_{1}, Z_{2}\right)^{\top}$ is a random vector of dimension 2. The joint cumulative distribution function (CDF) of $\mathbf{Z}$ is

$$
F_{\mathbf{Z}}\left(z_{1}, z_{2}\right):=P\left(Z_{1} \leq z_{1}, Z_{2} \leq z_{2}\right)
$$

which is always defined and determines the distribution of $\boldsymbol{Z}$. The variables $Z_{1}$ and $Z_{2}$ are (statistically) independent if

$$
F_{\mathbf{Z}}\left(z_{1}, z_{2}\right)=P\left(Z_{1} \leq z_{1}\right) P\left(Z_{2} \leq z_{2}\right) \quad \text { for all } z_{1}, z_{2} \in \mathbb{R}
$$

If the derivative

$$
f_{\mathbf{Z}}\left(z_{1}, z_{2}\right)=\frac{\partial^{2}}{\partial z_{1} z_{2}} F_{\mathbf{Z}}\left(z_{1}, z_{2}\right)
$$

exists (for all except maybe a subset of $\mathbb{R}^{2}$ of probability zero), we call $f_{\mathbf{Z}}$ the joint density of $\boldsymbol{Z}$, and we have the relation

$$
F_{\mathbf{Z}}\left(z_{1}, z_{2}\right)=\int_{-\infty}^{z_{1}} \int_{-\infty}^{z_{2}} f_{\mathbf{Z}}\left(u_{1}, u_{2}\right) d u_{1} d u_{2}
$$

Of course, the derivative is in that case an equivalent characterization of the distribution of $Z$.

# The multivariate Normal distribution. 

Definition 4. We say that a random vector $\boldsymbol{W}=\left(W_{1}, \ldots, W_{k}\right)^{\top}$ has a multivariate normal distribution if there exists a representation

$$
\boldsymbol{W} \stackrel{d}{=} \boldsymbol{\mu}+\boldsymbol{A} \mathbf{Z}
$$

where $\boldsymbol{\mu} \in \mathbb{R}^{k}$ and $\boldsymbol{A} \in \mathbb{R}^{k \times l}$ are constant (nonrandom) and where $\boldsymbol{Z}=\left(Z_{1}, \ldots, Z_{l}\right)^{\top}$ is a random vector whose components $Z_{i}$ are i.i.d. $\mathcal{N}(0,1)$ random variables (" $\stackrel{d}{=}$ means "equal in distribution").

## Properties of the multivariate Normal distribution.

1. If $\boldsymbol{W}$ has a multivariate normal distribution, then

$$
\begin{aligned}
& \mathbb{E}[\boldsymbol{W}]=\mathbb{E}[\boldsymbol{\mu}+\boldsymbol{A} \boldsymbol{Z}]=\mathbb{E}[\boldsymbol{\mu}]+\mathbb{E}[\boldsymbol{A} \boldsymbol{Z}]=\boldsymbol{\mu}+\boldsymbol{A} \mathbb{E}[\boldsymbol{Z}]=\boldsymbol{\mu} \\
& \operatorname{cov}(\boldsymbol{W})=\operatorname{cov}(\boldsymbol{\mu}+\boldsymbol{A} \boldsymbol{Z})=\operatorname{cov}(\boldsymbol{A} \boldsymbol{Z})=\boldsymbol{A} \operatorname{cov}(\boldsymbol{Z}) \boldsymbol{A}^{\top}=\boldsymbol{A} \boldsymbol{A}^{\top}
\end{aligned}
$$

Therefore, if there is another representation $\boldsymbol{W} \stackrel{d}{=} \boldsymbol{\mu}^{\prime}+\boldsymbol{A}^{\prime} \mathbf{Z}$, then necessarily $\boldsymbol{\mu}^{\prime}=\boldsymbol{\mu}$ and $\boldsymbol{A}^{\prime} \boldsymbol{A}^{\prime \top}=\boldsymbol{A} \boldsymbol{A}^{\top}$ (this, in turn, can be shown to hold if and only if $\boldsymbol{A}^{\prime}=\boldsymbol{A} \boldsymbol{U}^{\top}$ for an orthogonal matrix $\boldsymbol{U}$ - try to prove this).
2. In (22) suppose that $l=k$, and if $\boldsymbol{A}_{k \times k}$ has linearly independent columns, and denote $\boldsymbol{V}:=\boldsymbol{A} \boldsymbol{A}^{\top}$. Then

$$
f_{W}(\boldsymbol{w})=(2 \pi)^{-m / 2}|\boldsymbol{V}|^{-1 / 2} \exp \left[-(\boldsymbol{w}-\boldsymbol{\mu})^{\top} \boldsymbol{V}^{-1}(\boldsymbol{w}-\boldsymbol{\mu}) / 2\right], \quad \boldsymbol{w} \in \mathbb{R}^{m}
$$

Hence, the distribution of $\boldsymbol{W}$ in (22) is completely determined by $\boldsymbol{\mu}$ and $\boldsymbol{V}$.
We write

$$
\boldsymbol{W} \sim \mathcal{N}_{k}(\boldsymbol{\mu}, \boldsymbol{V})
$$

for the multivariate distribution with mean $\boldsymbol{\mu}$ and covariance matrix $\boldsymbol{V}$ (this notation applies whether or not $\boldsymbol{A}_{k \times k}$ has linearly independent columns).

# Page 3

3. It is a consequence of 2 that if $\boldsymbol{W}^{(1)}=\boldsymbol{\mu}+\boldsymbol{A}^{(1)} \mathbf{Z}^{(1)}$ and $\boldsymbol{W}^{(2)}=\boldsymbol{\mu}+\boldsymbol{A}^{(2)} \mathbf{Z}^{(2)}$, and if $\boldsymbol{A}^{(1)} \boldsymbol{A}^{(1) \top}=$ $\boldsymbol{A}^{(2)} \boldsymbol{A}^{(2) \top}$, then $\boldsymbol{W}^{(1)} \stackrel{d}{=} \boldsymbol{W}^{(2)} \sim \mathcal{N}_{k}(\boldsymbol{\mu}, \boldsymbol{V})$.
4. From the previous properties, if $\boldsymbol{c} \in \mathbb{R}^{k}$ is a constant vector, then

$$
\boldsymbol{c}^{\top} \boldsymbol{W} \sim \mathcal{N}\left(\boldsymbol{c}^{\top} \boldsymbol{\mu}, \boldsymbol{c}^{\top} \boldsymbol{V} \boldsymbol{c}\right)
$$

In words, a linear combination of a multivariate normal vector has a univariate normal distribution. In particular, if we take $c=(\underbrace{0, \ldots, 0}_{j-1}, 1, \underbrace{0, \ldots, 0}_{k-j})^{\top}$, then

$$
W_{j}=\boldsymbol{c}^{\top} \boldsymbol{W} \sim \mathcal{N}\left(\mu_{j}, \boldsymbol{V}_{j j}\right)
$$

5. If for a random vector $\boldsymbol{W}$ it holds that $\boldsymbol{c}^{\top} \boldsymbol{W} \sim \mathcal{N}\left(\boldsymbol{c}^{\top} \boldsymbol{\mu}, \boldsymbol{c}^{\top} \boldsymbol{V} \boldsymbol{c}\right) \forall \boldsymbol{c} \in \mathbb{R}^{m}$, where $\boldsymbol{\mu}$ and $\boldsymbol{V}$ denote the mean and covariance of $\boldsymbol{W}$, then $\boldsymbol{W}$ has a multivariate normal distribution. Combined with property 4 , this says

$$
\boldsymbol{c}^{\top} \boldsymbol{W} \sim \mathcal{N}\left(\boldsymbol{c}^{\top} \boldsymbol{\mu}, \boldsymbol{c}^{\top} \boldsymbol{V} \boldsymbol{c}\right) \quad \forall \boldsymbol{c} \in \mathbb{R}^{m} \quad \Longleftrightarrow \quad \boldsymbol{W} \sim \mathcal{N}_{m}(\boldsymbol{\mu}, \boldsymbol{V})
$$

Thus, Property 4 is in fact a defining property of the multivariate normal distribution.
5. If $\boldsymbol{C} \in \mathbb{R}^{m \times k}$ constant matrix then $\boldsymbol{C} \boldsymbol{W} \sim \mathscr{N}_{m}\left(\boldsymbol{C} \boldsymbol{\mu}, \boldsymbol{C} \boldsymbol{V} \boldsymbol{C}^{T}\right)$.
6. If $\boldsymbol{W}^{(j)} \sim \mathcal{N}_{k}\left(\boldsymbol{\mu}^{(j)}, \boldsymbol{V}^{(j)}\right), j=1, \ldots, p$, independent, and if $d_{j}$ are scalar constants, then

$$
\sum_{j=1}^{p} d_{j} \boldsymbol{W}^{(j)} \sim \mathcal{N}_{k}\left(\sum_{j=1}^{p} d_{j} \boldsymbol{\mu}^{(j)}, \sum_{j=1}^{p} d_{j}^{2} \boldsymbol{V}^{(j)}\right)
$$

7. Let $\boldsymbol{W} \sim \mathcal{N}_{k}(\boldsymbol{\mu}, \boldsymbol{V})$ and $\mathscr{I}_{1}, \mathscr{I}_{2} \subseteq\{1, \ldots, k\}$ disjoint subsets of indices. If $\operatorname{Cov}\left(W_{i}, W_{j}\right)=0 \quad \forall i \in$ $\mathscr{J}_{1}, j \in \mathscr{J}_{2}$, then the vectors

$$
\boldsymbol{W}^{(1)}=\left(W_{l}: l \in \mathscr{J}_{2}\right) \in \mathbb{R}^{|\mathcal{F}_{2}|}, \quad \boldsymbol{W}^{(2)}=\left(W_{k}: k \in \mathscr{J}_{1}\right) \in \mathbb{R}^{\left|\mathscr{J}_{1}\right|}
$$

are statistically independent.

# Distributions related to the normal. 

Definition 5 (Chi-square distribution). If $Z_{1}, Z_{2}, \ldots, Z_{k} \stackrel{\text { iid }}{\sim} \mathcal{N}(0,1)$, then the distribution of

$$
Q=\sum_{j=1}^{k} Z_{j}^{2}
$$

is called the Chi-square distribution with $k$ degrees of freedom, and we denote $Q \sim \chi_{k}^{2}$ (in R: pchisq(), qchisq(), rchisq()).
Definition 6 ( $t$-distribution). . If $Z \sim \mathcal{N}(0,1), V \sim \chi_{k}^{2}$, are independent random variables, then the distribution of

$$
T=\frac{Z}{\sqrt{V / k}}
$$

is called the $t$-distribution with $k$ degrees of freedom, and we denote $T \sim t_{k}$ (in R: pt (), $\mathrm{qt}()$, $\mathrm{rt}())$.

# Page 4

Definition 7 ( $F$ distribution). If $V_{1} \sim \chi_{k_{1}}^{2}, V_{2} \sim \chi_{k_{2}}^{2}$, are independent random variables, the distribution of

$$
F=\frac{V_{1} / k_{1}}{V_{2} / k_{2}}
$$

is called the F-distribution with $k_{1}$ and $k_{2}$ (numerator and denominator, respectively) degrees of freedom, and we denote $F \sim \mathrm{~F}_{k_{1}, k_{2}}$.

Proposition. If $Q \sim \chi_{k}^{2}$, then $\mathbb{E} Q=k$.
Proof. For $Z_{i} \sim \mathcal{N}(0,1)$, iid for $i=1, \ldots, k$, we can write $Q \stackrel{d}{=} \sum_{i=1}^{k} Z_{i}^{2}$, where " $\stackrel{d}{=}$ " means "equal in distribution". Then $\mathbb{E} Q \stackrel{d}{=} \mathbb{E} \sum_{i=1}^{k} Z_{i}^{2}=\sum_{i=1}^{k} \mathbb{E} Z_{i}^{2}=\sum_{i=1}^{k} V\left(Z_{i}\right)=k$.

Proposition. Let $\boldsymbol{Z} \sim \mathcal{N}_{n}(\mathbf{0}, \boldsymbol{I})$, and $\boldsymbol{P}$ be a square symmetric $\left(\boldsymbol{P}^{\top}=\boldsymbol{P}\right)$ and idempotent $\left(\boldsymbol{P}^{2}=\boldsymbol{P}\right)$ matrix with $\operatorname{rank}(\boldsymbol{P})=r$. Then $\|\boldsymbol{P} Z\|^{2} \sim \chi_{r}^{2}$.
Proof. From a previous lemma, since $\mathbb{E}[\boldsymbol{P} \boldsymbol{Z}]=\boldsymbol{P} \mathbb{E}[\boldsymbol{Z}]=\mathbf{0}$, we have $\mathbb{E}\|\boldsymbol{P} \boldsymbol{Z}\|^{2}=\operatorname{tr}(\operatorname{cov}[\boldsymbol{P} \boldsymbol{Z}])=$ $\operatorname{tr}\left(\boldsymbol{P} \boldsymbol{I} \boldsymbol{P}^{\top}\right)=\operatorname{tr}(\boldsymbol{P})=r$, where the last equality is because $\boldsymbol{P}$ is similar to a diagonal matrix with $r$ nonzero elements on its diagonal.

# Inference under the normal linear model. 

Recall:

$$
\text { The linear model: } \quad \boldsymbol{Y}=\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon}, \quad \mathbb{E} \boldsymbol{\epsilon}=\mathbf{0}, \quad \operatorname{cov}(\boldsymbol{\epsilon})=\sigma^{2} \boldsymbol{I}_{n}
$$

We will now make the additional assumption that the error term $\epsilon$ has a multivariate normal distribution. In other words, we will assume The normal linear model:

$$
\text { The normal linear model: } \quad \boldsymbol{Y}=\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon}, \quad \boldsymbol{\epsilon} \sim \mathscr{N}_{n}\left(\mathbf{0}, \sigma^{2} \boldsymbol{I}_{n}\right)
$$

The additional normality assumption will enable us to address inferential tasks beyond point estimation, e.g., to construct a confidence interval for a linear combination of $\hat{\boldsymbol{\beta}}$. Indeed, if we assume $\boldsymbol{\epsilon}$ has a multivariate normal distribution, then we can derive exact distributions of $\hat{\boldsymbol{\beta}}, \hat{\sigma}^{2}$, and their joint.

Distribution of $\hat{\boldsymbol{\beta}}$. Recall that, for $\boldsymbol{A}:=\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top} \in \mathbb{R}^{(p+1) \times n}$, we have

$$
\begin{aligned}
\hat{\boldsymbol{\beta}}=\boldsymbol{A} \boldsymbol{Y} & =\boldsymbol{A}(\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon}) \\
& =\boldsymbol{A} \boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{A} \boldsymbol{\epsilon} \\
& =\boldsymbol{\beta}+\boldsymbol{A} \boldsymbol{\epsilon} \\
& \stackrel{d}{=} \boldsymbol{\beta}+(\sigma \boldsymbol{A}) \mathbf{Z}
\end{aligned}
$$

where $\boldsymbol{Z} \sim \mathcal{N}_{n}(\mathbf{0}, \boldsymbol{I})$. Hence, by definition, $\hat{\boldsymbol{\beta}}$ has a multivariate normal distribution. We have already calculated the moments of $\hat{\boldsymbol{\beta}}$,

$$
\mathbb{E} \hat{\boldsymbol{\beta}}=\boldsymbol{\beta}, \quad \operatorname{cov}(\hat{\boldsymbol{\beta}})=\sigma^{2}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1}
$$

so in conclusion we have

$$
\hat{\boldsymbol{\beta}} \sim \mathscr{N}_{p+1}\left(\boldsymbol{\beta}, \sigma^{2}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1}\right)
$$

# Page 5

Distribution of $\hat{\sigma}^{2}$. Recall that $\boldsymbol{e}=\boldsymbol{Q} \boldsymbol{\epsilon}$, where $\boldsymbol{Q}$ is the $n \times n$ projection matrix onto the orthogonal complement of $\operatorname{Im}(\boldsymbol{X})$. By a previous result, $\|\boldsymbol{e}\|^{2} \sim \sigma^{2} \chi_{n-p-1}^{2}$. This gives

$$
\frac{n-p-1}{\sigma^{2}} \hat{\sigma}^{2} \sim \chi_{n-p-1}^{2} \quad \Longleftrightarrow \quad \frac{\hat{\sigma}^{2}}{\hat{\sigma}^{2}} \sim \frac{\chi_{n-p-1}^{2}}{n-p-1} \sim t_{n-p-1}
$$

Joint distribution of $\hat{\boldsymbol{\beta}}$ and $\hat{\sigma}^{2}$. For $\boldsymbol{A}:=\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top} \in \mathbb{R}^{(p+1) \times n}$, first note that

$$
\hat{\boldsymbol{\beta}}=\boldsymbol{A} \boldsymbol{Y}=\boldsymbol{A}\left(\boldsymbol{P}_{M} \boldsymbol{Y}+\boldsymbol{P}_{M^{\wedge}} \boldsymbol{Y}\right)=\boldsymbol{P P P _ { M } \boldsymbol { Y } + \boldsymbol { A } \boldsymbol { P } _ { M } ^ { \wedge } \boldsymbol { Y } = \boldsymbol { A } \boldsymbol { P } _ { M } \boldsymbol { Y }}
$$

Then,

$$
\begin{aligned}
\operatorname{cov}(\hat{\boldsymbol{\beta}}, \boldsymbol{e})=\operatorname{cov}\left(\boldsymbol{A} \boldsymbol{P}_{M} \boldsymbol{Y},\left(\boldsymbol{I}_{n}-\boldsymbol{P}_{M}\right) \boldsymbol{Y}\right) & =\boldsymbol{A} \boldsymbol{P}_{M} \operatorname{cov}(\boldsymbol{Y})\left(\boldsymbol{I}_{n}-\boldsymbol{P}_{M}\right)^{\top} \\
& =\sigma^{2} \boldsymbol{A} \boldsymbol{P}_{M}\left(\boldsymbol{I}_{n}-\boldsymbol{P}_{M}\right)=\mathbf{0}
\end{aligned}
$$

Moreover,

$$
\left[\begin{array}{l}
\hat{\boldsymbol{\beta}} \\
\boldsymbol{e}
\end{array}\right]=\left[\begin{array}{c}
\boldsymbol{A} \\
\boldsymbol{I}_{n}-\boldsymbol{P}_{M}
\end{array}\right] \boldsymbol{Y} \stackrel{\beta}{=}\left[\begin{array}{c}
\boldsymbol{A} \\
\boldsymbol{I}_{n}-\boldsymbol{P}_{M}
\end{array}\right](\boldsymbol{X} \boldsymbol{\beta}+\sigma \boldsymbol{Z})
$$

i.e., $\left[\begin{array}{c}\hat{\boldsymbol{\beta}} \\ \boldsymbol{e}\end{array}\right]$ has a multivariate normal distribution. Together, (23) and (24) imply that $\hat{\beta}$ and $\hat{\sigma}^{2}$ are statistically independent (because uncorrelated=independent under joint normality).

