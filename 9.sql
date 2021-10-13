USE [Northwind]
--9. Товарами из какой категории в 1997-м году заинтересовалось больше всего компаний, имеющих факс?

SELECT TOP (1) [Products].[CategoryID],Count(*) as 'count' FROM
(SELECT * FROM [Order Details]
WHERE [Order Details].OrderID IN(
SELECT [Orders].[OrderID] FROM [Orders]
WHERE [Orders].[CustomerID] IN(
SELECT [Customers].[CustomerID] FROM [Customers]
WHERE [Customers].[Fax] IS NOT NULL) AND [Orders].[OrderDate] BETWEEN '1997-01-01' AND '1997-12-31'))AS s
JOIN [Products] ON [Products].[ProductID] = [s].[ProductID]
GROUP BY [CategoryID]
ORDER BY [count] DESC
