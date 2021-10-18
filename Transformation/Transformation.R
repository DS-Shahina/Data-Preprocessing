# Transformation

#Packages
install.packages("readr")
library(readr)

#Read data into R
calories_consumed <- read.csv(file.choose())
View(calories_consumed)
summary(calories_consumed)
attach(calories_consumed)

# Check whether these 2 variables in the data set is normally distributed or not
# Normal Quantile-Quantile Plot
qqnorm(Calories.Consumed)
qqline(Calories.Consumed)
# Calories.Consumed column is normally distributed
qqnorm(Weight..gained..grams)
qqline(Weight..gained..grams)

# Transformation to make workex variable normal
qqnorm(log(Weight..gained..grams))
qqline(log(Weight..gained..grams))

# finally data is normally Distributed
