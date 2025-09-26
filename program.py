display_multiplication_table <- function(number, i = 1) {
  if (i > 10) return()
  cat(number, "x", i, "=", number * i, "\n")
  display_multiplication_table(number, i + 1)
}
number <- 5
cat("Multiplication Table for", number, ":\n")
display_multiplication_table(number)

