sample <- c(26, 2, 19, 9, 12, 1, 3, 7, 14, 2, 1, 24, 1, 0, 6, 24, 10)

par(mfrow = c(2, 1))
hist(sample)

# pretpostavuvame deka e geometriska

mpo <- FALSE
if (mpo) {
    p <- 1 / mean(sample)
} else {
    p <- mle(
        function(prob) {
            -sum(dgeom(sample, prob, TRUE))
        },
        start = list(prob = 0.2)
    )@coef["prob"]
}

sample2 <- rgeom(17, p)
hist(sample2)

print(ks.test(sample, sample2))
