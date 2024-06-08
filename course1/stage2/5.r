Customers <- read.csv("C:/Users/chsan/OneDrive/Desktop/ML/course1/data/Customer.csv", header = TRUE)
View(Customers)

# histogram 
hist(Customers$Age)

# around 5 buckets
hist(Customers$Age, breaks = 5)

# custom bins
hist(Customers$Age, breaks = c(0, 40, 60, 100), freq = TRUE)

# color
hist(Customers$Age, breaks = c(0, 40, 60, 100), freq = TRUE, col = "blue")

# adding title
hist(Customers$Age, breaks = c(0, 40, 60, 100), freq = TRUE, col = "blue", main ="my Histogram")