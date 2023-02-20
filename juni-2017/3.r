sample <- matrix(c(82, 74, 48, 96), nc = 2, byrow = TRUE)
dimnames(sample) <- list(
    c("nadprosecni", "podprosecni"),
    c("so visoko obr.", "bez visoko obr.")
)
print(sample)
print(paste("H0: zarabotuvackata e nezavisna od obrazovanieto -",
 chisq.test(sample)$p.value > 0.05))
