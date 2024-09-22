select psc.Name, MAX(p.ListPrice) as price
from 
	Production.ProductSubcategory as psc
left join 
	Production.Product as p on p.ProductSubcategoryID = psc.ProductSubcategoryID 
	and p.Color = 'Red'
group by psc.ProductSubcategoryID, psc.Name