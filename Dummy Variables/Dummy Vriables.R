# Dummy Variables

#Packages
install.packages("readr")
library(readr)

#Read data into R
animal_category <- read.csv(file.choose())

View(animal_category)
# packages such as 'dummyvars', 'fastdummies' can be used 

# Checking str and summary of the data
str(animal_category) # data type
summary(animal_category)
attach(animal_category)

install.packages("fastDummies")
library(fastDummies)

# One-hot-encoding - coverting categorical into numeric
# if you want to treat your non numeric data as nominal data then go one hot encoding

data_dummy <- dummy_cols(animal_category, select_columns = c("Animals","Gender","Homly","Types"),
                         remove_first_dummy = TRUE,remove_most_frequent_dummy = FALSE, remove_selected_columns = TRUE)

# Finally we create dummy variables and convert categorical variable into numerical variable

### Label encoding in R
library(CatEncoders)
View(animal_category)

# character column: 'Types' (ordinal column)
lb_new <- LabelEncoder.fit(animal_category$Types)
# new values are transformed to NA
Types_new<- transform(lb_new,animal_category$Types)
Types_new

# Using cbind to combine with original dataset
newdata <- cbind(animal_category, Types_new)



