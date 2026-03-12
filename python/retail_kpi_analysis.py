import pandas as pd

sales = pd.read_csv("data/processed/Sales.csv")

# Total revenue
total_revenue = sales['Total_Amount'].sum()

# Total transactions
total_transactions = sales['Sale_ID'].nunique()

# Average transaction value
atv = total_revenue / total_transactions

# Units per transaction
upt = sales['Quantity'].sum() / total_transactions

print("Retail KPI Summary")
print("-------------------")
print("Total Revenue:", total_revenue)
print("Total Transactions:", total_transactions)
print("Average Transaction Value:", round(atv,2))
print("Units per Transaction:", round(upt,2))

# Store performance
store_sales = sales.groupby('Store_ID')['Total_Amount'].sum().sort_values(ascending=False)

print("\nTop Stores by Revenue")
print(store_sales.head())
