# EDD and univariate analysis in R
df <- read.csv("C:/Users/chsan/OneDrive/Desktop/ML/course1/data/House_price.csv")

# to get EDD
summary(df)

# If there is any blank value in csv file, R assigns NA value to it
hist(df$crime_rate) # crime rate is left skewed

pairs(~price+crime_rate+n_hot_rooms+rainfall, data = df)

barplot(table(df$airport))

barplot(table(df$waterbody))

barplot(table(df$waterbody))

barplot(table(df$bus_ter))
# all cities of the data has bus_ter (so we can ignore this)

# Observations
# n_hot_rooms and rainfall has outliers
# n_hos_beds has missing values
# bus_ter is not useful 
# crime_rate has some other functional relationship with price
