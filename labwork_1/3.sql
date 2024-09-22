SELECT p.name, p.Color, p.Size FROM Production.Product as p
	WHERE p.ListPrice < 100 and p.Color = 'Black'
ORDER BY p.ListPrice ASC