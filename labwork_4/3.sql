select Name from Production.Product
where ProductID in 
	(select sod.ProductID from Sales.SalesOrderDetail as sod
	join Sales.SalesOrderHeader as soh 
		on sod.SalesOrderId = soh.SalesOrderId
	group by sod.ProductID
	having Count(distinct CustomerId) = 1)

