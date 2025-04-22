Proof: $\operatorname{Cov}(A Z, B W) = A \operatorname{Cov}(Z, W) B^T$

Let $Z$ be an $n \times 1$ random vector and $W$ be an $m \times 1$ random vector.
Let $A$ be a $p \times n$ constant matrix and $B$ be a $q \times m$ constant matrix.
The vectors $AZ$ and $BW$ have dimensions $p \times 1$ and $q \times 1$ respectively.
The covariance matrix $\operatorname{Cov}(AZ, BW)$ will have dimensions $p \times q$.

The $(i, j)$-th element of the covariance matrix $\operatorname{Cov}(AZ, BW)$ is defined as the covariance between the $i$-th element of $AZ$ and the $j$-th element of $BW$:
$$[\operatorname{Cov}(AZ, BW)]_{ij} = \operatorname{Cov}((AZ)_i, (BW)_j)$$
where $1 \le i \le p$ and $1 \le j \le q$.

We can express the elements $(AZ)_i$ and $(BW)_j$ using matrix-vector multiplication definitions:
$$(AZ)_i = \sum_{k=1}^n A_{ik} Z_k$$
$$(BW)_j = \sum_{l=1}^m B_{jl} W_l$$
Here, $A_{ik}$ is the element in the $i$-th row and $k$-th column of matrix $A$, $Z_k$ is the $k$-th element of vector $Z$, $B_{jl}$ is the element in the $j$-th row and $l$-th column of matrix $B$, and $W_l$ is the $l$-th element of vector $W$.

Substituting these into the covariance definition:
$$[\operatorname{Cov}(AZ, BW)]_{ij} = \operatorname{Cov}\left(\sum_{k=1}^n A_{ik} Z_k, \sum_{l=1}^m B_{jl} W_l\right)$$

Now, we use the bilinearity property of covariance. For scalar random variables $X_k, Y_l$ and constants $a_k, b_l$, this property states:
$$\operatorname{Cov}\left(\sum_k a_k X_k, \sum_l b_l Y_l\right) = \sum_k \sum_l a_k b_l \operatorname{Cov}(X_k, Y_l)$$Applying this to our expression, with $a_k = A_{ik}$, $X_k = Z_k$, $b_l = B_{jl}$, and $Y_l = W_l$:$$[\operatorname{Cov}(AZ, BW)]_{ij} = \sum_{k=1}^n \sum_{l=1}^m A_{ik} B_{jl} \operatorname{Cov}(Z_k, W_l)$$

Recall that $\operatorname{Cov}(Z_k, W_l)$ is the $(k, l)$-th element of the covariance matrix $\operatorname{Cov}(Z, W)$. Let's denote $C = \operatorname{Cov}(Z, W)$, so $C_{kl} = \operatorname{Cov}(Z_k, W_l)$. The matrix $C$ has dimensions $n \times m$.
Substituting this notation:
$$[\operatorname{Cov}(AZ, BW)]_{ij} = \sum_{k=1}^n \sum_{l=1}^m A_{ik} C_{kl} B_{jl}$$

Now we need to show that this expression is equivalent to the $(i, j)$-th element of the matrix product $A C B^T = A \operatorname{Cov}(Z, W) B^T$.
Let's compute the $(i, j)$-th element of $A C B^T$. First, consider the product $AC$. The $(i, l)$-th element of this $p \times m$ matrix is:
$$[AC]_{il} = \sum_{k=1}^n A_{ik} C_{kl}$$Next, consider the product $(AC) B^T$. The matrix $B^T$ is an $m \times q$ matrix, and its $(l, j)$-th element is $(B^T)_{lj} = B_{jl}$. The $(i, j)$-th element of the product $(AC) B^T$ is:$$[(AC) B^T]_{ij} = \sum_{l=1}^m [AC]_{il} (B^T)_{lj}$$Substituting the expressions for $[AC]_{il}$ and $(B^T)_{lj}$:$$[(AC) B^T]_{ij} = \sum_{l=1}^m \left(\sum_{k=1}^n A_{ik} C_{kl}\right) B_{jl}$$Since the sums are finite, we can interchange the order of summation:$$[(AC) B^T]_{ij} = \sum_{k=1}^n \sum_{l=1}^m A_{ik} C_{kl} B_{jl}$$

Comparing this result with the expression we derived for $[\operatorname{Cov}(AZ, BW)]_{ij}$:
$$[\operatorname{Cov}(AZ, BW)]_{ij} = \sum_{k=1}^n \sum_{l=1}^m A_{ik} C_{kl} B_{jl}$$
$$[A \operatorname{Cov}(Z, W) B^T]_{ij} = \sum_{k=1}^n \sum_{l=1}^m A_{ik} C_{kl} B_{jl}$$We see that the $(i, j)$-th elements are identical. Since this holds for all $i$ ($1 \le i \le p$) and $j$ ($1 \le j \le q$), the matrices must be equal:$$\operatorname{Cov}(AZ, BW) = A \operatorname{Cov}(Z, W) B^T$$
This completes the element-wise proof.