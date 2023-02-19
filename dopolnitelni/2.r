# frlanje pravilna kocka 10 pati
print(sample(1:6, 10, replace = TRUE))

# frlanje pravilna kocka n=100 pati
n <- 100
r <- sample(1:6, n, replace = TRUE)
occurences <- rep(0, 6)
for (i in 1:6) {
    occurences[i] <- length(r[r == i])
}

par(mfrow = c(2, 1))
plot(occurences / n, type = "b")
abline(h = 1 / 6)

# frlanje neispravna paricka 100 pati
r <- sample(c("grb", "pismo"), 100, replace = TRUE, prob = c(0.2, 0.8))
grb <- length(r[r == "grb"])
pismo <- length(r[r == "pismo"])

plot(c(grb / 100, pismo / 100), type = "b")
abline(h = 0.2)

# br. na padnati 6ki, frlame kocka 10 pati, eksperimentot e izveden n=100 pati
n <- 100

r <- matrix(sample(1:6, n * 10, TRUE), nc = 10)
x <- vector()
for (i in 1:n) {
    row <- r[i, ]
    x[i] <- length(row[row == 6])
}
mco <- matrix(rep(0, 11), nr = 2, nc = 11)
for (i in 0:10) {
    mco[1, i + 1] <- length(x[x == i])
    mco[2, i + 1] <- round(n * dbinom(i, 10, 1 / 6))
}
dimnames(mco) <- list(
    c("eksperiment", "teoretski"),
    c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
)
print(mco)
print(paste(
    "P(X = 9) = ", pbinom(10, 10, 1 / 6) - pbinom(9, 10, 1 / 6),
    " (pbinom) or ", dbinom(9, 10, 1 / 6), " (dbinom)"
))

# Frlanje paricka se do pojavuvanje na grb
n <- 100

r <- rgeom(n, 1 / 2) + 1
levels <- as.numeric(levels(factor(r)))
mco <- matrix(nrow = 2, ncol = length(levels))
dimnames(mco) <- list(
    c("eksperiment", "teoretski"),
    levels
)
for (i in 1:length(levels)) { # nolint
    level <- levels[i]
    mco[1, i] <- length(r[r == level])
    mco[2, i] <- round(n * dgeom(level - 1, 1 / 2))
}
print(mco)
print(paste("P(X = 5) = ", dgeom(5 - 1, 1 / 2)))
