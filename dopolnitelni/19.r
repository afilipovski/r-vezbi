sample <- c(5260, 5470, 5640, 6180, 6390, 6515, 6805, 7515, 7515, 8230, 8770)
# nepoznata sigma, t-test
print(t.test(sample, mu = 7725))
