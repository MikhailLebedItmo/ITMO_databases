select psc.Name, COUNT(*) as count
from 
	Production.Product as p
join 
	Production.ProductSubcategory as psc on p.ProductSubcategoryID = psc.ProductSubcategoryID
group by psc.ProductSubcategoryID, psc.Name