Let's delve deeper into the theoretical underpinnings of positive semi-definite matrices using concepts from linear algebra and functional analysis.

We are primarily working in the finite-dimensional real vector space $\mathbb{R}^p$ equipped with the standard Euclidean inner product $\langle \boldsymbol{x}, \boldsymbol{y} \rangle = \boldsymbol{x}^{\top} \boldsymbol{y}$. A matrix $\mathbf{B} \in \mathbb{R}^{p \times p}$ can be viewed as representing a linear operator $T_{\mathbf{B}}: \mathbb{R}^p \to \mathbb{R}^p$ via $T_{\mathbf{B}}(\boldsymbol{v}) = \mathbf{B}\boldsymbol{v}$.

## Key Concepts

1.  **Self-Adjoint Operator:** An operator $T$ on an inner product space $V$ is self-adjoint if $\langle T(\boldsymbol{v}), \boldsymbol{w} \rangle = \langle \boldsymbol{v}, T(\boldsymbol{w}) \rangle$ for all $\boldsymbol{v}, \boldsymbol{w} \in V$. With the standard inner product in $\mathbb{R}^p$, the operator $T_{\mathbf{B}}$ is self-adjoint if and only if the matrix $\mathbf{B}$ is symmetric ($\mathbf{B} = \mathbf{B}^{\top}$).
    * *Proof:* $\langle T_{\mathbf{B}}(\boldsymbol{v}), \boldsymbol{w} \rangle = (\mathbf{B}\boldsymbol{v})^{\top} \boldsymbol{w} = \boldsymbol{v}^{\top} \mathbf{B}^{\top} \boldsymbol{w}$.
        $\langle \boldsymbol{v}, T_{\mathbf{B}}(\boldsymbol{w}) \rangle = \boldsymbol{v}^{\top} (\mathbf{B}\boldsymbol{w})$.
        These are equal for all $\boldsymbol{v}, \boldsymbol{w}$ if and only if $\mathbf{B}^{\top} = \mathbf{B}$.
    * Since variance-covariance matrices are symmetric, $\operatorname{Var}(\boldsymbol{Z})$ and $\operatorname{Var}(\boldsymbol{W})$ are symmetric, and thus their difference $\mathbf{B} = \operatorname{Var}(\boldsymbol{Z}) - \operatorname{Var}(\boldsymbol{W})$ is symmetric. Therefore, the operator $T_{\mathbf{B}}$ associated with $\mathbf{B}$ is self-adjoint.

2.  **Positive Semi-definite (PSD) Operator:** A **self-adjoint** operator $T$ is called positive semi-definite if $\langle T(\boldsymbol{v}), \boldsymbol{v} \rangle \geq 0$ for all $\boldsymbol{v} \in V$.

3.  **Square Root of an Operator:** For a positive semi-definite operator $T$, a positive semi-definite square root is a positive semi-definite operator $S$ such that $S^2 = T$ (where $S^2$ means applying $S$ twice, $S \circ S$). A key theorem states that every positive semi-definite operator $T$ has a *unique* positive semi-definite square root, often denoted $T^{1/2}$.

*(Note: Isometries preserve distances, $||T(\boldsymbol{v})|| = ||\boldsymbol{v}||$. Unitary operators (in complex spaces) or Orthogonal operators (in real spaces) preserve inner products, $\langle T(\boldsymbol{v}), T(\boldsymbol{w}) \rangle = \langle \boldsymbol{v}, \boldsymbol{w} \rangle$. These are related to orthogonal matrices $\mathbf{P}$ used in diagonalization, where $\mathbf{P}^{\top}\mathbf{P} = \mathbf{I}$, meaning $T_{\mathbf{P}}$ is an orthogonal operator/isometry.)*

---

## Proof: A symmetric matrix B is PSD $\iff$ its unique PSD square root B$^{1/2}$ exists

Let $\mathbf{B}$ be a symmetric matrix in $\mathbb{R}^{p \times p}$, and let $T_{\mathbf{B}}$ be the corresponding self-adjoint linear operator.

**($\Longleftarrow$) Assume the (unique) positive semi-definite square root $\mathbf{B}^{1/2}$ exists.**

Let $\mathbf{S} = \mathbf{B}^{1/2}$. By definition, $\mathbf{S}$ is symmetric (hence represents a self-adjoint operator $T_{\mathbf{S}}$) and positive semi-definite, and $\mathbf{S}^2 = \mathbf{B}$. We want to show that $\mathbf{B}$ is positive semi-definite.

We examine the quadratic form associated with $\mathbf{B}$, which corresponds to the inner product definition for $T_{\mathbf{B}}$:
$$
\langle T_{\mathbf{B}}(\boldsymbol{v}), \boldsymbol{v} \rangle = \langle \mathbf{B}\boldsymbol{v}, \boldsymbol{v} \rangle = \boldsymbol{v}^{\top} \mathbf{B} \boldsymbol{v}
$$
Substitute $\mathbf{B} = \mathbf{S}^2$:
$$
\boldsymbol{v}^{\top} \mathbf{S}^2 \boldsymbol{v} = \boldsymbol{v}^{\top} \mathbf{S} \mathbf{S} \boldsymbol{v}
$$
Since $\mathbf{S}$ is symmetric ($\mathbf{S} = \mathbf{S}^{\top}$), we can write:
$$
\boldsymbol{v}^{\top} \mathbf{S}^{\top} \mathbf{S} \boldsymbol{v} = (\mathbf{S}\boldsymbol{v})^{\top} (\mathbf{S}\boldsymbol{v})
$$
Using the definition of the standard inner product, this is:
$$
\langle \mathbf{S}\boldsymbol{v}, \mathbf{S}\boldsymbol{v} \rangle = \langle T_{\mathbf{S}}(\boldsymbol{v}), T_{\mathbf{S}}(\boldsymbol{v}) \rangle
$$
This is the squared norm $||T_{\mathbf{S}}(\boldsymbol{v})||^2$. Since the norm squared of any vector is non-negative, we have:
$$
\langle T_{\mathbf{B}}(\boldsymbol{v}), \boldsymbol{v} \rangle = ||T_{\mathbf{S}}(\boldsymbol{v})||^2 \geq 0 \quad \text{for all } \boldsymbol{v} \in \mathbb{R}^p
$$
Since $T_{\mathbf{B}}$ is self-adjoint (because $\mathbf{B}$ is symmetric) and $\langle T_{\mathbf{B}}(\boldsymbol{v}), \boldsymbol{v} \rangle \geq 0$, the operator $T_{\mathbf{B}}$ is positive semi-definite. This means the matrix $\mathbf{B}$ is positive semi-definite.

**($\implies$) Assume $\mathbf{B}$ is symmetric and positive semi-definite.**

We need to show that a unique positive semi-definite square root matrix $\mathbf{B}^{1/2}$ exists.

Since $\mathbf{B}$ is symmetric, the **Spectral Theorem** applies. This theorem states that $\mathbf{B}$ is orthogonally diagonalizable. That is, there exists an orthogonal matrix $\mathbf{P}$ (meaning $\mathbf{P}^{\top}\mathbf{P} = \mathbf{P}\mathbf{P}^{\top} = \mathbf{I}$, so $T_{\mathbf{P}}$ is an orthogonal operator/isometry) and a diagonal matrix $\mathbf{D}$ such that:
$$
\mathbf{B} = \mathbf{P} \mathbf{D} \mathbf{P}^{\top}
$$
The diagonal entries of $\mathbf{D}$, denoted $\lambda_1, \lambda_2, \dots, \lambda_p$, are the eigenvalues of $\mathbf{B}$. The columns of $\mathbf{P}$ are the corresponding orthonormal eigenvectors.

Now, use the fact that $\mathbf{B}$ is positive semi-definite. By definition, this means $\boldsymbol{v}^{\top}\mathbf{B}\boldsymbol{v} \geq 0$ for all $\boldsymbol{v}$. Let $\boldsymbol{x}_i$ be an eigenvector corresponding to eigenvalue $\lambda_i$. Then:
$$
\boldsymbol{x}_i^{\top} \mathbf{B} \boldsymbol{x}_i = \boldsymbol{x}_i^{\top} (\lambda_i \boldsymbol{x}_i) = \lambda_i (\boldsymbol{x}_i^{\top} \boldsymbol{x}_i) = \lambda_i ||\boldsymbol{x}_i||^2
$$
Since $\mathbf{B}$ is psd, $\boldsymbol{x}_i^{\top} \mathbf{B} \boldsymbol{x}_i \geq 0$. As eigenvectors are non-zero, $||\boldsymbol{x}_i||^2 > 0$. Therefore, we must have $\lambda_i \geq 0$ for all eigenvalues $i=1, \dots, p$. All eigenvalues of a symmetric positive semi-definite matrix are non-negative.

Since all $\lambda_i \geq 0$, we can define their non-negative square roots $\sqrt{\lambda_i}$. Construct a diagonal matrix $\mathbf{D}^{1/2}$ where $(\mathbf{D}^{1/2})_{ii} = \sqrt{\lambda_i}$.

Now, define the matrix $\mathbf{S}$ as:
$$
\mathbf{S} = \mathbf{P} \mathbf{D}^{1/2} \mathbf{P}^{\top}
$$
We need to show that $\mathbf{S}$ is the required unique positive semi-definite square root of $\mathbf{B}$.

1.  **Is $\mathbf{S}$ a square root?**
    $$
    \mathbf{S}^2 = (\mathbf{P} \mathbf{D}^{1/2} \mathbf{P}^{\top}) (\mathbf{P} \mathbf{D}^{1/2} \mathbf{P}^{\top}) = \mathbf{P} \mathbf{D}^{1/2} (\mathbf{P}^{\top}\mathbf{P}) \mathbf{D}^{1/2} \mathbf{P}^{\top}
    $$
    Since $\mathbf{P}^{\top}\mathbf{P} = \mathbf{I}$:
    $$
    \mathbf{S}^2 = \mathbf{P} \mathbf{D}^{1/2} \mathbf{I} \mathbf{D}^{1/2} \mathbf{P}^{\top} = \mathbf{P} (\mathbf{D}^{1/2})^2 \mathbf{P}^{\top}
    $$
    Since $(\mathbf{D}^{1/2})^2$ is the diagonal matrix with entries $(\sqrt{\lambda_i})^2 = \lambda_i$, we have $(\mathbf{D}^{1/2})^2 = \mathbf{D}$.
    $$
    \mathbf{S}^2 = \mathbf{P} \mathbf{D} \mathbf{P}^{\top} = \mathbf{B}
    $$
    So, $\mathbf{S}$ is indeed a square root of $\mathbf{B}$.

2.  **Is $\mathbf{S}$ symmetric?**
    $$
    \mathbf{S}^{\top} = (\mathbf{P} \mathbf{D}^{1/2} \mathbf{P}^{\top})^{\top} = (\mathbf{P}^{\top})^{\top} (\mathbf{D}^{1/2})^{\top} \mathbf{P}^{\top} = \mathbf{P} \mathbf{D}^{1/2} \mathbf{P}^{\top} = \mathbf{S}
    $$
    (We used $(\mathbf{A}\mathbf{B})^{\top} = \mathbf{B}^{\top}\mathbf{A}^{\top}$, $(\mathbf{A}^{\top})^{\top} = \mathbf{A}$, and the fact that diagonal matrices are symmetric). Yes, $\mathbf{S}$ is symmetric.

3.  **Is $\mathbf{S}$ positive semi-definite?**
    Since $\mathbf{S}$ is symmetric, we check its eigenvalues. The eigenvalues of $\mathbf{S} = \mathbf{P} \mathbf{D}^{1/2} \mathbf{P}^{\top}$ are the diagonal entries of $\mathbf{D}^{1/2}$, which are $\sqrt{\lambda_i}$. Since $\lambda_i \geq 0$, we have $\sqrt{\lambda_i} \geq 0$. A symmetric matrix with non-negative eigenvalues is positive semi-definite. Yes, $\mathbf{S}$ is psd.

We have constructed a matrix $\mathbf{S}$ which is symmetric, positive semi-definite, and satisfies $\mathbf{S}^2 = \mathbf{B}$. This proves the existence of such a square root. The uniqueness part is a standard result often shown by considering operators commuting with $\mathbf{B}$.

---

## Relating $\boldsymbol{v}^{\top} \mathbf{B} \boldsymbol{v} \geq 0$ to the Theoretical Definition

As established earlier:

* A matrix $\mathbf{B}$ is symmetric if and only if its associated operator $T_{\mathbf{B}}(\boldsymbol{v}) = \mathbf{B}\boldsymbol{v}$ is self-adjoint with respect to the standard inner product $\langle \boldsymbol{x}, \boldsymbol{y} \rangle = \boldsymbol{x}^{\top}\boldsymbol{y}$.
* The definition of a positive semi-definite *operator* $T$ requires that $T$ is self-adjoint and satisfies $\langle T(\boldsymbol{v}), \boldsymbol{v} \rangle \geq 0$ for all $\boldsymbol{v}$.

The condition $\boldsymbol{v}^{\top} \mathbf{B} \boldsymbol{v} \geq 0$ for all $\boldsymbol{v} \in \mathbb{R}^p$ can be rewritten using the standard inner product and the operator $T_{\mathbf{B}}$:
$$
\boldsymbol{v}^{\top} \mathbf{B} \boldsymbol{v} = \boldsymbol{v}^{\top} (\mathbf{B}\boldsymbol{v}) = \langle \boldsymbol{v}, \mathbf{B}\boldsymbol{v} \rangle = \langle \boldsymbol{v}, T_{\mathbf{B}}(\boldsymbol{v}) \rangle
$$
So, the condition $\boldsymbol{v}^{\top} \mathbf{B} \boldsymbol{v} \geq 0$ is identical to $\langle \boldsymbol{v}, T_{\mathbf{B}}(\boldsymbol{v}) \rangle \geq 0$.

In the context of the original problem, $\mathbf{B} = \operatorname{Var}(\boldsymbol{Z}) - \operatorname{Var}(\boldsymbol{W})$. Since variance-covariance matrices are symmetric, $\mathbf{B}$ is symmetric. This ensures the associated operator $T_{\mathbf{B}}$ is self-adjoint.

Therefore, the condition $\boldsymbol{v}^{\top} \mathbf{B} \boldsymbol{v} \geq 0$ for all $\boldsymbol{v}$ directly corresponds to the definition of the self-adjoint operator $T_{\mathbf{B}}$ being positive semi-definite: $\langle T_{\mathbf{B}}(\boldsymbol{v}), \boldsymbol{v} \rangle \geq 0$ for all $\boldsymbol{v}$. This is why $\boldsymbol{v}^{\top} \mathbf{B} \boldsymbol{v} \geq 0$ (along with $\mathbf{B}$ being symmetric) is the definition of the matrix $\mathbf{B}$ being positive semi-definite.