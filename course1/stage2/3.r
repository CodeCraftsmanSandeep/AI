install.packages("datasets")

require("datasets")

data() # gives all data sets available in datasets package
library(help = "datasets")
? iris

str(iris)

iris

#loading dataset
data("iris")

x1 <- 1:10
x2 <-c(1, 2, 1, 2)
x3 <-seq(5, 49, by = 5)

x4 <- scan() # scanning input

# Let us see how to impot data of csv file into work sapce
Customers <- read.csv("C:/Users/chsan/OneDrive/Desktop/ML/course1/data/Customer.csv", header = TRUE)
View(Customers)

# Let us import data from a text file
# In Products.txt columns are seperated by tab
Products <- read.table("C:/Users/chsan/OneDrive/Desktop/ML/course1/data/Product.txt", header = TRUE, sep = "\t")

str(Products)