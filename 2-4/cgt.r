cgt <- function(
    r = runif, m = .5, s = 1 / sqrt(12), n = c(1, 3, 10, 30),
    obem_eksperiment = 1000) {
    for (i in n) {
        x <- matrix(r(i * obem_eksperiment), nc = i)
        x <- (apply(x, 1, sum) - i * m) / (sqrt(i) * s)
        hist(x,
            col = "light blue", probability = TRUE, main = paste("n =", i),
            ylim = c(0, max(.4, density(x)$y))
        )
        lines(density(x), col = "red", lwd = 3)
        curve(dnorm(x), col = "blue", lwd = 3, lty = 3, add = TRUE)
        if (obem_eksperiment > 100) {
            rug(sample(x, 100))
        } else {
            rug(x)
        }
    }
}
op <- par(mfrow = c(2, 2))
cgt()
par(op)
