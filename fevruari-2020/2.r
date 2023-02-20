sample <- c(
    3.2, 4, 5, 6.7, 3.34, 4.43, 5, 5.1,
    5.4, 1.2, 3.4, 4.67, 5.55, 6.2, 4.35, 3.82, 3.72, 2.56, 4.22
)
library(stats4)
print(
    mle(function(lambda = 0.2) {
        -sum(dexp(sample, lambda, TRUE))
    })@coef[["lambda"]]
)
