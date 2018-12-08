#%%
import numpy as np
import pandas as pd
from pandas_datareader import data as wb
import quandl as ql

series=pd.Series(np.random.randint(5),name="columns1")
series
#%%
pg= wb.DataReader('msft',data_source='yahoo',start='1995-1-10')
pg
#%%