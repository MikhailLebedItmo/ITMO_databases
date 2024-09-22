select pc.Name, COUNT(*) as count
from 
	Production.Product as p
join 
	Production.ProductSubcategory as psc on p.ProductSubcategoryID = psc.ProductSubcategoryID
join 
	Production.ProductCategory as pc on psc.ProductCategoryID = pc.ProductCategoryID
group by pc.Name