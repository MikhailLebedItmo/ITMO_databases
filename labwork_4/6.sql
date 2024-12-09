select ProductID from Sales.SalesOrderDetail
where ProductID not in
	(select sod.ProductID from Sales.SalesOrderDetail sod
	join Sales.SalesOrderHeader soh on sod.SalesOrderID = soh.SalesOrderID
	WHERE EXISTS (
		SELECT *
		FROM Sales.SalesOrderHeader soh2
		WHERE soh2.CustomerID = soh.CustomerID
		AND sod.ProductID NOT IN (
			SELECT sod3.ProductID
			FROM Sales.SalesOrderDetail sod3
			WHERE sod3.SalesOrderID = soh2.SalesOrderID
		)
	))
