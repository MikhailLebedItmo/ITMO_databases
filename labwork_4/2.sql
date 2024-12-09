select FirstName from Person.Person 
	where BusinessEntityID = 
	(select SalesPersonID from Sales.SalesOrderHeader
	where SalesOrderID = 
		(select top 1 SalesOrderID from Sales.SalesOrderDetail group by SalesOrderID 
		order by SUM(UnitPrice * OrderQty) desc))