sample = c(2.76, 1.07, 0.88, 0.34, 1.48)

mpo = FALSE
if (mpo) {
    mu = mean(sample)
    sigma = sqrt(n/(n-1) * var(sample))
} else {
    library(stats4)
    coefficients = mle(function(mu = 1.3, sigma = 1) {
        -sum(dnorm(sample, mu, sigma, TRUE))
    })@coef
    mu = coefficients["mu"]
    sigma = coefficients["sigma"]
}

print(paste("mu =",mu,"sigma =",sigma))

print(t.test(sample, mu=2, conf.level=0.9)$p.value > 0.1)

#Nultata hipoteza ne se otfrla, Petre ne e vo pravo