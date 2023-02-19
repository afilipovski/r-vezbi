a <- rnorm(15, 0, 1)
b <- rnorm(50, 1, sqrt(5))
c <- rexp(30, 2)
d <- runif(100, 1, 4)

l <- list(a, b, c, d)

par(mfrow = c(length(l), 2))

for (lx in l) {
    mean <- round(mean(lx), 3)
    var <- round(var(lx), 3)
    sd <- round(sd(lx), 3)
    print(paste("mean = ", mean, "var = ", var, "sd = ", sd))
    plot(lx)
    hist(lx, probability = TRUE)
    lines(density(lx))
}
