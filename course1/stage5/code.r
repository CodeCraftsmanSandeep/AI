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

----------------------------------------------------------------------
# Outlier treatment

# capping value of top 1 percent to remove outliers
quantile(df$n_hot_rooms, 0.99) # 99 persentile value
# upper_value
uv = 3*quantile(df$n_hot_rooms, 0.99)
df$n_hot_rooms[df$n_hot_rooms > uv] <- uv
# EDD
summary(df$n_hot_rooms)  

# Flooring the below 1 percent to remove outliers
lv = 0.3 * quantile(df$rainfall, 0.01)
# EDD
df$rainfall <  quantile(df$rainfall, 0.01)
summary(df$rainfall)
df$rainfall
df$rainfall[df$rainfall < lv] <- lv
# EDD
summary(df$rainfall)


----------------------------------------------------------------------
  # Missing value imputation
  
  # replacing the missing values in R with its mean  
  mean(df$n_hos_beds)                # you will get NA, as there are values with NA in data
mean(df$n_hos_beds, na.rm = TRUE)  # ignoring NA values
which(is.na(df$n_hos_beds))        # which all have NA in n_hos_beds
df$n_hos_beds[is.na(df$n_hos_beds)] <-mean(df$n_hos_beds, na.rm = TRUE)
mean(df$n_hos_beds)

----------------------------------------------------------------------
# Variable transformation
  
# making more linear
pairs(~ price + crime_rate, data = df)
plot(df$price, df$crime_rate)       # looks like logarithmic
# let us take log(1+ crimerate)
# because
#       - the trend in the scatter plot looks like logarithmic
#       - we are adding 1 because crime_rate taking value near zeros, and log is bad near zero
df$crime_rate = log(1+df$crime_rate)
plot(df$price, df$crime_rate)     # some what became linear


# dist1, dist2, dist3 and dist4 are deleted and replaced by their mean
df$avg_dist = (df$dist1 + df$dist2 + df$dist3 + df$dist4)/4
df <- df[ , -7:-10] # removing columns from 7 to 10

# removing bus_ter
df <- df[ , -14]

-----------------------------------------------------------------------
  # Dummy variable creation 
  
  # dummies package is out dated!! 
  # install.packages("dummies")
  
  
install.packages("fastDummies")
library(fastDummies)
# below line creates dummy variables in df for categorical variables
df <- fastDummies::dummy_cols(df)
df <- within(df, rm(airport_NO))
df <- within(df, rm(waterbody_None))
df <- within(df, rm(airport))
df <- within(df, rm(waterbody))


-----------------------------------------------------------------------
# Correlation matrix 
  
cor(df)

# rounding 2 decimal places
round(cor(df), 2)
# parks and air_quality are highly correlated
# though the correlation of air_quality with price is high than parks
# I want to keep parks for the following reasons:
#       1) Generally house prices are more if there is a near by park.
#          Customer coming to buy generally see whether there is a park near by mostlY!! and does not care air quality measurement (But air qulaity and parks are related variables)
#          Business knowledge 
#       2) getting data of parks is esay than air_quality
#       3) correlation(parks, price) and correlation(air_quality, price) are not much different.
# removing air quality
df <- within(df, rm(air_qual))


# ----------------------------------
# Actual code starts from here

simple_linear_reg_model <- lm(price~room_num, data = df)
summary(simple_linear_reg_model)
plot(df$room_num, df$price)
abline(simple_linear_reg_model) # this will draw the simple linear regression line in the plot
