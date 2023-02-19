sample <- c(0.4, 0.7, 0.9)
ddist <- function(x, theta, log = FALSE) {
    density <- x
    for (i in 1:length(density)) {
        if (density[i] < 0 || density[i] > 1) {
            density[i] <- 0
        } else {
            density[i] <- theta * density[i]^(theta - 1)
        }
    }
    density
}
likelihood <- function(theta = 5) {
    -sum(ddist(sample, theta, TRUE))
}
library(stats4)
print(mle(likelihood))
