# 🚲💰 AdventureWorks2022: Revenue & Operations Analysis

## Executive Summary

Executive-ready analysis of **AdventureWorks2022**.

Each report follows a **Triptych structure**:

> Scatter → Donut → Bar  
> Designed to reduce cognitive friction and focus attention on decision-critical drivers.

Raw ERP tables were transformed into curated **SQL views**, then modeled in **Power BI** for executive-level insight delivery.

---

# 📝 TL;DR Dashboard

| Metric | Value |
|--------|-------|
| **Revenue** | **$109.85M** |
| **Active SKUs** | 266 / 504 |
| **Top 10 SKU Concentration** | 28% |
| **Top 67 SKU Concentration** | ~82% |
| **Scrap Exposure** | 11K units |
| **Average Scrap Rate** | 0.2% |
| **Primary Exposure** | In-house components |

### 🎯 Strategic Priority
**Rationalize SKU portfolio. Protect revenue drivers. Reduce operational drag.**

---

# 📌 Report 1: Revenue Concentration & Product Dependency

![Report 2 Triptych](screenshots/Report2_Triptych.png)

## Visual Structure
- **Scatter Plot** → Revenue by SKU (exposes concentration curve)
- **Donut Chart** → Revenue by Category (validates dominance)
- **Bar Chart** → Top Revenue SKUs (isolates economic drivers)

## Insight
- 67 SKUs generate ~82% of total revenue  
- Bikes contribute ~86% of category revenue  

> Portfolio breadth ≠ Portfolio value.

## Strategic Actions

### 1️⃣ Focus on Top 20–70 SKUs
**So What:** Release operational bandwidth from ~400 low-impact SKUs.

### 2️⃣ Monitor Category Dependency (Bikes)
**So What:** Reduce exposure to single-category shocks.

### 3️⃣ Rationalize Low-Performing SKUs
**So What:** Free capital. Simplify forecasting. Reduce inventory drag.

---

# 📌 Report 2: Operational Efficiency & Scrap Exposure

![Report 3 Triptych](screenshots/Report3_Triptych.png)

## Visual Structure
- **Bar Graph** → Top scrap quantities
- **Scatter Plot** → Revenue vs Scrap impact
- **Donut Chart** → Manufacturing source split

## Insight
- Scrap rate: **0.2%**
- Concentrated in high-volume in-house components

> Waste is small in percentage — not in operational leverage.

## Strategic Actions

### 1️⃣ Implement Component-Level Scrap Controls
**So What:** Improve margins without increasing revenue.

### 2️⃣ Prioritize High-Impact Components
Fork End, Seat Stays, BB Ball Bearings  
**So What:** Targeted intervention maximizes ROI.

### 3️⃣ Reduce Margin Drag from Complexity
**So What:** Simplifies production and frees capacity.

---

# 📌 Report 3: Executive Recommendations

![Report 1 Triptych](screenshots/Report1_Triptych.png)

## Strategic Directives

### Rationalize SKU Portfolio
- Eliminate inactive / low-performing SKUs  
**Impact:** Frees working capital and reduces friction.

### Protect Revenue Drivers
- Focus on 20–70 SKUs (~80% revenue)  
**Impact:** Concentrates leadership attention on economic value.

### Implement Scrap Controls
- Reduce operational waste  
**Impact:** Unlock margin gains without revenue expansion.

### Align Capacity & Forecasting
- Support high-revenue SKUs efficiently  
**Impact:** Reduce stockouts and volatility.

---
# 🗂️ Data Architecture (SQL Backbone)

All analysis is powered by curated SQL views created in SSMS.
```sql
USE AdventureWorks2022;
```

## Base Tables Used

- `Production.Product`
- `Production.ProductCategory`
- `Production.ProductSubcategory`
- `Sales.SalesOrderDetail`
- `Sales.SalesOrderHeader`
- `Production.WorkOrder`
- `Production.BillOfMaterials`

---

# 🔹 Analytical Views

## vw_ProductMaster

**Decision Focus:** Product classification & lifecycle

- LEFT JOIN preserves full product set  
- Category hierarchy mapping  
- Lifecycle tracking  

---

## vw_Sales_Fact

**Decision Focus:** Revenue intelligence

- INNER JOIN ensures transactional integrity  
- Enables Year / Quarter / Month slicing  
- Forms revenue concentration analysis layer  

---

## vw_Production_WorkOrders

**Decision Focus:** Scrap & efficiency

- OrderQty vs StockedQty  
- ScrappedQty tracking  
- Batch-level production tracking  

---

## vw_ProductComplexity

**Decision Focus:** Operational intensity

- Component count per product  
- Maximum BOM depth  
- Identifies operational complexity drivers  

---

# 📁 Repository Structure

- `/sql/` → SQL scripts defining analytical views  
- `/views_results/` → Exported view outputs  
- `/screenshots/` → Triptych visuals  
- `AdventureWorks2022_Dataset.xlsx`  
- `README.md`

---

# 📦 Data Source & Reproducibility

This project uses the **AdventureWorks2022** sample database provided by Microsoft.

The `.bak` file is not redistributed to respect licensing and to avoid unnecessary repository size expansion.

**Official installation guide:**

https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms

---

# 🔧 How to Reproduce the Analysis

1. Download `AdventureWorks2022.bak` from the official Microsoft link above  
2. Open SQL Server Management Studio (SSMS)  
3. Right-click **Databases → Restore Database**  
4. Select **Device → Choose the downloaded `.bak` file**  
5. Restore the database as `AdventureWorks2022`  
6. Execute the SQL scripts located in: /sql/

This recreates the analytical views used in the reports and Power BI modeling layer.

---

# 🎯 Strategic Outcome

**Concentrate revenue.**  
**Reduce complexity.**  
**Control waste.**  
**Convert operational noise into decision leverage.**
