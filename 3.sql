USE [Northwind]
--3. Какие покупатели до сих пор ждут отгрузки своих заказов?
SELECT * FROM [Customers]
WHERE [CustomerID] IN(
	SELECT DISTINCT [CustomerID] from [Orders]
	WHERE [ShippedDate] IS NULL)
