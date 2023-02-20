# vlecenje so vrakjanje se do pojavuvanje na nastan
# X ima geometriska raspredelba
# 1 belo, 10 crni - P(belo) = 1/11
sample <- rgeom(50, 1 / 11)

library(pastecs)
print(stat.desc(sample))

# n=50, golem primerok.
# Ne mora da presmetuvame DX, t-testot ke ima 49 stepeni na sloboda

test <- t.test(sample, mu = 5)
print("95% interval na doverba za EX: ")
print(as.vector(test$conf.int))
print(paste("H0: EX = 5, hipotezava e", test$p.value > 0.05))
