N <- 1000
n <- 1

examples <- list(
    list(
        sample = rnorm(N * n, 175, 7),
        ex = 175,
        varsq = 0.25
    ),
    list(
        sample = rexp(N * n, 2),
        ex = 1 / 2,
        varsq = 1 / 4
    ),
    list(
        sample = rgamma(N * n, 2, 2),
        ex = 4,
        varsq = 8
    )
)

par(mfrow = c(length(examples), 1))

for (example in examples) {
    data <- matrix(example$sample, nc = n)
    data <- apply(data, 1, sum)

    data <- (data - ex * n) / (example$varsq * sqrt(n))

    hist(data, breaks = 50, probability = TRUE)
    lines(density(data))
}
