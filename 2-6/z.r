z_test <- function(x, sigma, confidence_level = 0.95) {
    n <- length(x)
    xbar <- mean(x)
    alpha <- 1 - confidence_level

    zap <- qnorm(1 - alpha / 2)
    c(xbar - zap * sigma / sqrt(n), xbar + zap * sigma / sqrt(n))
}

x <- c(175, 176, 173, 175, 174, 173, 173, 176, 173, 179)

print(z_test(x, 1.5))
