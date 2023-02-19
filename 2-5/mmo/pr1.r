x <- c(
    1, 1, 3, 5, 1, 3, 2, 3, 1, 2, 1, 1, 3, 0,
    1, 4, 1, 1, 0, 0, 1, 1, 3, 2, 3, 2, 3, 2,
    1, 1, 4, 3, 3, 2, 3, 3, 2, 1, 4, 2, 1, 0,
    3, 0, 2, 1, 1, 0, 2, 0, 3, 4, 1, 2, 1, 5,
    0, 3, 1, 1, 2, 2, 3, 1, 2, 3, 1, 2, 2, 1
)
# MMO

# Lambda - prosek
print(mean(x))

# MPO

negsum <- function(lambda) {
    -sum(dpois(x, lambda, log = TRUE))
}

library(stats4)
print(mle(negsum, start = list(lambda = 1)))
