"Discretization Attempt 1"

import pandas as pd

iris = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/360digitmg material/Data Preprocessing/DataSets-Data Pre Processing/DataSets/iris.csv")
iris.dtypes

iris.columns


import matplotlib.pyplot as plt # mostly used for visualization purposes 
import numpy as np
import seaborn as sns

sns.distplot(iris['Sepal.Length'], kde=False)
sns.distplot(iris['Sepal.Width'], kde=False)
sns.distplot(iris['Petal.Length'], kde=False)
sns.distplot(iris['Petal.Width'], kde=False)

# 'Sepal.Length'
bins = [1,2,3,4,5,6,7,8]
plt.figure(figsize=(16,9))
sns.set() # light color background
sns.distplot(iris["Sepal.Length"],bins = bins, kde=False)
plt.xticks(bins) # x-axis (1-8)
plt.title("Histogram of Sepal.Length")
plt.show()
iris["Sepal.Length"].value_counts()

# 'Sepal.Width'
bins = [1,2,3,4,5]
plt.figure(figsize=(16,9))
sns.set() # light color background
sns.distplot(iris["Sepal.Width"],bins = bins, kde=False)
plt.xticks(bins) # x-axis (1-8)
plt.title("Histogram of Sepal.Width")
plt.show()
iris["Sepal.Width"].value_counts()

# 'Petal.Length'
bins = [1,2,3,4,5,6,7]
plt.figure(figsize=(16,9))
sns.set() # light color background
sns.distplot(iris["Petal.Length"],bins = bins, kde=False)
plt.xticks(bins) # x-axis (1-8)
plt.title("Histogram of Petal.Length")
plt.show()
iris["Petal.Length"].value_counts()

#'Petal.Width'
bins = [0,1,2,3]
plt.figure(figsize=(16,9))
sns.set() # light color background
sns.distplot(iris["Petal.Width"],bins = bins, kde=False)
plt.xticks(bins) # x-axis (1-8)
plt.title("Histogram of Petal.Widthh")
plt.show()
iris["Petal.Width"].value_counts()



