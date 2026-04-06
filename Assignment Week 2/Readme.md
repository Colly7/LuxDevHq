# 📊 Electronic Sales Dashboard – Power BI Project

## 📌 Project Overview

This project was developed using Microsoft Power BI to analyze and visualize electronic sales data. The goal was to transform raw, inconsistent data into meaningful insights that support business decision-making.

The dashboard provides a comprehensive view of sales performance, profitability, customer behavior, and product trends within an electronics retail business.

---

## 🎯 Objectives

* Clean and prepare raw sales data
* Perform data analysis using DAX
* Build a structured data model (fact & dimension tables)
* Create an interactive and visually appealing dashboard
* Generate insights to support business decisions

---

## 🧹 Data Cleaning Process

The dataset contained several real-world data issues which were addressed:

* ✔️ Standardized data types (dates, numeric fields)
* ✔️ Corrected inconsistencies in product and category names
* ✔️ Handled missing values in key columns (Sales, Profit, Shipping)
* ✔️ Removed or standardized invalid entries (e.g., “N/A”, “Anonymous”)
* ✔️ Unified currency formats and naming conventions

---

## 🧠 Data Modeling

A structured data model was created to improve performance and usability:

* **Fact Table:** Sales transactions (OrderID, SalesAmount, Profit, Discount)
* **Dimension Tables:**

  * Product (ProductName, Category)
  * Customer (Age, Location)
  * SalesRep
  * Time (Date, Month, Year)

Relationships were established to enable efficient filtering and analysis.

---

## 📊 Key Metrics (DAX Measures)

* **Total Sales (Orders Count)**
* **Total Revenue**
* **Average Profit**
* **Profit Margin (%)**
* **Average Shipping Days**
* **Average Customer Age**

Example DAX:

```DAX
Profit Margin % = DIVIDE(SUM(Sales[Profit]), SUM(Sales[SalesAmount])) * 100
```

---

## 📈 Dashboard Features

### 🔹 KPI Cards

* Total Sales
* Total Revenue
* Profit Margin
* Average Shipping Time
* Average Profit
* Average Customer Age

### 🔹 Visualizations

* Profit by Product Category (Bar Chart)
* Average Discount by Product (Column Chart)
* Profit by City (Bar Chart)
* Sales by Payment Method (Pie Chart)
* Sales by Customer Age (Line Chart)
* Sales Distribution by Category (Donut Chart)

---

## 🎛️ Interactivity

* Drop-down slicer for **Sales Representative**
* Cross-filtering across all visuals
* Dynamic exploration of data

---

## 📊 Key Insights

* Computers generate the highest profit among categories
* Certain cities contribute significantly more to overall profit
* Discount levels vary across products and influence profitability
* Customer age shows variation in purchasing behavior
* Payment methods are relatively evenly distributed

---

## ⚠️ Challenges Faced

* Handling inconsistent and missing data
* Standardizing product naming conventions
* Managing multiple data formats and potential currency differences
* Designing a clean and user-friendly dashboard layout

---

## 💡 Recommendations

* Focus marketing efforts on high-profit product categories
* Optimize pricing and discount strategies
* Investigate low-performing regions for improvement
* Enhance customer segmentation for targeted sales strategies

---

## 🚀 Future Improvements

* Add time-based analysis (monthly/yearly trends)
* Implement currency conversion for global analysis
* Include advanced KPIs (YoY growth, customer retention)
* Enhance dashboard with drill-through and tooltips

---

## 📂 Tools Used

* Microsoft Power BI
* Power Query (Data Cleaning)
* DAX (Data Analysis Expressions)

---

## 📌 Conclusion

This project demonstrates the full Power BI workflow—from data cleaning and modeling to visualization and insight generation. It highlights the importance of transforming raw data into actionable insights for business growth.

---
