x <- rexp(1000, rate = 5)

likelihood <- function(rate) {
    n <- length(x)
    rate * sum(x) - n * log(rate)
}

print(mle(likelihood, start = list(rate = 1)))
