sample = c(18000,20000,35000)

mpo = FALSE
if (mpo) {
    mu = mean(sample)
    sigma = sqrt(n/(n-1) * var(sample))
} else {
    library(stats4)
    estimate = mle(function(mu = 24333 ,sigma = 9700) {
        -sum(dnorm(sample, mu, sigma, TRUE))
    })@coef
    mu = estimate["mu"]
    sigma = estimate["sigma"]
}

print(paste("mu =",mu,"sigma =",sigma))
print(t.test(sample, conf.level=0.9)$conf.int)