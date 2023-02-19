n <- 100000
x <- ifelse(runif(n) < 0.25, 1, 0)

cs <- 0

control <- TRUE

if (control) {
    for (i in 1:n) {
        cs <- cs + x[i]
        x[i] <- cs / i
    }
} else {
    x <- cumsum(x) / (1:n)
}

plot(x, type = "b", ylim = c(0, 0.3))
abline(h = 0.25)
