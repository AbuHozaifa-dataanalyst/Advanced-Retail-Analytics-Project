import pandas as pd
from datetime import datetime

sales = pd.read_csv("data/processed/Sales.csv")

sales['Sale_Date'] = pd.to_datetime(sales['Sale_Date'])

snapshot_date = sales['Sale_Date'].max()

rfm = sales.groupby('Customer_ID').agg({
    'Sale_Date': lambda x: (snapshot_date - x.max()).days,
    'Sale_ID': 'count',
    'Total_Amount': 'sum'
})

rfm.columns = ['Recency','Frequency','Monetary']

print(rfm.head())
