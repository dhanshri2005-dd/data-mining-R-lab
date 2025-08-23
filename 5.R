A = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
B = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3) 
num_of_rows = nrow(A)
num_of_cols = ncol(A)
add = matrix(, nrow = num_of_rows, ncol = num_of_cols) 

print(A)
print(B)
for(row in 1:num_of_rows)
{
for(col in 1:num_of_cols)
{
add[row, col] <- A[row, col] + B[row, col] 
}
}
