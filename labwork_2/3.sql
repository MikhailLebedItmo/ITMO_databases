SELECT 
	p.ProductSubcategoryID
	, COUNT(*)
	FROM Production.Product AS p
	WHERE p.ProductSubcategoryID is NOT NULL
	GROUP BY p.ProductSubcategoryID