"Discretization"

data("iris")
attach(iris)
# install Package arulesCBA
library("arules")

#Let's discretize the Petal.Length variable of iris data
### the default method is equal frequency
# Using discretize() from arules package for petal length only

irisDisc <- discretizeDF(iris, methods = list(
  Petal.Length = list(method = "frequency", breaks = 3, 
                      labels = c("short", "medium", "long"), default = list(method = "none"))))

head(irisDisc)  

####We can discretize the variable or the whole dataframe as well or discretize all numeric columns differently
irisDisc1 <- discretizeDF(iris, default = list(method = "interval", breaks = 2, 
                                               labels = c("small", "large")))
head(irisDisc1)


