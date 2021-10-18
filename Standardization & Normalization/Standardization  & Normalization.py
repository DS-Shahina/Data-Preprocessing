# Standardization & Normalization

import pandas as pd

seed = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/360digitmg material/Data Preprocessing/DataSets-Data Pre Processing/DataSets/Seeds_data.csv")
seed

#Standardization
# Normalization function using z std. all are continuous data.
def norm_func(i):
    x = (i-i.mean())/(i.std()) 
    return(x)

seed1_norm = norm_func(seed)
seed1_norm.describe() # mean=0, std = 1

#Normalization
# or denominator (i.max()-i.min())
def norm_func(i):
    x = (i-i.min())/(i.max()-i.min()) # or denominator (i.max()-i.min())
    return(x)

seed2_norm = norm_func(seed)
seed2_norm.describe() # min=0, max=1

# We did Standardization and Normalization to make data scale free.
