sample = matrix(c(1000,2000,3000,4000), nc=2, byrow=TRUE)
dimnames(sample) = list(c("mp","dhl"), c("standardni","preporacani"))

print(sample)

print(chisq.test(sample))

#alfa > p -> h0 se otfrla -> se zavisni