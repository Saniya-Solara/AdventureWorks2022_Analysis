🚲💰 AdventureWorks2022: Revenue & Operations Analysis

Executive-ready SQL + BI analysis of AdventureWorks2022.

Each report is structured as a Triptych:

Scatter → Donut → Bar
Designed to reduce cognitive friction and concentrate attention where decisions matter most.

Raw ERP tables were transformed into curated SQL views, then modeled in Power BI for executive-level insight delivery.

📝 TL;DR Dashboard
Metric	Value
Revenue	$109.85M
Active SKUs	266 / 504
Top 10 SKU Concentration	28%
Top 67 SKU Concentration	≈ 82%
Scrap Exposure	11K units
Average Scrap Rate	0.2%
Primary Exposure	In-house components
🎯 Strategic Priority

Rationalize SKU portfolio.
Protect revenue drivers.
Reduce operational drag.

📌 Report 1: Revenue Concentration & Product Dependency

🔎 Visual Structure

Scatter Plot → Revenue by SKU (exposes concentration curve)

Donut Chart → Revenue by Category (validates dominance)

Bar Chart → Top Revenue SKUs (isolates economic drivers)

🧠 Insight

67 SKUs generate ~82% of total revenue

Bikes contribute ~86% of category revenue

Revenue is concentrated.
Portfolio breadth ≠ portfolio value.

🚀 Actions
1️⃣ Focus on Top 20–70 SKUs

So What: Release operational bandwidth from ~400 low-impact SKUs.

2️⃣ Monitor Category Dependency (Bikes)

So What: Reduce exposure to single-category shocks.

3️⃣ Rationalize Low-Performing SKUs

So What: Free capital. Simplify forecasting. Reduce inventory drag.

📌 Report 2: Operational Efficiency & Scrap Exposure

🔎 Visual Structure

Bar Graph → Top scrap quantities

Scatter Plot → Revenue vs Scrap

Donut Chart → Manufacturing Source (in-house dominance)

🧠 Insight

Scrap rate is low (0.2%)

Scrap concentration exists in high-volume in-house components

Waste is small in percentage terms.
Not small in operational leverage.

🚀 Actions
1️⃣ Implement Component-Level Scrap Controls

So What: Improve margin without increasing sales.

2️⃣ Prioritize High-Impact Components

Fork End, Seat Stays, BB Ball Bearings
So What: Maximum operational ROI from minimal intervention.

3️⃣ Reduce Margin Drag from Complexity

So What: Simplify production flows. Free capacity.

📌 Report 3: Executive Recommendations & Strategic Implications

Strategic Directives
🔹 Rationalize SKU Portfolio

Eliminate inactive or low-performing SKUs
So What: Simplifies operations and frees working capital.

🔹 Protect & Prioritize Revenue Drivers

Focus on 20–70 SKUs (~80% revenue)
So What: Concentrate management attention on economic value.

🔹 Implement Scrap Controls

Reduce operational waste
So What: Unlock margin gains without revenue expansion.

🔹 Align Capacity & Forecasting

Support high-revenue SKUs efficiently
So What: Reduce stockouts, idle capacity, and volatility.

🗂 Data Architecture (SQL Backbone)

All analysis is powered by curated SQL views created in SSMS.

USE AdventureWorks2022;
📊 Base Tables Used

Production.Product

Production.ProductCategory

Production.ProductSubcategory

Sales.SalesOrderDetail

Sales.SalesOrderHeader

Production.WorkOrder

Production.BillOfMaterials

🔹 Final Analytical Views
1️⃣ vw_ProductMaster

Decision Focus: Product classification & lifecycle

LEFT JOIN preserves all products

Identifies category hierarchy

Tracks sell start/end/discontinued status

2️⃣ vw_Sales_Fact

Decision Focus: Revenue & time intelligence

INNER JOIN ensures revenue accuracy

Enables Year / Quarter / Month slicing

Forms concentration analysis layer

3️⃣ vw_Production_WorkOrders

Decision Focus: Manufacturing efficiency

OrderQty vs StockedQty

ScrappedQty measurement

Batch-level tracking

4️⃣ vw_ProductComplexity

Decision Focus: Assembly intensity

Component count per product

Maximum BOM depth

Identifies complexity drivers

📁 Repository Structure
/sql/               → SQL scripts defining analytical views
/views_results/     → Exported view outputs from SSMS
/screenshots/       → Triptych visuals
README.md
🎯 Strategic Outcome

Concentrate revenue.
Reduce complexity.
Control waste.
Convert operational noise into decision leverage.

📦 Data Source & Reproducibility

This project uses the AdventureWorks2022 sample database provided by Microsoft.

The database file is not redistributed in this repository to respect licensing terms and avoid unnecessary file size expansion.

Official Download & Installation Guide:

https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms

🔧 How to Reproduce the Analysis

Download AdventureWorks2022.bak from Microsoft.

Open SQL Server Management Studio (SSMS).

Right-click Databases → Restore Database.

Select Device → Choose the downloaded .bak file.

Restore as AdventureWorks2022.

Execute SQL scripts in:

/sql/

This recreates the analytical views used in reporting and Power BI modeling.
