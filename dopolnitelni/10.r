trials = 100

sample = matrix(rnorm(10 * trials, 0, sqrt(2)), nc = 10)
sample = apply(sample, 1, sum)

par(mfrow=c(2,1))
hist(sample)

#x ima normalna raspredelba N(0, 20)

theo = rnorm(100, 0, sqrt(20))
hist(theo)