USE RetailAnalyticsDB;

-- STORES TABLE

CREATE TABLE Stores (
Store_ID INT PRIMARY KEY,
Store_Name VARCHAR(100),
City VARCHAR(100),
Region VARCHAR(100),
Store_Type VARCHAR(50),
Opening_Date DATE
);

-- PRODUCTS TABLE

CREATE TABLE Products (
Product_ID INT PRIMARY KEY,
Product_Name VARCHAR(200),
Category VARCHAR(100),
Subcategory VARCHAR(100),
Brand VARCHAR(100),
Cost DECIMAL(10,2),
Price DECIMAL(10,2)
);

-- CUSTOMERS TABLE

CREATE TABLE Customers (
Customer_ID INT PRIMARY KEY,
Gender VARCHAR(20),
Age_Group VARCHAR(20),
City VARCHAR(100),
Loyalty_Member VARCHAR(10)
);

-- PROMOTIONS TABLE

CREATE TABLE Promotions (
Promotion_ID INT PRIMARY KEY,
Product_ID INT,
Promo_Type VARCHAR(50),
Start_Date DATE,
End_Date DATE,
Discount_Rate DECIMAL(5,2)
);

-- SALES FACT TABLE

CREATE TABLE Sales (
Sale_ID INT PRIMARY KEY,
Sale_Date DATE,
Store_ID INT,
Product_ID INT,
Customer_ID INT,
Quantity INT,
Unit_Price DECIMAL(10,2),
Discount DECIMAL(5,2),
Total_Amount DECIMAL(10,2),
Payment_Method VARCHAR(20)

);
