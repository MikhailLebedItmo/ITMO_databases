select Name from Production.Product as p
where ListPrice > 
	(select AVG(ListPrice) from Production.Product as pp where pp.ProductSubcategoryID = p.ProductSubcategoryID)