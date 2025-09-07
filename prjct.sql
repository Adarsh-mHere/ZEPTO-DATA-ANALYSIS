Create database Adrwork;
Use Adrwork;
create table zepto (
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150)NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);

#count of rows
SELECT COUNT(*) FROM zepto;

#sample data
SELECT * FROM zepto
LIMIT 10;

#null values
SELECT * FROM zepto
WHERE name IS NULL
OR
category IS NULL
OR
mrp is NULL
OR
discountPercent IS NULL
OR
availableQuantity IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

#Different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

#product in stock vs out of stock

SELECT outOfStock,count(sku_id)
FROM zepto
GROUP BY outOfStock;

#product names present multiple times

SELECT name,count(sku_id)as "Number of SKUs"
FROM zepto
group by name
HAVING count(sku_id)>1
ORDER BY count(sku_id) desc;

#Data cleaning

#product with price=0
SELECT *FROM zepto
WHERE mrp = 0 OR discountedSellingPrice=0;

DELETE FROM zepto
WHERE mrp = 0;

#Convert paise into rupees

UPDATE zepto
UPDATE zepto
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM zepto;

select mrp,discountedSellingPrice FROM zepto

#Highest discounted product

SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

#Any high price product is out of stock

SELECT DISTINCT name,mrp
FROM zepto
WHERE outOfStock = TRUE and mrp > 300
ORDER BY mrp DESC;


#calculate estimated revenue for each category
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

#Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

#dentify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

#roup the products into categories like Low, Medium, Bulk.

SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;

#What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;









