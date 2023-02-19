x <- rpois(10000, 5)

auto <- TRUE

likelihood <- function(lambda) {
    if (auto) {
        -sum(dpois(x, lambda, log = TRUE))
    } else {
        -sum(
            log(
                lambda^x * exp(1)^(-lambda) /
                    factorial(x)
            )
        )
    }
}
print(mle(likelihood, start = list(lambda = 5)))
