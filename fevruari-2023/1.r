n = 700

#metod 1
sample1 = sum(sample(0:1,n,TRUE,prob=c(0.55,0.45)))
print(sample1)
#metod 2
sample2 = rbinom(1, n, 0.45)
print(sample2)

print(sample1/n)
print(sample2/n)