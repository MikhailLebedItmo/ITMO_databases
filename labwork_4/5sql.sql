SELECT distinct sod.ProductID
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
where soh.CustomerID not in
	(SELECT soh.CustomerID
	FROM Sales.SalesOrderDetail sod
	JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
	JOIN Production.Product p ON p.ProductID = sod.ProductID
	GROUP BY soh.CustomerID
	HAVING COUNT(distinct p.Color) = 2)
	AND
	soh.CustomerID in 
	(SELECT soh.CustomerID
	FROM Sales.SalesOrderDetail sod
	JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
	JOIN Production.Product p ON p.ProductID = sod.ProductID
	GROUP BY soh.CustomerID
	HAVING COUNT(distinct p.Color) = 1)
	AND sod.ProductID in 
	(SELECT sod.ProductID
	FROM Sales.SalesOrderDetail sod
	JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
	GROUP BY sod.ProductID
	HAVING COUNT(distinct soh.CustomerID) > 1)

