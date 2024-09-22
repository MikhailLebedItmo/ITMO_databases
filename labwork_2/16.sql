select s.ProductID
	from Sales.SalesOrderDetail as s
	group by s.ProductID
	having COUNT(*) > 2 AND MAX(s.OrderQty) = 1