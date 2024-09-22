select p.Name, pc.Name
from 
	Production.Product as p
join 
	Production.ProductSubcategory as psc on p.ProductSubcategoryID = psc.ProductSubcategoryID
join 
	Production.ProductCategory as pc on pc.ProductCategoryID = psc.ProductCategoryID
WHERE p.Color = 'Red' AND p.ListPrice >= 100
