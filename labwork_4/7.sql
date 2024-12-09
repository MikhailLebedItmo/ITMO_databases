SELECT DISTINCT soh.CustomerID
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader soh
    ON sod.SalesOrderID = soh.SalesOrderID
WHERE NOT EXISTS (
    SELECT *
    FROM Sales.SalesOrderHeader soh2
    WHERE soh2.CustomerID = soh.CustomerID
      AND sod.ProductID NOT IN (
          SELECT sod2.ProductID
          FROM Sales.SalesOrderDetail sod2
          WHERE sod2.SalesOrderID = soh2.SalesOrderID
      )
);

