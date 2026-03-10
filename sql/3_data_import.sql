BULK INSERT Stores
FROM 'D:\GitHub\SQL_Retail_Analytics_Project\data\Stores.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);

BULK INSERT Products
FROM 'D:\GitHub\SQL_Retail_Analytics_Project\data\Products.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);

BULK INSERT Customers
FROM 'D:\GitHub\SQL_Retail_Analytics_Project\data\Customers.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);

BULK INSERT Promotions
FROM 'D:\GitHub\SQL_Retail_Analytics_Project\data\Promotions.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);

BULK INSERT Sales
FROM 'D:\GitHub\SQL_Retail_Analytics_Project\data\Sales.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
