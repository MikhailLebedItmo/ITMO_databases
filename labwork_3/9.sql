select TOP 1 p.Name
from Sales.SalesOrderDetail as sod
join Production.Product as p
	on p.ProductID = sod.ProductID
group by p.ProductID, p.Name
order by COUNT(*) desc