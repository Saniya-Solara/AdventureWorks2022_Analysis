----------------------------------------------------------------------------------------------------------------------------
-- Sales Fact View:
-- Decision focus: Measure revenue, volume, and trends by time
----------------------------------------------------------------------------------------------------------------------------
CREATE VIEW dbo.vw_Sales_Fact AS
SELECT
	sod.SalesOrderID,
	sod.ProductID,
	sod.OrderQty AS Quantity,
	sod.LineTotal AS Revenue,
	soh.OrderDate,
	YEAR(soh.OrderDate) AS Year,
	DATEPART(Quarter, soh.OrderDate) AS Quarter,
	DATENAME(Month,soh.OrderDate) AS Month,
	DATEPART(Month, soh.OrderDate) AS Month#
FROM Sales.SalesOrderDetail AS sod
INNER JOIN Sales.SalesOrderHeader AS soh
	ON sod.SalesOrderID = soh.SalesOrderID;

-- INNER JOIN ensures we only include sales lines that have a valid order header.
-- This prevents orphan lines and ensures revenue and quantity metrics are accurate.
