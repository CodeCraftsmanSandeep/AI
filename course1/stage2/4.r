# Creating barplots in R

Customers <- read.csv("C:/Users/chsan/OneDrive/Desktop/ML/course1/data/Customer.csv", header = TRUE)
View(Customers)

# From Customers data let us computer frequency distribution of number of customers in each direction (North, South, East, West)
y <- table(Customers$Region) # y is the required frequency ditribution
View(y)

# Creating Barplot of y
barplot(y)

# adding parameteres one by one

# Ordering the bars in the ascneding order
barplot(y[order(y)])

# arranging in descending order
barplot(y[order(-y)])

# changing the orientation of bar plot to horizontal
barplot(y[order(y)], horiz = TRUE) 

# color
barplot(y[order(y)], horiz = TRUE, col = "red") 

barplot(y[order(y)], horiz = TRUE, col = c("red", "green", "blue", "yellow"))

# listing all available colours
colors()

# Removing black boundary
barplot(y[order(y)], horiz = TRUE, col = c("red", "green", "blue", "yellow"), border = NA)

# title
barplot(y[order(y)], horiz = TRUE, col = c("red", "green", "blue", "yellow"), border = NA, main = "Freq of \n customers")

# x and y label
barplot(y[order(y)], horiz = TRUE, col = c("red", "green", "blue", "yellow"), border = NA, main = "Freq of \n customers", xlab = "count of customers", ylab = "Directions")