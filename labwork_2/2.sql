SELECT p.Color 
	FROM Production.Product AS p
	WHERE p.Color is NOT NULL
	GROUP BY p.Color HAVING MIN(p.ListPrice) > 100