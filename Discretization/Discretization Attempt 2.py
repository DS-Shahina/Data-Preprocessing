"Discretization Attempt 2"

import pandas as pd
import numpy as np

iris = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/360digitmg material/Data Preprocessing/DataSets-Data Pre Processing/DataSets/iris.csv")
iris.dtypes

iris.columns

# 'Sepal.Length'
#You can use pd.cut with parameter right = False as:
pd.cut(iris['Sepal.Length'], bins=3, labels=np.arange(3), right=False)

#How the binning is done:
pd.cut(iris['Sepal.Length'], bins=3, right=False)

# 'Sepal.Width'
#You can use pd.cut with parameter right = False as:
pd.cut(iris['Sepal.Width'], bins=3, labels=np.arange(3), right=False)

#How the binning is done:
pd.cut(iris['Sepal.Width'], bins=3, right=False)

# 'Petal.Length'
#You can use pd.cut with parameter right = False as:
pd.cut(iris['Petal.Length'], bins=3, labels=np.arange(3), right=False)

#How the binning is done:
pd.cut(iris['Petal.Length'], bins=3, right=False)

# 'Petal.Width
#You can use pd.cut with parameter right = False as:
pd.cut(iris['Petal.Width'], bins=3, labels=np.arange(3), right=False)

#How the binning is done:
pd.cut(iris['Petal.Width'], bins=3, right=False)
