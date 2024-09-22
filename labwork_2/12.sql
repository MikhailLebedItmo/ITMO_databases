select TOP 1 s.SalesOrderID
	from Sales.SalesOrderDetail as s
	group by s.SalesOrderID
	order by COUNT(*) desc