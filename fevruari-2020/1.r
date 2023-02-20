sample = rhyper(1000000, 21, 9, 14)


hist(sample)
library(pastecs)
print(stat.desc(sample))

print(length(sample[sample==8])/length(sample))
print(dhyper(8,21,9,14))