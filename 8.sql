USE [Northwind]
--8. ??? ????? ???????????, ??????? ?????? ?????? ? ????????? ? ?????? ????? (?? ? ???, ? ??????? ??? ?????????)?
SELECT * FROM [Orders]
SELECT * FROM [Customers]

SELECT [ContactName] FROM [Customers]
WHERE [CustomerID] IN(
	SELECT [CustomerID] FROM 
		(SELECT [Orders].[CustomerID],[Orders].[ShipCity],[Customers].[City] FROM [Orders]
		JOIN [Customers] ON [Customers].[CustomerID] = [Orders].[CustomerID]
		) AS s
	WHERE [ShipCity] NOT LIKE [City])
