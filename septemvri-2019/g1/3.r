sample <- matrix(c(40, 55, 70, 60), nc = 2, byrow = TRUE)
dimnames(sample) <- list(
    c("A", "B"),
    c("problem", "nema")
)
print(sample)
print(paste("Se zavisni: ", chisq.test(sample)$p.value > 0.05))
