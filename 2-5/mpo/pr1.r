x <- rnorm(100, 20, 4)

skripta <- FALSE

likelihood <- function(mu, sigma) {
    if (skripta) {
        n <- length(x)
        n / 2 * log(2 * pi * sigma^2) +
            1 / 2 * sum((x - mu)^2 / sigma^2)
    } else {
        -sum(
            log(
                1 / (sigma * sqrt(2 * pi)) *
                    exp(1)^-((x - mu)^2 / (2 * sigma^2))
            )
        )
    }
}

library(stats4)
print(mle(likelihood, start = list(mu = 20, sigma = 4)))