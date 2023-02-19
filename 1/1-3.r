control <- FALSE
# P1: So kontrolni strukturi/mean

m <- matrix(1:15, 3, 5)

row_mean <- FALSE
index <- 1

print(m)

our_mean <- function(v) {
    res <- 0
    for (i in v) {
        res <- res + i
    }
    res / length(v)
}

if (control) {
    if (row_mean) {
        print(our_mean(m[index, ]))
    } else {
        print(our_mean(m[, index]))
    }
} else {
    if (row_mean) {
        print(mean(m[index, ]))
    } else {
        print(mean(m[, index]))
    }
}
