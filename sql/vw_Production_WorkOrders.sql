----------------------------------------------------------------------------------------------------------------------------
-- Production WorkOrders view:
-- Decision focus: Track manufacturing efficiency and waste
----------------------------------------------------------------------------------------------------------------------------
CREATE VIEW dbo.vw_Production_WorkOrders AS
SELECT
	WorkOrderID, -- track each production batch
	ProductID,
	OrderQty,
	StockedQty, -- Quantity successfully built and added to inventory (measures output efficiency)
	ScrappedQty, -- Quantity failed inspection (measures waste and quality issues)
	StartDate,
	EndDate
FROM Production.WorkOrder;
