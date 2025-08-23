Set A

1. Write a R program to add, multiply and divide two vectors of integer type. (vector
length should be minimum 4)

v1 <- c(10L, 20L, 30L, 40L)  
v2 <- c(2L, 4L, 5L, 8L)
add_result <- v1 + v2
mult_result <- v1 * v2
safe_divide <- function(a, b) {
  ifelse(b == 0L, NA_integer_, a %/% b)  

}
div_result <- safe_divide(v1, v2)
result <- data.frame(
  v1 = v1,
  v2 = v2,
  Sum = add_result,
  Product = mult_result,
  Integer_Division = div_result
)
print(result)

2. Write a R program to calculate the multiplication table using a function.

display_multiplication_table <- function(number, i = 1) {
  if (i > 10) return()
  cat(number, "x", i, "=", number * i, "\n")
  display_multiplication_table(number, i + 1)
}
number <- 5
cat("Multiplication Table for", number, ":\n")
display_multiplication_table(number)

3. Write a R program to sort a list of strings in ascending and descending order.

fruits <- c("Apple", "Mango", "Jack", "Banana")
asc <- sort(fruits)
cat("Ascending:", asc, "\n")
desc <- sort(fruits, decreasing = TRUE)
cat("Descending:", desc, "\n")

4. Write a script in R to create a list of employees and perform the following:
a. Display names of employees in the list.
b. Add an employee at the end of the list.
c. Remove the third element of the list.


emp <- list("om", "amar", "bindu", "Harsha")
cat("Employees:", unlist(emp), "\n")
emp1 <- append(emp, "akashay")
cat("After adding:", unlist(emp1), "\n")
newlist <- emp1[-3]
cat("After removing 3rd:", unlist(newlist), "\n")

Set B 

1. Write a R program to reverse a number and also calculate the sum of digits of that
number.

reverse_and_sum <- function(num) {
  original <- num
  rev <- 0
  sum_digits <- 0
  while (num > 0) {
    r <- num %% 10
    sum_digits <- sum_digits + r
    rev <- rev * 10 + r
    num <- num %/% 10
  }
  list(original = original, reversed = rev, sum = sum_digits)
}

# Example:
res1 <- reverse_and_sum(12345)
print(res1)

2. Write a R program to calculate the sum of two matrices of given size.

sum_matrices <- function(mat1, mat2) {
  if (!all(dim(mat1) == dim(mat2))) stop("Dimensions must match")
  mat1 + mat2
}

# Example:
A <- matrix(1:9, 3, 3)
B <- matrix(9:1, 3, 3)
print(sum_matrices(A, B))


3. Write a R program to concatenate two given factors.
concat_factors <- function(f1, f2) {
  combined <- as.factor(c(as.character(f1), as.character(f2)))
  combined
}

# Example:
f1 <- factor(c("A", "B", "C"))
f2 <- factor(c("X", "Y"))
print(concat_factors(f1, f2))


4. Write a R program to create a data frame using two given vectors and display the
duplicate elements

df_duplicates <- function(v1, v2) {
  df <- data.frame(v1, v2, stringsAsFactors = FALSE)
  duplicates <- df[duplicated(df) | duplicated(df, fromLast = TRUE), ]
  list(df = df, duplicates = duplicates)
}

# Example:
v1 <- c("apple", "banana", "apple", "cherry")
v2 <- c("red", "yellow", "red", "red")
res4 <- df_duplicates(v1, v2)
print(res4$df)
print("Duplicates:")
print(res4$duplicates)

5. Write a R program to perform the following:
a. Display all rows of the data set having weight greater than 120.
b. Display all rows of data set in ascending order of weight.
(Use inbuilt data set woman

subset1 <- subset(women, weight > 120)

ordered_df <- women[order(women$weight), ]

list(over_120 = subset1, sorted = ordered_df)

6. Write a R program to perform the following:
a. Display all the cars having mpg more than 20.
b. Subset the data set by mpg column for values greater than 15.0
c. Display all cars having four gears.
(Use inbuilt data set mtcar)

cars_mpg_gt20 <- subset(mtcars, mpg > 20)
mpg_over_15 <- mtcars$mpg[mtcars$mpg > 15.0]
cars_4gears <- subset(mtcars, gear == 4)
list(mpg_gt20 = cars_mpg_gt20, mpg_over15 = mpg_over_15, gear4 = cars_4gears)

Set C

1. Write a R Program to perform the following:
a. Create a Scattered plot to compare wind speed and temperature.
b. Create a Scattered plot to show the relationship between ozone and wind values
by giving appropriate values to colour argument.
c. Create a Bar plot to show the ozone level for all the days having temperature > 70.
 


data("airquality")
head(airquality
plot(
  airquality$Temp, airquality$Wind,
  main = "Scatter Plot of Wind Speed vs Temperature",
  xlab = "Temperature (°F)",
  ylab = "Wind Speed (mph)",
  pch = 19, col = "blue"
)
ozone_wind_data <- na.omit(airquality[, c("Ozone", "Wind")])
colors <- heat.colors(max(ozone_wind_data$Ozone, na.rm = TRUE))
plot(
  ozone_wind_data$Wind, ozone_wind_data$Ozone,
  main = "Ozone vs Wind (Colored by Ozone Level)",
  xlab = "Wind Speed (mph)",
  ylab = "Ozone (ppb)",
  pch = 19,
  col = colors[ozone_wind_data$Ozone]
)
high_temp_data <- subset(airquality, Temp > 70 & !is.na(Ozone))
barplot(
  high_temp_data$Ozone,
  names.arg = rownames(high_temp_data),
  main = "Ozone Levels on Days with Temperature > 70",
  xlab = "Day Index",
  ylab = "Ozone (ppb)",
  col = "darkgreen",
  las = 2, cex.names = 0.7
)
