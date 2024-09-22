select 
	v.Name
	, COUNT(pv.ProductID)
from 
	Purchasing.Vendor as v
left join Purchasing.ProductVendor as pv on v.BusinessEntityID = pv.BusinessEntityID
group by v.BusinessEntityID, v.Name