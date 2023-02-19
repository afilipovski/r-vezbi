ngol <- 1000
n <- 30

x <- matrix(runif(ngol * n), nc = n)
b <- apply(x, 1, mean)
s <- apply(x, 1, sd)^2
c <- apply(x, 1, sd)^2 * n / (n - 1)

hist(c, probability = TRUE)
lines(density(c), col = "red")
lines(density(s))

print("Prosek od disperzii")
print(mean(s))
print("Prosek od korigirani disperzii")
print(mean(c))
