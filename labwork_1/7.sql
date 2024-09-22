SELECT DISTINCT p.color FROM Production.Product as p
	WHERE p.color is NOT NULL AND p.ListPrice BETWEEN 10 and 50