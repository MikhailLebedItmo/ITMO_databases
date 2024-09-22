select TOP 1 pc.Name
from Sales.SalesOrderDetail as sod
join Production.Product as p
	on p.ProductID = sod.ProductID
join Production.ProductSubcategory as psc
	on p.ProductSubcategoryID = psc.ProductSubcategoryID
join Production.ProductCategory as pc
	on psc.ProductCategoryID = pc.ProductCategoryID
group by pc.ProductCategoryID, pc.Name
order by COUNT(*) desc