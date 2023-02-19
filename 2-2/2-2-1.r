a <- c(
    70, 36, 43, 69, 82, 48, 34, 62, 35, 15, 59, 139,
    46, 37, 42, 30, 55, 56, 36, 82, 38, 89, 54, 25, 35, 24, 22, 9, 56, 19
)
b <- c(
    7.2, 22.1, 18.5, 17.2, 18.6, 14.8, 21.7, 15.8,
    16.3, 22.8, 24.1, 13.3, 16.2, 17.5, 19.0, 23.9, 14.8, 22.2, 21.7,
    20.7, 13.5, 15.8, 13.1, 16.1, 21.9, 23.9, 19.3, 12.0, 19.9, 19.4
)

write.table(a, "example.txt")
# primer kako bi izgledalo so txt - read.table("example.txt") da se procita


library(pastecs)

print(stat.desc(a))
print(stat.desc(b))

par(mfrow = c(3, 2))
hist(a)
hist(b)
boxplot(a)
boxplot(b)

plot(a, b)
