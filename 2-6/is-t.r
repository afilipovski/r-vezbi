lek <- c(15, 10, 13, 7, 9, 8, 21, 9, 14, 8)
pcb <- c(15, 14, 12, 8, 14, 7, 16, 10, 15, 12)

print(t.test(lek, pcb, alt = "l", var.equal = TRUE))
