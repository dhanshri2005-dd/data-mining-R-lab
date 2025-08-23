

 # create vector
stud_name<-c("Ram","Siya","Raj","Sham",”Ram”)
factor(stud_name)

#vector into factor

stud_name<-c("Ram","Siya","Raj","Sham",”Ram")
factor(stud_name, levels=c(“Ram”,”Siya”,”Raj”,”Sham”))

#vector in compass

compass <- c("East","West","East","North")
data <- factor(compass)
data
data[4] #Accessing the 4th element
data[c(2,3)] #Accessing the 2nd & 3rd element
data[-1]
data[c(TRUE, FALSE, TRUE, TRUE)]

#factor
fac1 <- factor(letters[1:3])
 print ("Factor1 : ")
 print (fac1)
 sapply(fac1,class)
 fac2 <- factor(c(1:4))
 print ("Factor2 : ")
 print (fac2)
 sapply(fac2,class)
 level1 <- levels(fac1)[fac1]
 level2 <- levels(fac2)[fac2]
 combined <- factor(c( level1,level2 ))
 print ("Combined Factor : ")
 print (combined)
 sapply(combined,class)




combined <- factor(c( level1,level2 ))
print ("Combined Factor : ")
print (combined)
sapply(combined,class)


#R DATA VISUALIZATION

input <- mtcars[,c('wt','mpg')]
print(head(input))
input <- mtcars[,c('wt','mpg')]
png(file = "scatterplot.png")
plot(x = input$wt,y = input$mpg,
xlab = "Weight",
ylab = "Milage",
xlim = c(2.5,5),
ylim = c(15,30),
main = "Weight vs Milage"
)
dev.off()


#PIE CHARTS

Cities <- c("New York", "Los Angeles", "Chicago", "Houston", "Phoenix",
"Philadelphia", "San Antonio", "San Diego", "Dallas", "San Jose")
 Population <- c(8.60, 4.06, 2.68, 2.40, 2.71, 1.58, 1.57, 1.45, 1.40, 1.03 )
 top_ten <- data.frame(Cities, Population)
 top_ten
pct <- round(100*top_ten$Population/sum(top_ten$Population))
 pie(top_ten$Population,
 labels = paste(top_ten$Cities, sep = " ", pct, "%"),
 col = rainbow(length(top_ten$Population)),
 main = "Most Populous US Cities in 2019 (in millions)")

#BAR PLOTS

Browser <- c("Chrome", "Edge", "Firefox", "IE",
"Opera", "Safari", "Others")
 Users <- c(2502.4, 150.78, 395.83, 238.05, 86.49, 387.65, 134.8)
 IB <- data.frame(Browser, Users)
 IB
 barplot(height = IB$Users,
 main = "2018 Internet Browser Users (in million)",
 xlab = "Internet Browser",
 ylab = "Users",
 names.arg = IB$Browser,
 border = "dark blue",
 col = "pink")

 


