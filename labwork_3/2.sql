select psc.Name
from 
	Production.ProductSubcategory as psc
group by
	psc.Name
having
	COUNT(*) > 1