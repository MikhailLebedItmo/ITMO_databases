select distinct s.CustomerID
	from Sales.SalesOrderHeader s
	GROUP BY s.CustomerID, s.OrderDate
	HAVING COUNT(*) > 1