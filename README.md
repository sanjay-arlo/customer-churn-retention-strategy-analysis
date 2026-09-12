# Customer Churn & Retention Strategy Analysis

> Business Analyst portfolio project analysing customer churn, revenue at risk and behavioural segments to prioritise retention actions.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/customer-churn-retention-strategy-analysis/)**

## Business question

**Which customer segments create the greatest churn and revenue exposure, and where should retention effort be focused first?**

**Flow:** Customer segments → Churn KPIs → Revenue-at-risk analysis → Segment prioritisation → Retention recommendation

## What the dashboard shows

- **Customers** — customers represented in the selected view
- **Churn rate** — churned customers as a percentage of customers
- **Revenue at risk** — monthly revenue associated with churned customers
- **Churn by segment** — segment-level churn comparison
- **Revenue at risk** — concentration of monthly recurring revenue exposure
- **Retention priorities** — segments with the greatest financial exposure

## Dataset

`data/segment_summary.csv`

The repository contains **synthetic / illustrative segment records** for portfolio demonstration. Customer and revenue figures are not company data.

## Analysis

The project answers:

1. Which customer segments have the highest churn?
2. Which segments contribute the most customers to churn?
3. How much monthly revenue is exposed to churn?
4. Which segments should be prioritised for retention campaigns?
5. How should customer success teams allocate intervention effort?

## Project files

- `index.html` — live dashboard interface
- `app.js` — dashboard calculations, filtering and charts
- `style.css` — dashboard presentation layer
- `data/segment_summary.csv` — source segment KPI dataset
- `data/customers.csv` — detailed customer dataset
- `sql/analysis.sql` — SQL churn analysis
- `analysis/analysis.py` — Python / Pandas analysis
- `dashboard/dashboard_spec.md` — dashboard and KPI specification

## Technical stack

- **Excel** — retention analysis and scenario planning
- **SQL / MySQL** — churn and revenue-at-risk analysis
- **Python / Pandas** — data preparation and analytical checks
- **HTML / CSS / JavaScript** — interactive live dashboard
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction

## KPI logic

**Churn rate**

`Churned Customers / Total Customers × 100`

**Monthly revenue at risk**

`SUM(Monthly Revenue for churned customers)`

**Retention priority**

Prioritise segments using both churn rate and financial exposure rather than churn rate alone.

## Limitation

This is a **portfolio case study**, not production customer analytics. A production implementation would require source-system customer histories, event timestamps, product usage detail, cohort definitions and validated revenue recognition rules.

## Author

**Sanjay Arlo**

Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)
