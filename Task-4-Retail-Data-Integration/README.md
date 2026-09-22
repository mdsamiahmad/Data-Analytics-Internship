# Task 4 — Retail Data Integration

## 📌 Overview

This project analyzes a retail sales dataset using **Python, SQL, and Excel**.

The main objective was to clean the retail data, store and analyze it using SQL, and create an Excel analysis dashboard to generate useful business insights.

---

## 🎯 Objectives

- Clean and prepare retail data using Python
- Handle missing values and data quality issues
- Import cleaned data into MySQL
- Perform sales analysis using SQL
- Analyze revenue, cost, margin, categories, cities, channels, brands, and store formats
- Export the analysis into Excel
- Create an interactive-style dashboard with KPIs and charts

---

## 🛠️ Tools & Technologies

- **Python**
- **Pandas**
- **NumPy**
- **MySQL**
- **SQL**
- **Microsoft Excel**
- **Jupyter Notebook**

---

## 📂 Dataset

**Dataset:** Indian FMCG Retail Sales Customer Inventory (2024)

- Rows: **100,000**
- Columns: **21**

The dataset contains information about:

- Invoice details
- Sales dates
- Cities
- Store formats
- Product categories
- Brands
- Sales channels
- Payment modes
- Units sold
- Cost and selling prices
- Revenue
- Margin
- Inventory
- Customer information

---

## 🐍 Python Data Cleaning

Python and Pandas were used to:

- Load the CSV dataset
- Check dataset dimensions
- Identify missing values
- Check duplicate records
- Handle missing customer age values
- Handle missing customer gender values
- Convert invoice dates into datetime format
- Validate numeric columns
- Create a cleaned dataset

### Cleaning Result

- Original rows: **100,000**
- Final rows: **100,000**
- Customer Age missing values: handled
- Customer Gender missing values: handled

The cleaned dataset was saved as:

`cleaned_retail_data.csv`

---

## 🗄️ SQL Analysis

The cleaned data was imported into MySQL and analyzed using SQL.

### Analysis Performed

1. Total Revenue
2. Total Cost
3. Total Margin
4. Revenue by Category
5. Revenue by City
6. Revenue by Channel
7. Revenue by Brand
8. Average Order Value
9. Revenue by Payment Mode
10. Revenue by Store Format
11. Monthly Revenue
12. Revenue by Category and Channel

---

## 📊 Key Metrics

| Metric | Value |
|---|---:|
| Total Revenue | ₹39,335,134.98 |
| Total Cost | ₹31,461,449.33 |
| Total Margin | ₹7,873,685.66 |
| Average Order Value | ₹393.60 |

---

## 📈 Excel Dashboard

An Excel dashboard was created to visualize the retail analysis.

### Dashboard Includes

- Total Revenue
- Total Cost
- Total Margin
- Average Order Value
- Revenue by Category
- Revenue by City
- Revenue by Channel
- Monthly Revenue Trend
- Revenue by Brand
- Revenue by Store Format
- Revenue by Category & Channel

Excel file:

`Retail_Data_Analysis.xlsx`

---

## 📁 Project Structure

```text
Task-4-Retail-Data-Integration/
│
├── Task_4_Retail_Data_Integration.ipynb
├── Indian FMCG Retail Sales Customer Inventory (2024).csv
├── cleaned_retail_data.csv
├── Retail_Data_Integration_Task_4.sql
├── Retail_Data_Analysis.xlsx
└── README.md