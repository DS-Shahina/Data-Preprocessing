"Discretization Attempt 3"

import pandas as pd

df = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/360digitmg material/Data Preprocessing/DataSets-Data Pre Processing/DataSets/iris.csv")

df.isnull().sum()
# no null values present in the columns

df.drop_duplicates
#drop duplicate values if any

df.drop(df.columns[[0]], axis = 1, inplace = True) 
#drop irrevelant columns for futher analysis


#perform discretization/bucketing using pd.cut 
# converting all the continuos columns into discrete categories and categorizing them as low medium high> the categories can be determined further based on the business objective and contrains
df['Slenghtdiscrete']=pd.cut(df['Sepal.Length'],3,labels=['low','moderate','high'])

df['Swidthdiscrete']=pd.cut(df['Sepal.Width'],3,labels=['low','moderate','high'])

df['Plenghtdiscrete']=pd.cut(df['Petal.Length'],3,labels=['low','moderate','high'])

df['Pwidthdiscrete']=pd.cut(df['Petal.Width'],3,labels=['low','moderate','high'])

