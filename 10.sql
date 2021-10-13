USE [Northwind]
--10. —колько всего единиц товаров (то есть, штук Ц Quantity) продал каждый продавец (им€, фамили€) осенью 1996 года?
SELECT [X].EmployeeID,SUM(Quantity)FROM
(SELECT [s].[EmployeeID],[Order Details].[Quantity] FROM (
SELECT [Orders].[OrderID],[Orders].[EmployeeID] FROM [Orders]
WHERE [OrderDate] BETWEEN '1996-09-01' AND '1996-11-30') AS S
JOIN [Order Details] ON [Order Details].[OrderID] = [s].OrderID) AS X
GROUP BY [X].[EmployeeID]