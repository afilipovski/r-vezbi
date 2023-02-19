sample <- read.csv("d-15.csv")[[2]]

library(pastecs)
print(stat.desc(sample))
library(Hmisc)
print(describe(sample))
print(paste("IQR = ", IQR(sample)))
boxplot(sample)

# outlieri nema, inaku ke bea oznaceni na boxplotot

# sovpagjanje so normalna r-ba, ocenuvame parametri
mpo <- TRUE
if (mpo) {
    n <- length(sample)
    mu <- mean(sample)
    sigma <- sqrt(n / (n - 1) * var(sample))
} else {
    likelihood <- function(mu = 18, sigma = 3) {
        -sum(log(1 / (sigma * sqrt(2 * pi)) *
         exp(-(sample - mu)^2 / (2 * sigma^2))))
    }
    library(stats4)
    mu <- as.numeric(mle(likelihood)@coef["mu"])
    sigma <- as.numeric(mle(likelihood)@coef["sigma"])
}

# bidejki e aps-neprekinata, koristime ks-test
test <- ks.test(sample, "pnorm", mean = mu, sd = sigma)
if (test$p > 0.05) {
    print("Brojot na korisnici sledi normalna raspredelba")
} else {
    print("Brojot na korisnici ne sledi normalna raspredelba")
}
