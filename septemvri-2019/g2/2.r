sample <- c(45, 36, 28, 27, 28, 50, 40, 33, 33, 49, 40, 46, 44, 48)
s2 <- c(42, 10, 21, 39, 35, 28, 34, 33, 43, 36, 26, 38, 29, 25, 27, 36, 29, 35)

print(t.test(sample, s2, alternative = "less", var.equal = TRUE))
# ne e namaleno
