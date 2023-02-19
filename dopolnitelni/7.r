n <- 1000

p <- c(rexp(0.4 * n, 2), rnorm(0.6 * n, 6, sqrt(2)))

print(paste("Empiriski, P(X < 1) = ", length(p[p < 1]) / n))
print(paste("Teoretski, P(X < 1) = P(X < 1 | H1) * P(H1) + P(X < 1 | H2) * P(H2) = ",
 pexp(1, 2) * 0.4 + pnorm(1, 6, sqrt(2)) * 0.6))
