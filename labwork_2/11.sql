select s.ProductID
	from Sales.SalesOrderDetail as s
	group by s.ProductID
	having(MAX(s.OrderQty) = 1)