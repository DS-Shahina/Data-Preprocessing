"Inferential Statistics"

"Q5) Calculate Mean, Median, Mode, Variance, Standard Deviation, Range & comment about the values / draw inferences, for the given dataset
-	For Points, Score, Weigh>
Find Mean, Median, Mode, Variance, Standard Deviation, and Range and comment about the values/ Draw some inferences.
"
library(readr)
library(moments)
Q7 <- read.csv(file.choose())

View(Q7)

attach(Q7)

mean(Q7$Points) #3.596563
median(Q7$Points) #3.695
var(Q7$Points) #0.2858814
sd(Q7$Points) #0.5346787
range(Q7$Points) #2.76 4.93
skewness(Points) #0.2788734 
kurtosis(Points) #2.435116 (Platykurtic)

# FINDING MODE
x= Q7$Points
mode <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}
mode(x) #3.92

#Score
mean(Q7$Score) # 3.21725
median(Q7$Score) # 3.325
var(Q7$Score) # 0.957379
sd(Q7$Score) # 0.9784574
range(Q7$Score) # 1.513 5.424
skewness(Score) # 0.4437855 
kurtosis(Score) # 3.172471 (Mesokurtic)

# FINDING MODE
x= Q7$Score
mode <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}
mode(x) # 3.44

#Weigh
mean(Q7$Weigh) # 17.84875
median(Q7$Weigh) # 17.71
var(Q7$Weigh) # 3.193166
sd(Q7$Weigh) # 1.786943
range(Q7$Weigh) # 14.5 22.9
skewness(Weigh) # 0.3870456
kurtosis(Weigh) # 3.553753 (Mesokurtic)

# FINDING MODE
x= Q7$weigh
mode <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}
mode(x) # NULL

#Draw some inferences
barplot(Q7$Points)
barplot(Q7$Score)
barplot(Q7$Weigh)

hist(Q7$Points)
hist(Q7$Score)
hist(Q7$Weigh)

boxplot(Q7$Points, horizontal = TRUE) # Right skew
boxplot(Q7$Score, horizontal = TRUE) # Left skew with Outliers
boxplot(Q7$Weigh, horizontal = TRUE) # Left skew with Outliers

summary(Q7)

"
Q7)  Look at the data given below. Plot the data, find the outliers and find out  ??,??,??^2
Hint: [Use a plot which shows the data distribution, skewness along with the outliers; also use R/Python code to evaluate measures of centrality and spread]
"
library(readr)
library(moments)
Q7 <- read.csv(file.choose())

View(Q7)




