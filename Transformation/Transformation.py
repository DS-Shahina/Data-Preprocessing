"Transformation"

import pandas as pd

calories_consumed = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/360digitmg material/Data Preprocessing/DataSets-Data Pre Processing/DataSets/calories_consumed.csv")
calories_consumed

#Normal Quantile-Quantile Plot
import scipy.stats as stats
import pylab

# Checking Whether data is normally distributed

stats.probplot(calories_consumed['Weight .gained..grams'], dist='norm',plot=pylab) #pylab is visual representation

stats.probplot(calories_consumed['Calories.Consumed'], dist='norm',plot=pylab) # it is normally distributed

# So the data is not normal we have to transform it to normal

#transformation to make Weight .gained..grams variable normal
import numpy as np
stats.probplot(np.log(calories_consumed['Weight .gained..grams']),dist="norm",plot=pylab) #best transformation

calories_consumed.describe()

# now both variable is normally distributed
