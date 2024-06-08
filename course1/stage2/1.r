# Assignment operator
s <- 2
print(s)

# c - concatenation operator 
y <-c(1, 2, 3, 4, 5, "sandeep")
print(y)

# y gets 1 to 10 
y <- 1:10
print(y)

x <- y <- 1092
print(paste(x, y))

# Adding arrays (element wise addition)
a <- b <- 1:10
print(a + b)

# element wise multiplication
print(a * b)

# R language is case senesitive

# list all the variables in the work space
print(ls())

# Deleting variable a and b form the work space
rm(a)
remove(b)
print(ls())

# Deleting all the variables from the workspace
remove(list = ls())
print(ls())
