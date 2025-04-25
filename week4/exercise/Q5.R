library(MASS)

# --- Settings ---
num_vectors <- 500
mu <- c(0, 1, 1, 2, 2)
Sigma <- diag(1, 5)
beta_true <- c(2, -3, 2, 1, 6, -2)
num_simulations <- 10000

# --- Part A: Theoretical Mean and Variance of OLS Estimator ---
set.seed(123)
X <- mvrnorm(n = num_vectors, mu = mu, Sigma = Sigma)
X_prime <- cbind(rep(1, num_vectors), X)
XtX <- t(X_prime) %*% X_prime
XtX_inv <- solve(XtX)

# --- Part B: Simulate OLS Estimator ---
beta_hat_storage <- matrix(NA, nrow = length(beta_true), ncol = num_simulations)
set.seed(789)
for (i in 1:num_simulations) {
  e_sim <- rnorm(n = num_vectors, mean = 1, sd = 1)
  Y_sim <- X_prime %*% beta_true + e_sim
  XtY_sim <- t(X_prime) %*% Y_sim
  beta_hat_sim <- XtX_inv %*% XtY_sim
  beta_hat_storage[, i] <- beta_hat_sim
}

empirical_mean_beta <- rowMeans(beta_hat_storage)
empirical_var_beta <- cov(t(beta_hat_storage))

print(-log10(abs(empirical_mean_beta - beta_true)))
print(-log10(abs(empirical_var_beta - XtX_inv)))

