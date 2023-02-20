sample <- c(
    16, 23, 17, 17, 28, 28, 16, 18,
    15, 27, 26, 19, 17, 20, 28, 27, 16, 18, 19, 22, 26, 14, 17, 16,
    26, 12, 12, 23, 20, 26, 22
)
hist(sample)
library(pastecs)
print(stat.desc(sample))

mpo <- FALSE
if (mpo) {
    lambda <- mean(sample)
} else {
    library(stats4)
    lambda <- mle(function(lambda = 20) {
        -sum(dpois(sample, lambda, TRUE))
    })@coef[["lambda"]]
}
print(paste("proizv. den EX = lambda-kapa =", round(lambda)))
print(paste("cel mesec EX = ", round(lambda * 31)))
print(paste("P(X < 100) =", ppois(100, 31 * lambda)))
