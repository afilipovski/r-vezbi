n = 10000
s = apply(matrix(rnorm(n * 2), nc = 2), 1, sum)

print(paste("Empiriski: ", length(s[s > 0.5 & s < 1.5]) / length(s)))
print(paste("Teoretski: ", pnorm(1.5, 0, sqrt(2)) - pnorm(0.5, 0, sqrt(2))))