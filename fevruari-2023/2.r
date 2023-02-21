# r-bata e NB(4, p)

# sample <- c(5, 12, 11, 9, 10, 10, 10, 12)
sample = rnbinom(1000, 4, 0.2)

library(stats4)

log.t = function(p = 0.01) {
    -sum(dnbinom(sample, 4, p, log = TRUE))
}
p <- mle(log.t)@coef[["p"]]

print(p)
