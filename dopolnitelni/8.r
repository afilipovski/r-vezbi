sample <- rexp(50, 1 / 7)

x <- 1
t <- 4

gtt <- sample[sample > t]
print(paste("P(T > t+x | T > t) =", length(gtt[gtt > t + x]) / length(gtt)))
print(paste("P(T > x) =", length(sample[sample > x]) / length(sample)))

print("E(3T) = 3ET = 3*7 = 21")
print(mean(3*sample))