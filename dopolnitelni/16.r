sample <- c(
    0.29563575, 0.48743665, 0.05900397, 1.77082389, 0.50835725, 0.48469928,
    0.04982673, 0.49282860, 0.13947257, 0.45220010, 1.30680537, 0.57471799,
    0.35458476, 0.46215119, 0.26238302, 0.07849236, 0.25053274
)

# Lici na eksponencijalna r-ba, EX = 1/lambda, DX = 1/lambda^2

mpo <- FALSE
if (mpo) {
    lambda <- 1 / mean(sample)
} else {
    likelihood <- function(lambda = 2) {
        -sum(log(lambda * exp(-sample * lambda)))
        # -sum(dexp(sample,lambda,TRUE))
    }
    library(stats4)
    lambda <- as.numeric(mle(likelihood)@coef["lambda"])
}

print(ks.test(sample, "pexp", rate=lambda)$p > 0.05)

new = rexp(17, lambda)

par(mfrow=c(2,1))
hist(sample, probability = TRUE)
lines(density(sample))
hist(new, probability=TRUE)
lines(density(new))