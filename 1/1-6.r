m <- matrix(1:15, 3, 5, TRUE)

transpose <- function(m) {
    rows_new <- length(m[1, ])
    cols_new <- length(m[, 1])
    res <- matrix(NA, rows_new, cols_new)
    for (i in 1:rows_new) {
        for (j in 1:cols_new) {
            res[i, j] <- m[j, i]
        }
    }
    res
}

print(transpose(m))
print(t(m))