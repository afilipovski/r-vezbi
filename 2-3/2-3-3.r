# 1000 broevi od B(100, 0.5)
b <- rbinom(1000, 100, 0.5)
# 1000 broevi od P(20)
p <- rpois(1000, 50)

par(mfrow = c(2, 1))
hist(b, breaks = 20, xlim = c(30, 80))
hist(p, breaks = 20, xlim = c(30, 80))