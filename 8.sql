USE [Northwind]
--8. Как зовут покупателей, которые делали заказы с доставкой в другой город (не в тот, в котором они прописаны)?
SELECT * FROM [Orders]
SELECT * FROM [Customers]

SELECT [ContactName] FROM [Customers]
WHERE [CustomerID] IN(
	SELECT [CustomerID] FROM 
		(SELECT [Orders].[CustomerID],[Orders].[ShipCity],[Customers].[City] FROM [Orders]
		JOIN [Customers] ON [Customers].[CustomerID] = [Orders].[CustomerID]
		) AS s
	WHERE [ShipCity] NOT LIKE [City])
