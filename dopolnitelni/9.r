mu = 0.6
sigma = 0.4
n = 100

trials = 50

sample = matrix(rnorm(trials * n, mu, sigma), nc = n)
sample = apply(sample, 1, sum)
print(sample)
print(paste("Empiriski: P(47 < suma < 50) =",length(sample[sample>47 & sample<50]) / length(sample)))
print(paste("Teoretski: P(47 < suma < 50) =",pnorm(50,mu*n,sigma*sqrt(n)) - pnorm(47,mu*n,sigma*sqrt(n))))