# raboti samo so kvadratni matrici od ista golemina

m1 <- matrix(1:9, 3, 3)
m2 <- matrix(1:9, 3, 3)

get_element <- function(m1, m2, row, col) {
    res <- 0
    size <- length(m1[1, ])

    for (i in 1:size) {
        res <- res + m1[row, i] * m2[i, col]
    }
    res
}


matrix_multiplication <- function(m1, m2) {
    size <- length(m1[1, ])

    print(size)
    res <- matrix(rep(0, size * size), nrow = size, ncol = size)

    for (i in 1:size) {
        for (j in 1:size) {
            res[i, j] <- get_element(m1, m2, i, j)
        }
    }
    res
}

print(matrix_multiplication(m1, m2))
print(m1 %*% m2)
