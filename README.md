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
🚀 Key Insights

Certain categories contribute the majority of revenue despite fewer SKUs.

Some high-MRP products remain out of stock, impacting potential sales.

A few categories show consistently higher discounts, useful for marketing focus.

Inventory weight analysis helps optimize supply chain & logistics.

🛠 Tech Stack

SQL (MySQL)

Google Colab 

