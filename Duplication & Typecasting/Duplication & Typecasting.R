# Duplication_Typecasting

"Problem statement: 
Q1. For the given dataset perform the type casting (convert the datatypes, ex. float to int)
Q2. Check for the duplicate values, and handle the duplicate values (ex. drop)
Q3. Do the data analysis (EDA)?
Such as histogram, boxplot, scatterplot etc
"
#Packages
install.packages("readr")
library(readr)

OnlineRetail <- read.csv(file.choose())
attach(OnlineRetail)

#1)
###################### Type Casting ########################
# Type casting is used to convert one data type into another.

#Convert Numeric to Integer
OnlineRetail$InvoiceNo <- as.integer(OnlineRetail$InvoiceNo) 
class(OnlineRetail$InvoiceNo)

#Convert Numeric to Integer
OnlineRetail$Quantity <- as.integer(OnlineRetail$Quantity) 
class(OnlineRetail$Quantity)

#Convert Numeric to Integer
OnlineRetail$UnitPrice <- as.integer(OnlineRetail$UnitPrice) 
class(OnlineRetail$UnitPrice)

# To convert string into factors
OnlineRetail$StockCode <- as.factor(OnlineRetail$StockCode)
str(OnlineRetail)

# Alternatively we can use argument stringAsFactors=TRUE
# load OnlineRetail dataset
data1 <- read.csv(file.choose(),stringsAsFactors = TRUE)
str(data1)
summary(data1)

#2)
# Handling duplicates###############################################
# Duplicate entries are removed using 'duplicated' function
# it stores the duplicate values into another variable

OnlineRetail

dup <- duplicated(OnlineRetail)
dup
OnlineRetail_new <- OnlineRetail[!duplicated(OnlineRetail), ] # select not duplicate
OnlineRetail_new # 5,393 = (duplicate values)

#3)
#Do the data analysis (EDA)?
#Such as histogram, boxplot.
str(OnlineRetail)

#Graphical Representation

#Quantity
hist(OnlineRetail$Quantity)
boxplot(OnlineRetail$Quantity)

#UnitPrice
hist(OnlineRetail$UnitPrice)
boxplot(OnlineRetail$UnitPrice)

#CustomerID
hist(OnlineRetail$CustomerID)
boxplot(OnlineRetail$CustomerID)



