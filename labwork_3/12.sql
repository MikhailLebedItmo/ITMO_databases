select v.CreditRating, COUNT(pv.ProductID) as cnt
from Purchasing.Vendor as v
left join Purchasing.ProductVendor as pv
	on pv.BusinessEntityID = v.BusinessEntityID
group by v.CreditRating