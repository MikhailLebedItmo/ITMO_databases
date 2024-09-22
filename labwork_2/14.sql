select p.ProductSubcategoryID, COUNT(*) as count
	from Production.Product as p
	where p.Color is not NULL AND p.ProductSubcategoryID is not NULL
	group by p.ProductSubcategoryID