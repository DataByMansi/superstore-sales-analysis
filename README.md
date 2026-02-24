<div align="center">

# 🛒 Superstore Sales Analysis

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)](https://postgresql.org)
[![Power BI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com)
[![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)](https://microsoft.com/excel)

**An end-to-end data analysis project on 4 years of US retail data**
uncovering sales trends, profitability drivers, and actionable business insights.

![Dashboard](exports/Dashboard.png)

</div>

---

## 📌 Project Overview

This project covers the complete data analyst workflow — from raw data to interactive dashboard — using a real-world retail dataset of **9,994 orders** across **4 years**, **3 product categories**, and **49 US states**.

| | |
|---|---|
| 📦 **Dataset** | Superstore Sales (Kaggle) |
| 📅 **Period** | 2014 – 2017 |
| 📊 **Records** | 9,994 orders |
| 🌍 **Coverage** | 49 US States |

---

## 🔧 Tools & Technologies

| Tool | Purpose |
|---|---|
| 🐍 **Python** (Pandas, Matplotlib, Seaborn) | Data cleaning, EDA, visualizations |
| 🐘 **PostgreSQL / pgAdmin** | Business queries, window functions, advanced analysis |
| 📊 **Microsoft Excel** | Pivot tables, summary dashboard, slicers |
| 📈 **Power BI Desktop** | Interactive KPI dashboard |
| 📓 **Jupyter Notebook** | Analysis environment |

---

## 📁 Project Structure

```
superstore-analysis/
│
├── 📂 data/
│   └── superstore_clean.csv          # Cleaned dataset
│
├── 📂 notebooks/
│   ├── 01_data_cleaning.ipynb        # Data cleaning & transformation
│   ├── 02_eda_analysis.ipynb         # Exploratory data analysis
│   └── 03_visualizations.ipynb      # Charts & visual insights
│
├── 📂 sql/
│   ├── 01_business_queries.sql       # Core business analysis
│   └── 02_advanced_analysis.sql     # Window functions, CTEs, trends
│
├── 📂 excel/
│   └── superstore_summary.xlsx       # Pivot table dashboard
│
├── 📂 dashboard/
│   └── superstore_dashboard.pbix     # Power BI interactive dashboard
│
├── 📂 exports/
│   └── dashboard_screenshot.png      # Dashboard preview
│
└── README.md
```

---

## 🔍 Key Business Questions

- 📦 Which **product categories** are most profitable?
- 🌍 Which **regions and states** drive the most revenue?
- 💸 How does **discounting** impact profitability?
- 📉 Which **sub-categories** are consistently loss-making?
- 📅 What does the **year-over-year sales trend** look like?
- 👥 Which **customer segments** generate the most value?

---

## 💡 Key Findings

> 🔴 **Tables and Bookcases** are the top loss-making sub-categories
>
> 🟡 **Discounts above 40%** consistently result in losses across all categories
>
> 🟢 **Technology** generates the highest sales of all categories
>
> 🟢 **West region** leads in both total sales and profit
>
> 📈 Sales grew consistently year over year with **Q4 spikes** every year

---

## 📊 Dashboard Highlights

The Power BI dashboard includes:

- 🔢 **KPI Cards** — Total Sales, Total Profit, Profit Margin %, Total Orders
- 📊 **Clustered Bar Chart** — Sales & Profit by Category
- 📈 **Line Chart** — Sales Trend by Year
- 🗺️ **Map Visual** — Sales distribution across US States
- 📉 **Horizontal Bar** — Profit by Sub-Category
- 🍩 **Donut Chart** — Sales share by Region
- 🎛️ **Slicers** — Filter by Category, Year, and Region

---

## 🚀 How to Run

**Python Notebooks:**
```bash
pip install pandas matplotlib seaborn
```
Run in order: `01_data_cleaning` → `02_eda_analysis` → `03_visualizations`

**SQL Analysis:**
- Create a PostgreSQL database named `superstore_db` in pgAdmin
- Import `superstore_clean.csv` via pgAdmin Import tool
- Run scripts in order: `01` → `02`

**Power BI Dashboard:**
- Open `dashboard/superstore_dashboard.pbix` in Power BI Desktop
- All visuals and measures load automatically

---

## 📬 Contact

<div align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Mansi_Tamta-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/mansi-tamta)
[![Email](https://img.shields.io/badge/Gmail-mansi41997@gmail.com-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:mansi41997@gmail.com)

---

*⭐ If you found this project helpful, consider giving it a star!*

</div>
