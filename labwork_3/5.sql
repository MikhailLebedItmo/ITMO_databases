select TOP 3 psc.Name
from 
	Production.Product as p
join 
	Production.ProductSubcategory as psc on p.ProductSubcategoryID = psc.ProductSubcategoryID
group by psc.ProductSubcategoryID, psc.Name
order by COUNT(*) desc