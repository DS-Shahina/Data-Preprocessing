# Problem 1
# Outlier Treatment

#Packages
install.packages("readr")
library(readr)

#Load the dataset
Boston <- read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/360digitmg material/Data Preprocessing/DataSets-Data Pre Processing/DataSets/boston_data.csv")
Boston

attach(Boston)
View(Boston)

# 1st of all we will check which attribute or you can say which variables has outliers 
# Those Variables we will take to perform Outlier Treatment.

#Error in plot.new() : figure margins too large
#open fully window of plot
boxplot(crim)
boxplot(zn)
boxplot(indus) # no outliers present
boxplot(chas) # we leave this because it is a categorical variable and categorical variables has no outliers it's like 0's and 1's (Basically categories)
boxplot(nox) # no outliers present
boxplot(rm)
boxplot(dis)
boxplot(age) # no putliers present
boxplot(rad) # no putliers present
boxplot(tax) # no putliers present
boxplot(ptratio) # it's a binary type
boxplot(black)
boxplot(lstat)
boxplot(medv)

# So, we have only 7 variables which has outliers

# Winsorisation -  Means Replacing or you can say rounding off

#1) crim
qunt1 <- quantile(Boston$crim,probs = c(.25,.75))
qunt1 # 25% - 0.0823825, 75% - 4.0531575
win1 <- quantile(Boston$crim,probs = c(.01,.80), na.rm =T) # probability of 1% and 80%, and remove na value.
win1 # 1% = 0.0144086, 99% = 41.4338780 
H <- 1.5*IQR(Boston$crim, na.rm = T)
H #5.956163
# Outliers defined as obeservations that fall below Q1-1.5IQR and above Q3+1.5IQR
# here we have to figure out that if outliers is there if it's below then Q1-1.5IQR then replace with 1%
# Same thing if outliers is there if it's above then Q3+1.5IQR then replace with 99%
# Q1-1.5IQR < Outlier - then replace with 1%
# Q3+1.5IQR > Outlier - then replace with 99%
Boston$crim[Boston$crim<(qunt1[1]-H)] <- win1[1]
Boston$crim[Boston$crim>(qunt1[2]+H)] <- win1[2]
crim_new <- boxplot(Boston$crim)
crim_new

# now apply for all variables
#2) zn
qunt2 <- quantile(Boston$zn,probs = c(.25,.75))
qunt2
win2 <- quantile(Boston$zn,probs = c(.01,.85), na.rm =T) 
win2 
A <- 1.5*IQR(Boston$zn, na.rm = T)
A
Boston$zn[Boston$zn<(qunt2[1]-A)] <- win2[1]
Boston$zn[Boston$zn>(qunt2[2]+A)] <- win2[2]
zn_new <- boxplot(Boston$zn)
zn_new

#3) rm
qunt3 <- quantile(Boston$rm,probs = c(.25,.75))
qunt3
win3 <- quantile(Boston$rm,probs = c(.02,.95), na.rm =T) # we can change the limits(% so that outliers remove)
win3 
B <- 1.5*IQR(Boston$rm, na.rm = T)
B
Boston$rm[Boston$rm<(qunt3[1]-B)] <- win3[1]
Boston$rm[Boston$rm>(qunt3[2]+B)] <- win3[2]
rm_new <- boxplot(Boston$rm)
rm_new

#4) black
qunt5 <- quantile(Boston$black,probs = c(.25,.75))
qunt5
win5 <- quantile(Boston$black,probs = c(.15,.99), na.rm =T) 
win5 
D <- 1.5*IQR(Boston$black, na.rm = T)
D
Boston$black[Boston$black<(qunt5[1]-D)] <- win5[1]
Boston$black[Boston$black>(qunt5[2]+D)] <- win5[2]
black_new <- boxplot(Boston$black)
black_new

#5) lstat
qunt6 <- quantile(Boston$lstat,probs = c(.25,.75))
qunt6
win6 <- quantile(Boston$lstat,probs = c(.01,.99), na.rm =T) 
win6 
E <- 1.5*IQR(Boston$lstat, na.rm = T)
E
Boston$lstat[Boston$lstat<(qunt6[1]-E)] <- win6[1]
Boston$lstat[Boston$lstat>(qunt6[2]+E)] <- win6[2]
lstat_new <- boxplot(Boston$lstat)
lstat_new

#6) medv
qunt7 <- quantile(Boston$medv,probs = c(.25,.75))
qunt7
win7 <- quantile(Boston$medv,probs = c(.01,.90), na.rm =T) 
win7 
G <- 1.5*IQR(Boston$medv, na.rm = T)
G
Boston$medv[Boston$medv<(qunt7[1]-G)] <- win7[1]
Boston$medv[Boston$medv>(qunt7[2]+G)] <- win7[2]
medv_new <- boxplot(Boston$medv)
medv_new

#7) dis
qunt8 <- quantile(Boston$dis,probs = c(.25,.75))
qunt8
win8 <- quantile(Boston$dis,probs = c(.01,.90), na.rm =T) 
win8 
I <- 1.5*IQR(Boston$dis, na.rm = T)
I
Boston$dis[Boston$dis<(qunt8[1]-I)] <- win8[1]
Boston$dis[Boston$dis>(qunt8[2]+I)] <- win8[2]
dis_new <- boxplot(Boston$dis)
dis_new

#now we'll removed columns which have outliers.
#and add new columns which do not have outliers.

Boston_old <- subset(Boston,select = -c(1,2,6,8,12,13,14))
Boston_old

# now add new variable which is outlier free
Boston_new <- c(Boston_old,crim_new,zn_new,rm_new,black_new,lstat_new,medv_new,dis_new)
Boston_new



