x <- runif(100000, -50, 100)

zbir <- function(x) {
    sum <- 0
    for (i in x) {
        sum <- sum + i
    }
    sum
}
pozneg <- function(x) {
    poz <- 0
    neg <- 0
    for (i in x) {
        if (i > 0) poz <- poz + 1
        if (i < 0) neg <- neg + 1
    }
    c(poz, neg)
}

print(zbir(x))
print(sum(x))
print(pozneg(x))
