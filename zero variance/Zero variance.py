"Zero Variance"

# Python Libraries (Packages)
import pandas as pd

# Read data into Python
Z_data = pd.read_csv("D:/C DRIVE-SSD DATA backup 15-12-2020/Desktop/360digitmg material/Data Preprocessing/DataSets-Data Pre Processing/DataSets/Z_dataset.csv")
Z_data

Z_data.dtypes


Z_data['square.length'].var()
Z_data['square.breadth'].var()
Z_data['rec.Length'].var()
Z_data['rec.breadth'].var()

