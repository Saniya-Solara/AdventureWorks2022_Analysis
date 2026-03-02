---------------------------------------------------------------------------------------------------------------------------
-- ProductMaster view:
-- Decision focus: Understand product type, whether it is made in-house, salable, and lifecycle status
----------------------------------------------------------------------------------------------------------------------------
CREATE VIEW dbo.vw_ProductMaster AS
SELECT
	pro.ProductID,
	pro.Name AS Product_Name, 
	pro.MakeFlag,
	pro.FinishedGoodsFlag,
	pro.DaysToManufacture,
	pro.SellStartDate,
	pro.SellEndDate,
	pro.DiscontinuedDate,

	sub.ProductSubcategoryID,
	sub.Name AS Subcategory,

	cat.ProductCategoryID,
	cat.Name as Category
FROM Production.Product AS pro
LEFT JOIN Production.ProductSubcategory AS sub
	ON pro.ProductSubcategoryID = sub.ProductSubcategoryID
LEFT JOIN Production.ProductCategory AS cat
	ON sub.ProductCategoryID = cat.ProductCategoryID;

-- LEFT JOIN keeps all products in the dataset, even if subcategory/category info is missing, 
-- so we don’t hide revenue, inefficiencies, or data gaps.
