#Додадете имиња за секој елемент од матрицата посебно.

x <- 1:6
matrix <- matrix(x, 2, 3, TRUE)
dim(matrix) <- c(2, 3)
print(dim(matrix))
dimnames(matrix) <- list(letters[1:2], LETTERS[1:3])
print(matrix)