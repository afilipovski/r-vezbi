sample <- c(56, 47, 49, 37, 38, 60, 50, 43, 43, 59, 50, 56, 54, 58)
sample2 <- c(
    53, 21, 32, 49, 45, 38, 44, 33,
    32, 43, 53, 46, 36, 48, 39, 35, 37, 36, 39, 45
)

print(t.test(sample, sample2, alternative = "l", var.equal = TRUE))
