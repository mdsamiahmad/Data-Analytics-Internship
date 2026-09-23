# 📊 Telecom Customer Churn — Exploratory Data Analysis

This project performs **Exploratory Data Analysis (EDA)** on a telecom customer churn dataset to understand customer churn patterns, identify factors associated with churn, analyze churn reasons, and detect potential outliers.

---

## 📌 Project Overview

Customer churn is an important business problem for telecom companies. This project analyzes customer information, service usage, billing details, and churn data to identify patterns among customers who leave the service.

The analysis was performed using **Python, Pandas, Matplotlib, and Seaborn**.

---

## 🎯 Objectives

- Analyze the overall customer churn rate.
- Explore customer demographics and service usage.
- Compare churn across different contract types.
- Analyze churn by internet service and payment method.
- Study the relationship between churn and customer tenure.
- Analyze Monthly Charges and Total Charges.
- Identify potential outliers using the IQR method.
- Analyze reported churn reasons.
- Examine correlations between numerical variables and churn.

---

## 📂 Dataset

**Dataset:** |telecom_customer_churn_eda-1.csv|

- **Rows:** 7,043
- **Columns:** 22
- **Target Variable:** |Churn|
- **Churn Explanation:** |ChurnReason|

The dataset contains customer demographics, tenure, subscribed services, contract information, payment methods, monthly charges, total charges, and churn information.

---

## 🛠️ Technologies Used

- **Python**
- **Pandas** — Data manipulation and analysis
- **NumPy** — Numerical operations
- **Matplotlib** — Data visualization
- **Seaborn** — Statistical visualization
- **Jupyter Notebook** — Analysis environment
- **ReportLab** — Insight Summary PDF generation

---

## 🧹 Data Cleaning

The following cleaning steps were performed:

- Checked dataset dimensions and data types.
- Checked for missing values.
- Checked for duplicate records.
- Filled missing |MonthlyCharges| using the median.
- Filled missing |TotalCharges| using the median.
- Replaced missing |ChurnReason| values with |Not Available|.
- Verified that no missing values remained.

---

## 📊 Exploratory Data Analysis

The notebook includes analysis and visualizations for:

### 1. Churn Distribution

Analysis of churned versus non-churned customers.

### 2. Contract Type

Comparison of churn across:

- Month-to-month
- One year
- Two year

### 3. Internet Service

Analysis of churn rates across different internet service types.

### 4. Payment Method

Comparison of churn rates across payment methods.

### 5. Customer Characteristics

Analysis based on:

- Gender
- Senior Citizen status
- Tenure

### 6. Billing Analysis

- Monthly Charges by churn status
- Total Charges by churn status

### 7. Correlation Analysis

A correlation heatmap was created for numerical variables. A binary churn flag was also used to examine numerical correlations with churn.

### 8. Outlier Analysis

The IQR method was used to identify potential outliers in:

- |tenure|
- |MonthlyCharges|
- |TotalCharges|

Potential outliers were retained because they may represent genuine customer observations.

---

## 🔎 Churn Reasons

The analysis of churned customers identified the following frequently reported reasons:

| Churn Reason | Customers |
|---|---:|
| Price too high | 369 |
| Competitor offer | 360 |
| Network reliability | 247 |
| Poor customer service | 240 |
| Lack of support | 195 |
| Better package elsewhere | 187 |
| Service not needed | 168 |
| Billing issues | 91 |

The most frequently reported churn reason was **Price too high**, with **369 customers**.

---

## 📈 Key Results

| Metric | Value |
|---|---:|
| Total Customers | 7,043 |
| Churned Customers | 1,858 |
| Overall Churn Rate | 26.38% |
| Top Churn Reason | Price too high |
| Top Churn Reason Count | 369 |

---

## 📁 Project Structure

|text
Task_5_Telecom_Churn_EDA/
│
├── telecom_customer_churn_eda-1.csv
├── Task_5_Telecom_Churn_EDA.ipynb
├── Telecom_Churn_Insight_Summary.pdf
└── README.md
## 📄 Deliverables

### 📓 Jupyter Notebook

**|Task_5_Telecom_Churn_EDA.ipynb|**

Contains:

- Data cleaning
- Exploratory Data Analysis
- Data visualizations
- Churn-rate analysis
- Correlation analysis
- Outlier detection
- Churn-reason analysis

### 📑 Insight Summary PDF

**|Telecom_Churn_Insight_Summary.pdf|**

Contains the key metrics, findings, insights, and conclusion from the analysis.

---

## 💡 Key Insights

- The dataset contains **7,043 customers**.
- **1,858 customers** are classified as churned.
- The overall churn rate is **26.38%**.
- **Price too high** is the most frequently reported churn reason.
- Contract type, internet service, payment method, tenure, and customer support-related services were analyzed to identify differences in churn rates.
- Monthly Charges and Total Charges were examined using boxplots.
- Numerical variables were analyzed using correlation analysis.
- Potential outliers were identified in Monthly Charges and Total Charges.

---

## ✅ Conclusion

This Telecom Customer Churn EDA provides an overview of:

- Customer churn patterns
- Churn reasons
- Customer characteristics
- Service usage
- Billing variables
- Numerical relationships
- Potential outliers

The analysis provides a foundation for further investigation of customer churn and telecom customer behavior.

---

## 👨‍💻 Author

**Md Sami Ahmad**

**B.Tech Computer Science & Engineering**

**Aspiring Data Analyst**

### Skills Used

Python | SQL | Pandas | NumPy | Matplotlib |    Seaborn | Power BI |Excel

---

⭐ If you find this project useful, consider giving the repository a star!