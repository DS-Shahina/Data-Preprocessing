# Zero Variance

#Packages
install.packages("readr")
library(readr)

#Read data into R
Z_dataset <- read.csv(file.choose())
View(Z_dataset)

library(ggplot2)
library(ggthemes)

# Use 'apply' and 'var' functions to 
# check for variance on numerical values
apply(Z_dataset, 2, var)

# Check for the columns having zero variance

which(apply(Z_dataset, 2, var)==0) # ignore the warnings

