x <- c(
    0.053, 0.246, 0.528, 0.233, 0.161,
    1.749, 0.690, 0.097, 0.839, 0.122, 0.093, 0.525, 0.952, 1.601, 1.059,
    0.395, 1.286, 0.0143, 0.009, 0.268,
    0.0334, 0.807, 0.102, 0.043, 0.795,
    0.280, 0.067, 0.747, 0.449, 0.060,
    0.395, 0.079, 0.365, 1.379, 0.042, 0.560,
    0.205, 1.099, 1.444, 0.832
)

# vreme megju nastani - eksponencijalna raspredelba

mpo <- FALSE

if (mpo) {
    lambda <- 1 / mean(x)
} else {
    library(stats4)
    lambda <- mle(function(lambda = 1) {
        -sum(log(lambda * exp(-lambda * x)))
    })@coef[["lambda"]]
}

print(lambda)
