m1 <- matrix(1:9, 3, 3, TRUE)
m2 <- matrix(2:10, 3, 3, TRUE)

component_based <- TRUE

if (component_based) {
    product <- m1 * m2
} else {
    product <- crossprod(m1, m2)
}

first_row <- product[1, ]
greater_than_four <- product[product > 4]
print(first_row)
print(greater_than_four)