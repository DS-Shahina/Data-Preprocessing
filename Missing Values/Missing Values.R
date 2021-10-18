# Problem 2
# Missing values

#Packages
install.packages("readr")
library(readr)

#Load the dataset

claimants_data <-  read_csv("C:/Users/Admin/Downloads/data preprocessing/data preprocessing/DataSets/claimants.csv")
claimants_data

attach(claimants_data)
View(claimants_data)

summary(claimants_data)

# we can see that 4 Variables has NA Values
"1) CLMSEX 2)CLMINSUR 3)SEATBELT 4)CLMAGE "

# Lets introduce NA values into the dataset using 'missForest' package

install.packages("missForest")
library(missForest)

# Generate 10% missing values at Random
# remove three unwanted columns as they are not required for analysis
claimants_data.mis <- prodNA(claimants_data[,-c(1,2,7)], noNA = 0.1)
summary(claimants_data.mis)
attach(claimants_data.mis)
sum(is.na(claimants_data.mis)) #804

# Omitting NA values from the Data 
claimants_data_omit <- na.omit(claimants_data.mis)
# na.omit => will omit the rows which has atleast 1 NA value
dim(claimants_data_omit)
sum(is.na(claimants_data_omit)) #0


# Alternatively We can apply mean/median/mode imputation
claimants_data_new <- claimants_data.mis
summary(claimants_data_new)

# NA values are present in both continuous and categorical columns

# Mean imputation for continuous data - CLMAGE
claimants_data_new$CLMAGE[is.na(claimants_data_new$CLMAGE)] <- mean(claimants_data_new$CLMAGE, na.rm = TRUE)


# Mode imputation for categorical data
# Custom function to calculate Mode
Mode <- function(x){
  a = table(x) # x is a vector
  names(a[which.max(a)])
}

claimants_data_new$CLMSEX[is.na(claimants_data_new$CLMSEX)] <- Mode(claimants_data_new$CLMSEX[!is.na(claimants_data_new$CLMSEX)])
claimants_data_new$CLMINSUR[is.na(claimants_data_new$CLMINSUR)] <- Mode(claimants_data_new$CLMINSUR[!is.na(claimants_data_new$CLMINSUR)])
claimants_data_new$SEATBELT[is.na(claimants_data_new$SEATBELT)] <- Mode(claimants_data_new$SEATBELT[!is.na(claimants_data_new$SEATBELT)])


# now combine using cbind function
clean_data <- cbind(claimants_data[,c(1,2,7)],claimants_data_new)
sum(is.na(clean_data)) 

# Now there is no NA Values
