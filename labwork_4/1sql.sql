select Name from Production.Product 
where ProductID =
	(select top 1 ProductId from Sales.SalesOrderDetail group by ProductID order by Count(*) desc)