library(abind, pos = 16)
tab <- matrix(c(43, 9, 44, 4), 2, 2, byrow = TRUE)
dimnames(tab) <- list("pol" = c("maski", "zenski"), "raka" = c("desna", "leva"))
tab # Counts
test <- chisq.test(tab, correct = FALSE)
print(test)

print(tab)
