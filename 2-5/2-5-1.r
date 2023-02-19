x <- c(
    5, 4, 7, 8, 4, 0, 3, 7, 4, 5, 11, 4, 7,
    10, 5, 4, 8, 6, 6, 9, 9, 4, 5, 7, 3, 1, 4, 5, 6, 9
)
y <- c(
    3, 2, 2, 3, 2, 1, 2, 2, 1, 3, 2, 0, 1,
    1, 3, 0, 2, 0, 1, 2, 5, 4, 3, 2, 2, 3, 1, 2, 1, 3, 1
)

# Претпоставуваме дека имаат Пуасонова р-ба,
# бидејќи станува збор за број на еднородни настани во единица време.

predefined <- FALSE
current <- x

likelihood <- function(lambda) {
    if (predefined) {
        -sum(dpois(current, lambda, TRUE))
    } else {
        n <- length(current)
        lambda * n + sum(factorial(current)) - log(lambda) * sum(current)
    }
}

print(mle(likelihood, start = list(lambda = 1)))

current <- y

print(mle(likelihood, start = list(lambda = 1)))
