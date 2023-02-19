x <- c(37, 37, 36, 30, 24, 36)
y <- c(5, 4, 15, 16, 18, 42)

print(chisq.test(rbind(x,y)))