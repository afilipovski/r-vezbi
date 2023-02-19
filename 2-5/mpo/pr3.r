theta <- 2

x <- runif(10000, 1 / theta, theta)

print(max(c(max(x), 1 / min(x))))
