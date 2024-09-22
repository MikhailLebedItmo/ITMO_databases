select distinct s.SalesOrderID 
	from Sales.SalesOrderDetail s
	GROUP BY s.SalesOrderID
	HAVING COUNT(*) > 3