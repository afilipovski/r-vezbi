x <- rbinom(100, 2400, 0.4)
hist(x)

print(paste("Empiriski: P(1000 < X < 1050) =", length(x[x > 1000 & x < 1050]) / length(x)))
print(paste("Teoretski: P(1000 < X < 1050) =", pbinom(1050, 2400, 0.4) - pbinom(1000, 2400, 0.4)))

solveN <- function(N) {
    pbinom(1000, N, 0.4) - 0.95
}
print(paste("N =", round(uniroot(solveN, c(0, 10000))$root)))
