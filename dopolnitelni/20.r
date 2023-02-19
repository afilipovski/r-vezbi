sample <- c(140, 136, 150, 144, 148, 152, 138, 141, 143, 151)
print(t.test(sample, conf.level = 0.99)$conf.int)

mpo <- FALSE
if (mpo) {
    n <- length(sample)
    mu <- mean(sample)
    sigma <- sqrt(n / (n - 1) * var(sample))
} else {
    likelihood <- function(mu = 144, sigma = 4) {
        -sum(dnorm(sample, mu, sigma, TRUE))
    }
    library(stats4)
    estimate <- mle(likelihood)@coef
    mu <- estimate["mu"]
    sigma <- estimate["sigma"]
}

print(paste("mu =", mu, "sigma =", sigma))
print(paste("P(X <= 150) =", pnorm(150, mu, sigma)))
