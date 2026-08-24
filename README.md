# 📊 Customer Churn & Retention Command Center

<p align="center">
  <b>End-to-End Customer Analytics Project using Excel & Power BI</b><br>
  Identifying churn drivers, quantifying revenue at risk, and prioritizing high-risk customers.
</p>

---

## 📌 Project Overview

Customer churn is a major challenge for subscription-based businesses. Losing customers reduces recurring revenue and increases the cost of acquiring new customers.

This project analyzes customer data to identify key factors associated with churn and help businesses prioritize customers who may require retention efforts.

The project follows an end-to-end analytics workflow:

> **Raw Data → Excel Data Cleaning → Data Validation → Business Calculations → Customer Risk Analysis → Power BI Dashboard → Business Insights**

The final solution is designed as a **Customer Churn & Retention Command Center**, providing an interactive view of customer retention performance, churn drivers, and potential revenue at risk.

---

## 🎯 Business Objectives

This project aims to answer the following questions:

- What is the overall customer churn rate?
- Which customer segments have the highest churn?
- How does contract type influence customer retention?
- Does customer tenure affect churn behavior?
- Which services or customer characteristics are associated with higher churn?
- Which customers should be prioritized for retention?
- How much potential revenue is associated with high-risk customers?

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|---|---|
| **Microsoft Excel** | Data cleaning, validation, business calculations, PivotTables |
| **Power BI** | Data visualization, DAX measures, interactive dashboards |
| **DAX** | KPI and business metric calculations |
| **Git & GitHub** | Version control and project documentation |

---

## 📂 Project Structure

```text
customer-churn-retention-analytics/
│
├── data/
│   └── customer_churn_raw.csv
│
├── excel/
│   └── Customer_Churn_Analytics.xlsx
│
├── powerbi/
│   └── Customer_Churn_Command_Center.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   ├── churn_drivers.png
│   └── risk_monitor.png
│
└── README.md
````

---

## 🔄 Project Workflow

```text
Raw Customer Data
        │
        ▼
Excel Data Cleaning
        │
        ▼
Data Validation
        │
        ▼
Business Calculations
        │
        ▼
Customer Segmentation
        │
        ▼
Risk Scoring
        │
        ▼
Power BI Dashboard
        │
        ▼
Business Insights & Retention Actions
```

---

# 📊 Dataset

The dataset contains customer-level information for a subscription-based telecommunications business.

### Key Data Categories

**Customer Information**

* Customer ID
* Gender
* Senior Citizen Status
* Partner
* Dependents

**Account Information**

* Customer Tenure
* Contract Type
* Payment Method
* Monthly Charges
* Total Charges

**Service Information**

* Internet Service
* Online Security
* Online Backup
* Device Protection
* Tech Support
* Streaming Services

**Target Variable**

* Churn Status

---

# 🧹 Excel Data Preparation

Microsoft Excel was used as the first stage of the analytics workflow.

### Data Cleaning Activities

* Checked for duplicate customer records
* Validated unique customer IDs
* Identified missing or blank values
* Converted incorrect data types
* Cleaned and standardized text values
* Prepared the dataset for analysis and visualization

### Excel Workbook Structure

```text
Customer_Churn_Analytics.xlsx
│
├── Raw_Data
├── Data_Quality
├── Cleaned_Data
├── Calculations
├── Pivot_Analysis
└── Dashboard_Data
```

---

# 🧮 Business Calculations

Additional analytical fields were created to support customer segmentation and risk analysis.

## Customer Lifetime Value

An estimated customer value was calculated using monthly charges and customer tenure.

```text
Customer Lifetime Value = Monthly Charges × Tenure
```

---

## Tenure Group

Customers were segmented based on their relationship duration:

```text
0–6 Months
7–12 Months
13–24 Months
25–48 Months
48+ Months
```

This segmentation helps identify whether newer customers are more likely to churn.

---

## Customer Risk Score

A rule-based risk scoring framework was created using customer characteristics associated with potential churn.

The risk model considers factors such as:

* Month-to-month contracts
* Short customer tenure
* Higher monthly charges
* Lack of technical support
* Lack of online security

---

## Risk Categories

Customers were classified into three categories:

| Risk Category  | Description                           |
| -------------- | ------------------------------------- |
| 🟢 Low Risk    | Lower number of churn risk indicators |
| 🟠 Medium Risk | Moderate churn risk                   |
| 🔴 High Risk   | Multiple churn risk indicators        |

---

## Revenue at Risk

A business metric was created to estimate the potential annual recurring revenue associated with high-risk customers.

```text
Revenue at Risk = Monthly Charges × 12
```

---

# 📈 Power BI Dashboard

The final dashboard is divided into three analytical pages.

---

## 1️⃣ Executive Overview

Provides a high-level summary of customer retention performance.

### Key Performance Indicators

* Total Customers
* Active Customers
* Churned Customers
* Churn Rate
* Monthly Recurring Revenue
* Revenue at Risk
* Average Customer Tenure

### Analysis

The executive overview helps stakeholders quickly understand the overall scale of churn and its potential business impact.

---

## 2️⃣ Churn Drivers Analysis

This page explores the characteristics and factors associated with customer churn.

### Analysis Areas

* Churn by Contract Type
* Churn by Tenure Group
* Churn by Payment Method
* Churn by Internet Service
* Churn by Customer Demographics
* Churn by Monthly Revenue Segment
* Churn by Customer Services

### Interactive Filters

* Contract Type
* Internet Service
* Gender
* Risk Category

This page helps answer:

> **Which customer characteristics are most strongly associated with churn?**

---

## 3️⃣ Customer Risk Monitor

The Customer Risk Monitor focuses on actionable customer prioritization.

High-risk customers can be analyzed based on:

* Customer ID
* Contract Type
* Tenure
* Monthly Charges
* Risk Category
* Revenue at Risk

This allows the retention team to identify customers and segments that should receive attention.

---

# 📐 Key DAX Measures

### Total Customers

```DAX
Total Customers =
COUNTROWS(Dashboard_Data)
```

### Churned Customers

```DAX
Churned Customers =
CALCULATE(
    COUNTROWS(Dashboard_Data),
    Dashboard_Data[Churn] = "Yes"
)
```

### Active Customers

```DAX
Active Customers =
CALCULATE(
    COUNTROWS(Dashboard_Data),
    Dashboard_Data[Churn] = "No"
)
```

### Churn Rate

```DAX
Churn Rate =
DIVIDE(
    [Churned Customers],
    [Total Customers],
    0
)
```

### Monthly Recurring Revenue

```DAX
MRR =
SUM(Dashboard_Data[MonthlyCharges])
```

### Revenue at Risk

```DAX
Revenue at Risk =
SUM(Dashboard_Data[RevenueAtRisk])
```

### Average Tenure

```DAX
Average Tenure =
AVERAGE(Dashboard_Data[Tenure])
```

---

# 💡 Key Business Insights

The analysis is designed to uncover insights related to:

* Contract types associated with higher customer churn
* Customer tenure patterns and early-stage churn
* Service combinations associated with retention risk
* High-value customers at potential risk
* Customer segments contributing to potential revenue loss

> Exact insights and figures will be based on the final dashboard analysis.

---

# 📊 Dashboard Screenshots

## Executive Overview

*Add dashboard screenshot here*

```markdown
![Executive Overview](screenshots/executive_overview.png)
```

## Churn Drivers

*Add dashboard screenshot here*

```markdown
![Churn Drivers](screenshots/churn_drivers.png)
```

## Customer Risk Monitor

*Add dashboard screenshot here*

```markdown
![Customer Risk Monitor](screenshots/risk_monitor.png)
```

---

# 🎯 Business Value

This project demonstrates how customer data can be transformed into actionable retention insights.

The analysis can help a business:

* Identify customer segments with elevated churn risk
* Understand potential drivers of customer attrition
* Prioritize retention initiatives
* Estimate potential revenue exposure
* Improve customer segmentation
* Support data-driven decision-making

---

# 🧠 Skills Demonstrated

### Excel

`Data Cleaning` · `Data Validation` · `Formulas` · `Business Calculations` · `PivotTables`

### Power BI

`Data Transformation` · `DAX` · `KPI Development` · `Interactive Dashboards` · `Data Visualization`

### Business Analytics

`Customer Churn Analysis` · `Customer Segmentation` · `Risk Analysis` · `Revenue Analysis` · `Business Storytelling`

---

# 🚀 Future Enhancements

Potential future improvements include:

* Predictive churn modeling using Python
* Machine learning-based customer risk scoring
* Automated data refresh
* Customer retention campaign tracking
* Time-series churn analysis
* Advanced customer lifetime value modeling

---

# 👩‍💻 Author

**Marmika Pimparkar**

Aspiring Data Analyst | Business Analytics Enthusiast

**Skills:** SQL · Excel · Power BI · Python · Data Analytics · Business Intelligence

---

⭐ If you found this project useful, consider giving the repository a star!

**Built with Excel, Power BI, and a business-first approach to customer analytics.**

```
```
