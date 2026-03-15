import pandas as pd

# Load raw data
sales = pd.read_csv("data/raw/Sales.csv")

# Convert date column
sales['Sale_Date'] = pd.to_datetime(sales['Sale_Date'])

# Remove duplicate rows
sales = sales.drop_duplicates()

# Handle missing values
sales = sales.dropna(subset=['Product_ID','Store_ID'])

# Create calculated fields
sales['Total_Amount'] = sales['Quantity'] * sales['Unit_Price']

# Create Month column for analysis
sales['Month'] = sales['Sale_Date'].dt.month
sales['Year'] = sales['Sale_Date'].dt.year

sales.to_csv("data/processed/Sales.csv", index=False)

