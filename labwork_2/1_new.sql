SELECT p.Color, COUNT(*) 
	FROM Production.Product AS p
	WHERE p.ListPrice < 30 AND p.Color is NOT NULL
	GROUP BY p.Color