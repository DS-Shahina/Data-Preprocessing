"Inferential Statistics"

"Q5) Calculate Mean, Median, Mode, Variance, Standard Deviation, Range & comment about the values / draw inferences, for the given dataset
"-	For Points, Score, Weigh>
"Find Mean, Median, Mode, Variance, Standard Deviation, and Range and comment about the values/ Draw some inferences.
"

import pandas as pd

Q7 = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/Dataset 360/Q7.csv")

# Points
Q7.Points.mean() # 3.5965625000000006
Q7.Points.median() # 3.6950000000000003
Q7.Points.mode() # 0    3.07
                 # 1    3.92
Q7.Points.var() # 0.28588135080645166
Q7.Points.std() #  0.5346787360709716

range =  max(Q7.Points) - min(Q7.Points) 
range # 2.17

Q7.Points.skew() # 0.29278021324083486 
Q7.Points.kurt() # -0.45043245112717223 (Platykurtic)

#Score
Q7.Score.mean() # 3.2172499999999995
Q7.Score.median() # 3.325
Q7.Score.mode() #  3.44
Q7.Score.var() # 0.9573789677419354
Q7.Score.std() # 0.9784574429896966

range =  max(Q7.Score) - min(Q7.Score)
range # 3.9109999999999996

Q7.Score.skew() # 0.4659161067929868
Q7.Score.kurt() # 0.41659466963492564 (Platykurtic)

# Weigh
Q7.Weigh.mean() # 17.848750000000003
Q7.Weigh.median() #  17.71
Q7.Weigh.mode() # 0    17.02
                # 1    18.90
Q7.Weigh.var() # 3.193166129032258
Q7.Weigh.std() #  1.7869432360968431

range =  max(Q7.Weigh) - min(Q7.Weigh) 
range # 8.399999999999999

Q7.Weigh.skew() # 0.4063466292404903
Q7.Weigh.kurt() # 0.8649306528645293 (Platykurtic)


import matplotlib.pyplot as plt
import numpy as np

# Points
plt.boxplot(Q7.Points, vert=False) # it is right skew & no outliers
plt.hist(Q7.Points)

# Score
plt.boxplot(Q7.Score, vert=False) # it is left skew & outliers is there
plt.hist(Q7.Score)

# Weigh
plt.boxplot(Q7.Weigh, vert=False) # it is left skew & outliers is there
plt.hist(Q7.Weigh)

Q7.describe()

"Q7)  Look at the data given below. Plot the data, find the outliers and find out  μ,σ,σ^2
"Hint: [Use a plot which shows the data distribution, skewness along with the outliers; also use R/Python code to evaluate measures of centrality and spread]
"
import pandas as pd
import numpy as np
#Load the data
A = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/Dataset 360/A.csv")
A

#Exploratory Data Analysis
#Measures of Central Tendency / First moment business decision
# Measure X

A['Measure X'].mean() #0.332
A['Measure X'].median() #0.27
#Bi Mode
A['Measure X'].mode() # 0    0.24 
                      # 1    0.26
                      

## Measures of Dispersion / Second moment business decision

A['Measure X'].var() # 0.028402857142857153
A['Measure X'].std() # 0.16853147226217766

range = max(A['Measure X']) - min(A['Measure X']) #range
range #0.67

# Third moment business decision
A['Measure X'].skew() # 3.2575505554296598

# Fourth moment business decision
A['Measure X'].kurt() # 11.48838705262148 (Leptokurtic)

#Graphical Representation 

import matplotlib.pyplot as plt # mostly used for visualization purposes
import numpy as np

# Boxplot - Data Distribution
plt.boxplot(A['Measure X'],vert=False) #just enhancment(for understanding)

# It's a right skew and has outlier
A.describe() # it shows values of the data distribution
