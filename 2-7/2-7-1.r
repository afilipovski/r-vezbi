x <- c(350, 200, 450, 50, 400, 150, 350, 300, 150, 500, 100, 400, 200, 50, 250)
y <- c(36, 20, 45, 5, 40, 18, 38, 32, 21, 54, 11, 43, 19, 7, 26)

model <- lm(y ~ x)

plot(x, y)
abline(model)

print(summary(model))
