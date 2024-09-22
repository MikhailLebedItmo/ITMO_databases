select p.Name
from Production.Product as p
join Purchasing.ProductVendor as pv
	on p.ProductID = pv.ProductID 
group by p.ProductID, p.Name
HAVING COUNT(*) > 1