SELECT [Color], [Style], [Class], COUNT(*)
SELECT p.Color, COUNT(*) 
	FROM Production.Product as p
	WHERE p.ListPrice < 30
	GROUP BY p.Color
