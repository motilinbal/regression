# Page 0

# 5 Inference under the linear model 

Recall that the LS estimator is given by

$$
\hat{\boldsymbol{\beta}}=\boldsymbol{A} \boldsymbol{Y}, \quad \boldsymbol{A}:=\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top}
$$

The corresponding vectors of fitted (predicted) values and residuals are given, respectively, by

$$
\hat{\mathbf{Y}}=\boldsymbol{X} \hat{\boldsymbol{\beta}}, \quad \boldsymbol{e}=\mathbf{Y}-\hat{\mathbf{Y}}
$$

and we have $\boldsymbol{e} \perp \hat{\mathbf{Y}}$ (this was a defining property of the LS solution). Remember that all of this holds regardless of the assumptions of the linear model, and in fact requires no statistical assumptions at all.

Now, assume the linear model (16). Then the vector $\mathbf{Y}$ becomes a random vector, with distribution generally depending on the unknown parameters $\boldsymbol{\beta}$ and $\sigma^{2}$. Same goes for $\hat{\boldsymbol{\beta}}$, which now has a meaning as an estimator of the unknown parameter $\boldsymbol{\beta}$, the true (unknown) coefficient vector. Let us calculate its mean and covariance matrix. We have

$$
\mathbb{E}[\boldsymbol{Y}]=\mathbb{E}[\boldsymbol{X} \boldsymbol{\beta}]+\mathbb{E}[\boldsymbol{\epsilon}]=\boldsymbol{X} \boldsymbol{\beta}
$$

and

$$
\operatorname{cov}(\boldsymbol{Y})=\operatorname{cov}(\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon})=\operatorname{cov}(\boldsymbol{\epsilon})=\sigma^{2} \boldsymbol{I}_{n}
$$

Also, we can now calculate

$$
\mathbb{E}[\hat{\boldsymbol{\beta}}]=\mathbb{E}[\boldsymbol{A} \boldsymbol{Y}]=\boldsymbol{A} \mathbb{E} \boldsymbol{Y}=\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top}(\boldsymbol{X} \boldsymbol{\beta})=\boldsymbol{\beta}
$$

and

$$
\begin{aligned}
\operatorname{cov}(\hat{\boldsymbol{\beta}})=\operatorname{cov}(\boldsymbol{A} \boldsymbol{Y})=\boldsymbol{A} \operatorname{cov}(\boldsymbol{Y}) \boldsymbol{A}^{\top}=\boldsymbol{A}\left(\sigma^{2} \boldsymbol{I}\right) \boldsymbol{A}^{\top} & =\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top}\left[\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top}\right]^{\top} \\
& =\sigma^{2}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top} \boldsymbol{X}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1}=\sigma^{2}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1}
\end{aligned}
$$

Hence

$$
\mathbb{E}[\hat{\boldsymbol{\beta}}]=\boldsymbol{\beta}, \quad \operatorname{cov}(\hat{\boldsymbol{\beta}})=\sigma^{2}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1} \boldsymbol{X}^{\top} \boldsymbol{X}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1}=\sigma^{2}\left(\boldsymbol{X}^{\top} \boldsymbol{X}\right)^{-1}
$$

Estimating the noise level $\sigma^{2}$. Intuitively, it makes sense to use the residual vector $\boldsymbol{e}$ to estimate $\sigma^{2}$. Define

$$
\hat{\sigma}^{2}:=\frac{1}{n-p-1}\|\boldsymbol{e}\|^{2}=\frac{1}{n-p-1} \sum_{i=1}^{n} e_{i}^{2}
$$

Proposition 8. $\hat{\sigma}^{2}$ defined above is an unbiased estimator of $\sigma^{2}$.
Proof. Let $M=\operatorname{Im}(\boldsymbol{X})$. Denote $\boldsymbol{Q}:=\boldsymbol{I}-\boldsymbol{P}$ for the projection matrix onto $M^{\perp}$. Then

$$
\boldsymbol{e}=\mathbf{Y}-\hat{\mathbf{Y}}=\mathbf{Y}-\boldsymbol{P} \mathbf{Y}=(\boldsymbol{I}-\boldsymbol{P}) \mathbf{Y}=\boldsymbol{Q} \boldsymbol{Y}
$$

and note that we also have

$$
\boldsymbol{Q} \mathbf{Y}=\boldsymbol{Q}(\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon})=\boldsymbol{Q} \boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{Q} \boldsymbol{\epsilon}=\boldsymbol{Q} \boldsymbol{\epsilon}
$$

# Page 1

because $\boldsymbol{Q} \boldsymbol{X}=\mathbf{0}$ (every column of $\boldsymbol{X}$ is in $\operatorname{Im}(\boldsymbol{X})$ ), so we can conclude $\boldsymbol{e}=\boldsymbol{Q} \boldsymbol{\epsilon}$. Therefore,

$$
\|\boldsymbol{e}\|^{2}=\|\boldsymbol{Q} \boldsymbol{\epsilon}\|^{2}=\boldsymbol{\epsilon}^{\top} \boldsymbol{Q}^{\top} \boldsymbol{Q} \boldsymbol{\epsilon}=\boldsymbol{\epsilon}^{\top} \boldsymbol{Q} \boldsymbol{\epsilon}=\sum_{i} \sum_{j} Q_{i j} \epsilon_{i} \epsilon_{j}
$$

since $\boldsymbol{Q}$ is symmetric and idempotent (projection matrix), and so

$$
\mathbb{E}\|\boldsymbol{e}\|^{2}=\mathbb{E}\|\boldsymbol{Q} \boldsymbol{\epsilon}\|^{2}=\mathbb{E}\left[\boldsymbol{\epsilon}^{\top} \boldsymbol{Q}^{\top} \boldsymbol{Q} \boldsymbol{\epsilon}\right]=\mathbb{E}\left[\boldsymbol{\epsilon}^{\top} \boldsymbol{Q} \boldsymbol{\epsilon}\right]=\mathbb{E}\left[\sum_{i} \sum_{j} Q_{i j} \epsilon_{i} \epsilon_{j}\right]=\sum_{i} \sum_{j} Q_{i j} \mathbb{E}\left[\epsilon_{i} \epsilon_{j}\right]
$$

Also, because $\mathbb{E} \epsilon_{i}=0$ by assumption, we have

$$
\mathbb{E}\left[\epsilon_{i} \epsilon_{j}\right]=\operatorname{Cov}\left(\epsilon_{i}, \epsilon_{j}\right)= \begin{cases}\sigma^{2}, & i=j \\ 0, & \text { otherwise }\end{cases}
$$

Continuing from (17),

$$
\mathbb{E}\|\boldsymbol{e}\|^{2}=\sum_{i} \sum_{j} Q_{i j} \mathbb{E}\left[\epsilon_{i} \epsilon_{j}\right]=\sum_{i} Q_{i i} \mathbb{E}\left[\epsilon_{i}^{2}\right]=\sum_{i} Q_{i i} V\left(\epsilon_{i}\right)=\sigma^{2} \sum_{i} Q_{i i}=\sigma^{2} \operatorname{tr}(\boldsymbol{Q})
$$

Now, we known that, as a projection matrix, $\boldsymbol{Q}$ is similar to a diagonal matrix $\boldsymbol{D}$ whose diagonal has $\operatorname{dim}(\boldsymbol{Q})=n-(p+1)=n-p-1$ entries equal to 1 , and the rest $p+1$ entries are zero. But the trace is preserved under the similarity relation, meaning that $\operatorname{tr}(Q)=\operatorname{tr}(\boldsymbol{D})=n-p-1$. Continuing from (18), we get

$$
\mathbb{E}\|\boldsymbol{e}\|^{2}=\sigma^{2} \operatorname{tr}(\boldsymbol{Q})=\sigma^{2}(n-p-1)
$$

implying

$$
\mathbb{E}\left[\frac{1}{n-p-1}\|\boldsymbol{e}\|^{2}\right]=\sigma^{2}
$$

We can give an alternative, shorter proof using the following general result.
Lemma 1. For any random vector $\boldsymbol{Z}$ it holds that

$$
\mathbb{E}\|\boldsymbol{Z}\|^{2}=\operatorname{tr}\left(\mathbb{E}\left[\boldsymbol{Z} \boldsymbol{Z}^{\top}\right]\right)=\operatorname{tr}\left(\operatorname{cov}(\boldsymbol{Z})+\boldsymbol{\mu}_{\boldsymbol{Z}} \boldsymbol{\mu}_{\boldsymbol{Z}}^{\top}\right)
$$

where $\boldsymbol{\mu}_{\boldsymbol{Z}}:=\mathbb{E} \boldsymbol{Z}$. As a special case, if $\mu_{\boldsymbol{Z}}=\mathbf{0}$, then $\mathbb{E}\|\boldsymbol{Z}\|^{2}=\operatorname{tr}(\operatorname{cov}(\boldsymbol{Z}))$.
Proof of lemma. . We have

$$
\mathbb{E}\|\boldsymbol{Z}\|^{2}=\mathbb{E}\left(\boldsymbol{Z}^{\top} \boldsymbol{Z}\right) \stackrel{(a)}{=} \mathbb{E}\left[\operatorname{tr}\left(\boldsymbol{Z}^{\top} \boldsymbol{Z}\right)\right] \stackrel{(b)}{=} \mathbb{E}\left[\operatorname{tr}\left(\boldsymbol{Z} \boldsymbol{Z}^{\top}\right)\right] \stackrel{(c)}{=} \operatorname{tr}\left(\mathbb{E}\left[\boldsymbol{Z} \boldsymbol{Z}^{\top}\right]\right) \stackrel{(d)}{=} \operatorname{tr}\left(\operatorname{cov}(\boldsymbol{Z})+\boldsymbol{\mu}_{\boldsymbol{Z}} \boldsymbol{\mu}_{\boldsymbol{Z}}^{\top}\right)
$$

where $(a)$ is because $\boldsymbol{Z}^{\top} \boldsymbol{Z}$ is a scalar; $(b)$ is due to the general identity $\operatorname{tr}(\boldsymbol{A B})=\operatorname{tr}(\boldsymbol{B} \boldsymbol{A})$; (c) is due to the definition of the expectation of a random matrix, and the linearity of the expectation; and $(d)$ is due to the general identity $\operatorname{cov}(\boldsymbol{Z})=\mathbb{E}\left[\boldsymbol{Z Z}^{\top}\right]-\boldsymbol{\mu}_{\boldsymbol{Z}} \boldsymbol{\mu}_{\boldsymbol{Z}}^{\top}$.

# Page 2

Alternative proof of Proposition 8. . Taking $\boldsymbol{Z}=\boldsymbol{e}$ in the lemma above, we have

$$
\begin{aligned}
\mathbb{E}\|\boldsymbol{e}\|^{2} & =\operatorname{tr}\left(\operatorname{cov}(\boldsymbol{e})+\boldsymbol{\mu}_{\boldsymbol{e}} \boldsymbol{\mu}_{\boldsymbol{e}}^{\top}\right) \stackrel{(a)}{=} \operatorname{tr}(\operatorname{cov}(\boldsymbol{e}))= \\
& \operatorname{tr}(\operatorname{cov}(\boldsymbol{Q} \boldsymbol{Y}))=\operatorname{tr}\left(\boldsymbol{Q} \operatorname{cov}(\boldsymbol{Y}) \boldsymbol{Q}^{\top}\right)=\operatorname{tr}\left(\boldsymbol{Q}\left[\sigma^{2} \boldsymbol{I}\right] \boldsymbol{Q}^{\top}\right)= \\
& \sigma^{2} \operatorname{tr}\left(\boldsymbol{Q} \boldsymbol{Q}^{\top}\right)=\sigma^{2} \operatorname{tr}(\boldsymbol{Q})=\sigma^{2}(n-p-1)
\end{aligned}
$$

where $(a)$ is because $\mathbb{E} \boldsymbol{e}=\mathbb{E}[\boldsymbol{Q} \mathbf{Y}]=\boldsymbol{Q} \mathbb{E} \mathbf{Y}=\boldsymbol{Q} \mathbb{E}(\boldsymbol{X} \boldsymbol{\beta}+\boldsymbol{\epsilon})=\boldsymbol{Q}[\mathbb{E} \boldsymbol{\epsilon}]=\mathbf{0}$, and the last steps are as in the original proof we gave.

