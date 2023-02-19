n <- c(10, 30, 50, 1000)
k <- 10
lambda <- 2

par(mfrow = c(length(n), 1))
for (i in n) {
    x <- matrix(rpois(i * k, lambda), nc = k)
    y <- apply(x, 1, mean)

    hist(y, breaks = 20, probability = TRUE)
    lines(density(y))
}
