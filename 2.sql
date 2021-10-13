USE [Northwind]
--2. В какие города заказы комплектовались более десяти дней?
SELECT DISTINCT [ShipCity] from [Orders]
WHERE DATEDIFF(DAY,[OrderDate],[ShippedDate]) > 10
