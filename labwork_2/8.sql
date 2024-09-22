select distinct s.ProductID 
	from Sales.SalesOrderDetail s
	GROUP BY s.ProductID
	HAVING COUNT(*) > 3