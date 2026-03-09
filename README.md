# 🛒 SQL Retail Analytics Project

## 📊 Project Overview

This project demonstrates **SQL skills for Retail Analytics** using a simulated multi-store retail dataset.
The goal is to analyze **sales performance, store performance, product trends, and customer behavior** using SQL queries commonly used by retail analysts.

The project mimics real-world analytics tasks performed in **supermarkets, fashion retail chains, and multi-store retail businesses**.

---

## 🎯 Objectives

The project focuses on answering key retail business questions:

* What are the **top performing stores**?
* Which **products generate the highest revenue**?
* How do **sales trends change month-to-month and year-to-year**?
* Which **categories drive the most sales**?
* How do **discounts and promotions impact revenue**?
* Which **customer segments generate the most sales**?

---

## 🧱 Dataset Structure

The dataset follows a **Retail Star Schema** commonly used in analytics systems.

### Fact Table

**Sales**

| Column         | Description               |
| -------------- | ------------------------- |
| Sale_ID        | Unique transaction ID     |
| Sale_Date      | Date of transaction       |
| Store_ID       | Store identifier          |
| Product_ID     | Product identifier        |
| Customer_ID    | Customer identifier       |
| Quantity       | Number of items purchased |
| Unit_Price     | Price per item            |
| Discount       | Discount applied          |
| Total_Amount   | Total transaction value   |
| Payment_Method | Cash / Card / Online      |

---

### Dimension Tables

**Stores**

* Store_ID
* Store_Name
* City
* Region
* Store_Type
* Opening_Date

**Products**

* Product_ID
* Product_Name
* Category
* Subcategory
* Brand
* Cost
* Price

**Customers**

* Customer_ID
* Gender
* Age_Group
* City
* Loyalty_Member

**Promotions**

* Promotion_ID
* Product_ID
* Promo_Type
* Start_Date
* End_Date
* Discount_Rate

---

## 🛠 SQL Skills Demonstrated

This project showcases the SQL skills required for **Retail Data Analysis**:

* SELECT queries
* Filtering using WHERE
* Aggregations (SUM, COUNT, AVG)
* GROUP BY and HAVING
* Joins (INNER JOIN, LEFT JOIN)
* Window Functions
* Ranking functions
* Date analysis
* CTEs (Common Table Expressions)
* Business KPI calculations

---

## 📈 Retail KPIs Analyzed

The project calculates important retail metrics such as:

* Total Revenue
* Monthly Sales
* Store Performance
* Product Ranking
* Category Sales
* Customer Purchase Behavior
* Average Transaction Value
* Units per Transaction
* Promotion Impact

---

## 📂 Repository Structure

```
sql-retail-analytics-project
│
├── data
│   ├── sales.csv
│   ├── stores.csv
│   ├── products.csv
│   ├── customers.csv
│   └── promotions.csv
│
├── sql
│   ├── sales_analysis.sql
│   ├── store_performance.sql
│   ├── product_analysis.sql
│   ├── customer_analysis.sql
│
├── dashboards
│   └── retail_dashboard.pbix
│
└── README.md
```

---

## 📊 Example Analysis

### Monthly Sales Trend

```sql
SELECT 
    FORMAT(Sale_Date,'yyyy-MM') AS Month,
    SUM(Total_Amount) AS Monthly_Revenue
FROM Sales
GROUP BY FORMAT(Sale_Date,'yyyy-MM')
ORDER BY Month;
```

---

### Top Performing Stores

```sql
SELECT 
    Store_ID,
    SUM(Total_Amount) AS Revenue
FROM Sales
GROUP BY Store_ID
ORDER BY Revenue DESC;
```

---

### Store Ranking

```sql
SELECT 
    Store_ID,
    SUM(Total_Amount) AS Revenue,
    DENSE_RANK() OVER(ORDER BY SUM(Total_Amount) DESC) AS Store_Rank
FROM Sales
GROUP BY Store_ID;
```

---

## 📊 Dashboard 

A Power BI dashboard can be built using this dataset to visualize:

* Sales trends
* Store ranking
* Product category performance
* Customer segmentation
* Promotion impact

---

## 🚀 Tools Used

* SQL
* SQL Server / PostgreSQL
* Excel / CSV dataset
* Power BI (optional for visualization)

---

## 📌 Key Learnings

Through this project I practiced:

* Writing analytical SQL queries
* Working with retail data models
* Calculating retail KPIs
* Performing sales trend analysis
* Using window functions for ranking and comparison

---

## 👤 Author

Retail Analytics Portfolio Project
Focused on **SQL for Retail Analytics and Business Intelligence**

---

⭐ If you found this project useful, feel free to **star the repository**.

