SELECT p.name, p.Size FROM Production.Product as p
	WHERE p.Color IS NOT NULL AND p.Size is NOT NULL