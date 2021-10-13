USE [Northwind]
--7. Перечислите названия товаров, которые были проданы в количестве менее 1000 штук (quantity)?

SELECT [ProductID],[ProductName] FROM [Products]
WHERE [ProductID] IN(
SELECT [ProductID] FROM
(SELECT [ProductID],SUM([Quantity]) as 'ProductQuantity' FROM [Order Details]
GROUP BY [ProductID]) AS s
WHERE [ProductQuantity] < 1000)
ORDER BY [ProductID]