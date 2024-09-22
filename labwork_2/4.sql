SELECT 
	s.ProductID
	, COUNT(*)
	FROM Sales.SalesOrderDetail AS s
	GROUP BY s.ProductID