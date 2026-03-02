----------------------------------------------------------------------------------------------------------------------------
--Product_Complexity view:
-- Decision focus: Identify products with many parts or deep assemblies
----------------------------------------------------------------------------------------------------------------------------
CREATE VIEW dbo.vw_ProductComplexity AS
SELECT 
	ProductAssemblyID,
	
	COUNT(DISTINCT ComponentID) AS ComponentCount, -- Number of unique parts (higher count = more complex / more inventory risk)
	
	MAX(BOMLevel) AS Max_BOM_Depth  -- Maximum depth of assembly (deeper = more steps, higher manufacturing effort)

FROM Production.BillOfMaterials
WHERE ProductAssemblyID IS NOT NULL
GROUP BY ProductAssemblyID;

-- Exclude rows where ProductAssemblyID is NULL because:
-- We only want to measure complexity for actual assemblies.
-- Components not tied to a product are irrelevant for this analysis.
