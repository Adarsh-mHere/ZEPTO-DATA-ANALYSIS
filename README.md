# Let's create a README.md file with the project description for GitHub

readme_content = """# 📊 Zepto Data Analysis (SQL Project)

This project demonstrates **data cleaning, exploration, and analysis** using SQL on Zepto product data.  
It highlights querying techniques for **data validation, business insights, and revenue estimation**.

---

## 🗂 Dataset Structure
The `zepto` table contains the following columns:
- `sku_id` – Unique product identifier  
- `category` – Product category (e.g., beverages, snacks)  
- `name` – Product name  
- `mrp` – Maximum Retail Price (in ₹)  
- `discountPercent` – Discount offered (%)  
- `availableQuantity` – Quantity available  
- `discountedSellingPrice` – Price after discount (₹)  
- `weightInGms` – Product weight (grams)  
- `outOfStock` – Availability status (TRUE/FALSE)  
- `quantity` – Order quantity  

---

## ⚙️ Project Workflow
1. **Data Validation**
   - Count total rows  
   - Check for `NULL` values  
   - Identify duplicate product names  
   - Validate prices (`mrp` or selling price = 0)  

2. **Data Cleaning**
   - Removed invalid rows (`mrp = 0`)  
   - Converted paise → rupees  
   - Standardized price columns  

3. **Exploratory Analysis**
   - Distinct product categories  
   - Stock availability (in-stock vs. out-of-stock)  
   - High-discount products  
   - High-MRP products that are out of stock  

4. **Business Insights**
   - 💰 **Revenue estimation** per category  
   - 📉 Categories with highest average discount %  
   - ⚖️ Price per gram analysis for bulk vs. low-weight items  
   - 🏋️ Total inventory weight per category  

---

## 📌 Example Queries

-- 1️⃣ Count total rows in the dataset
SELECT COUNT(*) FROM zepto;

-- 2️⃣ Check for NULL values
SELECT * FROM zepto
WHERE name IS NULL
   OR category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;

-- 3️⃣ Find distinct product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

-- 4️⃣ Products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id) AS product_count
FROM zepto
GROUP BY outOfStock;

-- 5️⃣ Products appearing multiple times
SELECT name, COUNT(sku_id) AS number_of_skus
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1
ORDER BY number_of_skus DESC;

-- 1️⃣1️⃣ Total inventory weight per category
SELECT category,
       SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight DESC;

