num <- readline(prompt="Enter decimal number: ")
binary <- function(num) {
if(num > 1) {
binary(as.integer(num/2))
}
cat(num %% 2)
}