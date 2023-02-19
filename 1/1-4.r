control <- TRUE
v <- -10:10
gt <- vector()
lt <- vector()

if (control) {
    for (i in v) {
        if (i > 1) {
            gt <- c(gt, i)
        } else {
            lt <- c(lt, i)
        }
    }
} else {
    gt <- v[v > 1]
    lt <- v[v < 1]
}
print(gt)
print(lt)
