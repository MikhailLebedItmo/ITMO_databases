SELECT TOP 3 p.name, p.Size FROM Production.Product as p
	WHERE p.Color = 'Black'
ORDER BY p.ListPrice ASC