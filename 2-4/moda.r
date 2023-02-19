moda_originalna <- function(x) {
    level_vector <- levels(factor(x))

    max_occurrences <- 0
    most_prevalent <- as.numeric(level_vector[1])

    for (level in level_vector) {
        occurrences <- 0
        for (j in 1:length(x)) { # nolint
            if (x[j] == as.numeric(level)) {
                occurrences <- occurrences + 1
            }
        }
        print(level)
        print("found")
        print(occurrences)
        if (occurrences > max_occurrences) {
            max_occurrences <- occurrences
            most_prevalent <- as.numeric(level)
        }
    }

    most_prevalent
}

x <- c(1, 1, 1, 2, 2, 3, 3, 3, 3)

print(moda_originalna(x))
