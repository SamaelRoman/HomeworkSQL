USE [Northwind]
-- 6. ¬ каких странах есть города, в которые было отправлено больше двух заказов?
SELECT DISTINCT [ShipCountry] FROM [Orders]
WHERE [ShipCity] IN(
SELECT [ShipCity] FROM(
SELECT [ShipCity],COUNT(*) CNT FROM [Orders]
GROUP BY [ShipCity]) AS ALL_CITIES
WHERE [CNT] > 2)


