/*
Business Question:
Which products generate the highest total revenue?
*/

SELECT 
	p.Product_Name,
	SUM(s.Total_Amount) AS Total_Revenue
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Revenue DESC;



/*
Business Question:
Which products sell the highest number of units?
*/

SELECT 
	p.Product_Name,
	SUM(s.Quantity) AS Total_Units_Sold
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Units_Sold DESC;



/*
Business Question:
Which product categories generate the most revenue?
*/

SELECT 
	p.Category,
	SUM(s.Total_Amount) AS Category_Revenue
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Category_Revenue DESC;



/*
Business Question:
Which product subcategories generate the most revenue?
*/

SELECT 
	p.Subcategory,
	SUM(s.Total_Amount) AS Subcategory_Revenue
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Subcategory
ORDER BY Subcategory_Revenue DESC;



/*
Business Question:
Which brands generate the highest revenue?
*/

SELECT 
	p.Brand,
	SUM(s.Total_Amount) AS Brand_Revenue
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Brand
ORDER BY Brand_Revenue DESC;



/*
Business Question:
What is the average selling price of products sold?
*/

SELECT 
	p.Product_Name,
	AVG(s.Unit_Price) AS Avg_Selling_Price
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Avg_Selling_Price DESC;



/*
Business Question:
Which products generate the highest profit?
Profit = Selling Price - Cost
*/

SELECT 
	p.Product_Name,
	SUM((s.Unit_Price - p.Cost) * s.Quantity) AS Total_Profit
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Profit DESC;



/*
Business Question:
What percentage of total revenue does each category contribute?
*/

SELECT 
	p.Category,
	SUM(s.Total_Amount) AS Revenue,
	SUM(s.Total_Amount) * 100.0 / SUM(SUM(s.Total_Amount)) OVER() AS Revenue_Percentage
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Revenue DESC;



/*
Business Question:
Rank products based on revenue.
*/

SELECT 
	p.Product_Name,
	SUM(s.Total_Amount) AS Revenue,
	RANK() OVER (ORDER BY SUM(s.Total_Amount) DESC) AS Product_Rank
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name;



/*
Business Question:
Which products are top sellers within each category?
*/

SELECT 
	p.Category,
	p.Product_Name,
	SUM(s.Total_Amount) AS Revenue,
		DENSE_RANK() OVER(
		PARTITION BY p.Category
		ORDER BY SUM(s.Total_Amount) DESC
	) AS Category_Rank
FROM Sales s
JOIN Products p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Category, p.Product_Name;
