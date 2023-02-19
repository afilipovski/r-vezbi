# Histogramite ne rabotat

izbori <- c(rep("belo", 10), rep("crno", 6), rep("crveno", 4), rep("sino", 15))

n <- c(10, 100, 1000)

par(mfrow = c(2, 2))

for (ni in n) {
    # so vrakjanje
    s <- summary(as.factor(sample(izbori, ni, TRUE)))
    print(s / ni)
    hist(s, freq = TRUE)
}
print("bez vrakjanje")
s <- sample(izbori, 10, FALSE)
print(summary(as.factor(s)) / 10)
hist(summary(as.factor(s)), freq = TRUE)
