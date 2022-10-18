import pickle
import datetime
import pandas as pd
import time

with open('model.pkl', 'rb') as f:
    m = pickle.load(f)

def predict(year, month, day):
    '''
    Input:
    year - integer
    month - integer
    day - integer

    Output:
    predicted generation in MW
    '''
    ds = pd.DataFrame({'ds': [datetime.datetime(year,month,day)]})
    time.sleep(15)
    return m.predict(ds)['yhat'].values[0]
