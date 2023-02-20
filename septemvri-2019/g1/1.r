sample <- c(
    17, 16, 16, 12, 10, 14, 17, 11, 12, 15, 10, 12,
    10, 14, 21, 9, 15, 17, 19, 12, 11, 11, 17, 14,
    12, 13, 21, 22, 13, 17, 12
)

library(pastecs)
print(stat.desc(sample))
hist(sample)

# Asimetricna, celobrojna, neopagjacka - puasonova

mpo <- FALSE

if (mpo) {
    lambda <- mean(sample)
} else {
    library(stats4)
    lambda <- mle(function(lambda = 14) {
        -sum(dpois(sample, lambda, TRUE))
    })@coef[["lambda"]]
}
print(paste("lambda-kapa =", lambda))
print(paste("Ocekuvan broj na primeni pratki vo dekemvri: ~",
 round(31 * lambda)))
print(paste("Ocekuvan broj na primeni pratki vo eden den: ~", round(lambda)))
print(paste("P(X < 100) =", ppois(100, lambda * 31)))
