# ZEPTO-DATA-ANALYSIS
ZEPTO DATA ANALYSIS USING SQL
📊 Zepto Data Analysis (SQL Project)

This project demonstrates data cleaning, exploration, and analysis using SQL on Zepto product data.
It highlights querying techniques for data validation, business insights, and revenue estimation.

🗂 Dataset Structure

The zepto table contains the following columns:

sku_id – Unique product identifier

category – Product category (e.g., beverages, snacks)

name – Product name

mrp – Maximum Retail Price (in ₹)

discountPercent – Discount offered (%)

availableQuantity – Quantity available

discountedSellingPrice – Price after discount (₹)

weightInGms – Product weight (grams)

outOfStock – Availability status (TRUE/FALSE)

quantity – Order quantity

⚙️ Project Workflow

Data Validation

Count total rows

Check for NULL values

Identify duplicate product names

Validate prices (mrp or selling price = 0)

Data Cleaning

Removed invalid rows (mrp = 0)

Converted paise → rupees

Standardized price columns

Exploratory Analysis

Distinct product categories

Stock availability (in-stock vs. out-of-stock)

High-discount products

High-MRP products that are out of stock

Business Insights

📌 Example Queries

Top 10 highest discounted products

SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

