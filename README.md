# 🛒 SQL Retail Analytics Project

## 📌 1. Project Overview

This project demonstrates how **SQL can be used to analyze retail sales data and generate business insights**.

Using a simulated **multi-store retail dataset**, the analysis focuses on:

* Sales performance
* Store performance
* Product trends
* Customer behavior
* Promotion effectiveness

The goal of this project is to simulate **real-world tasks performed by retail data analysts in supermarkets and retail chains**.

---

# 📊 2. Dataset Structure

The dataset follows a **star schema commonly used in retail analytics**.

## Fact Table

### Sales

| Column         | Description               |
| -------------- | ------------------------- |
| Sale_ID        | Unique transaction ID     |
| Sale_Date      | Date of transaction       |
| Store_ID       | Store where sale occurred |
| Product_ID     | Product sold              |
| Customer_ID    | Customer making purchase  |
| Quantity       | Number of items purchased |
| Unit_Price     | Price per unit            |
| Discount       | Discount applied          |
| Total_Amount   | Final sale value          |
| Payment_Method | Payment type              |

---

## Dimension Tables

### Stores

* Store_ID
* Store_Name
* City
* Region
* Store_Type
* Opening_Date

### Products

* Product_ID
* Product_Name
* Category
* Subcategory
* Brand
* Cost
* Price

### Customers

* Customer_ID
* Gender
* Age_Group
* City
* Loyalty_Member

### Promotions

* Promotion_ID
* Product_ID
* Promo_Type
* Start_Date
* End_Date
* Discount_Rate

---

# 🧰 3. Tools Used

* SQL
* SQL Server / PostgreSQL
* CSV datasets
* Power BI (optional visualization)

---

# 📊 4. Business Questions

This project answers key **retail analytics questions**.

### 1️⃣ What is the total revenue of the business?

SQL file: `retail_kpi_analysis.sql`

---

### 2️⃣ How do sales change over time?

SQL file: `retail_kpi_analysis.sql`

---

### 3️⃣ Which stores generate the highest revenue?

SQL file: `store_performance.sql`

---

### 4️⃣ Which product categories generate the most sales?

SQL file: `product_analysis.sql`

---

### 5️⃣ Who are the most valuable customers?

SQL file: `customer_analysis.sql`

---

### 6️⃣ Do loyalty program members spend more?

SQL file: `customer_analysis.sql`

---

### 7️⃣ Which products sell the most units?

SQL file: `product_analysis.sql`

---

### 8️⃣ How do promotions affect sales?

SQL file: `promotion_analysis.sql`

---

### 9️⃣ Which regions generate the most revenue?

SQL file: `store_performance.sql`

---

### 🔟 Which products are frequently bought together?

SQL file: `advanced_retail_analysis.sql`

---

# 📂 5. Project Structure

```
sql-retail-analytics-project

data/
    sales.csv
    stores.csv
    products.csv
    customers.csv
    promotions.csv

sql/
    retail_kpi_analysis.sql
    store_performance.sql
    product_analysis.sql
    customer_analysis.sql
    promotion_analysis.sql
    advanced_retail_analysis.sql

dashboard/
    retail_dashboard.pbix

README.md
```

---

# 📈 6. Example Insights

Example insights generated from the analysis:

* A small number of products generate a large portion of revenue.
* Certain stores significantly outperform others.
* Loyalty program customers contribute more revenue.
* Sales increase during seasonal promotions.

---

# 🚀 7. Future Improvements

Possible improvements for this project:

* Build a Power BI dashboard
* Add customer cohort analysis
* Add customer lifetime value (CLV) analysis
* Add inventory analysis

---

# 👤 8. Author

Retail Analytics Portfolio Project
Focused on **SQL for Retail Analytics and Business Intelligence**

---

⭐ If you found this project useful, consider **starring the repository**.
