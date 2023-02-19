x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(
    1.658131, 3.008234, 3.667983, 6.190716,
    9.408087, 10.582197, 13.748631, 15.394779, 18.865287, 18.326764
)
plot(x, y)
print("Koeficient na korelacija: ")
print(cor(x, y))
print("Model na linearna regresija: ")
print(lm(formula = y ~ x))
abline(-1.365, 2.082)
