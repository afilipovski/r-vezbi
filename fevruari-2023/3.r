sample = rnorm(100, 100, 5)

library(pastecs)
print(stat.desc(sample))
library(Hmisc)
print(describe(sample))

print(max(sample))
print(min(sample))
print(mean(sample))
print(sd(sample))
print(var(sample))
print(quantile(sample))
print(IQR(sample))
print(median(sample))

print(t.test(sample, mu=100))

#H0 - ima EX=100
#p > alfa, H0 ne se otfrla, t.e. EX=100