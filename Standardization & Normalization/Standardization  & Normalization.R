# Standardization & Normalization

#Packages
install.packages("readr")
library(readr)

#Read data into R
seed <- read.csv(file.choose())

View(seed)
attach(seed)

# To apply standardization we have inbuilt function scale
# we use seed dataset

seed_scale <- as.data.frame(scale(seed))

summary(seed_scale)

# to normalize the data we use custom function 

norm <- function(x){
  return ((x-min(x))/(max(x)-min(x)))
}

seed_norm <- as.data.frame(lapply(seed, norm)) #first convert 
#column into list and apply normalization then again convert into dataframe or columns.

summary(seed_norm)
