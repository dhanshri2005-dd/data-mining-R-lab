# creating the data frame 

emp.data<- data.frame(
employee_id = c (101:105),
employee_name = c("Ram","Sham","Neha","Siya","Sumit"),
sal = c(40000, 35000, 20000, 25000, 30000),
starting_date = as.Date(c("2020-01-01", "2019-09-01", "2021-01-01", "2019-05-01",
"2020-03-05")),
stringsAsFactors = FALSE
)
print(emp.data)

#extrect specific coloumn from dataframe
 
emp.data<- data.frame(
employee_id = c (101:105),
employee_name = c("Ram","Sham","Neha","Siya","Sumit"),
sal = c(40000, 35000, 20000, 25000, 30000),
starting_date = as.Date(c("2020-01-01", "2019-09-01", "2021-01-01", "2019-05-
01", "2020-03-05")),
stringsAsFactors = FALSE
)
final <- data.frame(emp.data$employee_id,emp.data$sal)
print(final)

#extract specific rows from dataframe

emp.data<- data.frame(
employee_id = c (101:105),
employee_name = c("Ram","Sham","Neha","Siya","Sumit"),
sal = c(40000, 35000, 20000, 25000, 30000),
starting_date = as.Date(c("2020-01-01", "2019-09-01", "2021-01-01", "2019-05-01", "2020-03-05")),
stringsAsFactors = FALSE
)
final <- emp.data[1,]
print(final)

#with row and coloumn

emp.data<- data.frame(
employee_id = c (101:105),
employee_name = c("Ram","Sham","Neha","Siya","Sumit"),
sal = c(40000, 35000, 20000, 25000, 30000),
starting_date = as.Date(c("2020-01-01", "2019-09-01", "2021-01-01", "2019-05-01", "2020-03-05")),
stringsAsFactors = FALSE
)
final <- emp.data[c(2,3),c(1,4)]
print(final)

#company

companies <- data.frame(Shares = c("TCS", "Reliance", "HDFC Bank", "Infosys", "Reliance"),
 Price = c(3200, 1900, 1500, 2200, 1900))
 companies
 cat("After removing Duplicates ", "\n")
companies[duplicated(companies),]
unique(companies)


