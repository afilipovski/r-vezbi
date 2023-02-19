sample <- c(
    70, 36, 43, 69, 82, 48, 34, 62, 35, 15, 59, 139, 46, 37, 42,
    30, 55, 56, 36, 82, 38, 89, 54, 25, 35, 24, 22, 9, 56, 19
)
library(pastecs)
print(stat.desc(sample))
library(Hmisc)
print(describe(sample))
print(paste("IQR: ",IQR(sample)))

par(mfrow=c(2,1))
hist(sample)
stem(sample)
boxplot(sample)

#pretpostavuvame puasonova r-ba