select p.ProductSubcategoryID 
	from Production.Product p
	group by p.ProductSubcategoryID
	having count(*) > 10