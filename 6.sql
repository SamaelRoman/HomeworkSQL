USE [Northwind]
-- 6. � ����� ������� ���� ������, � ������� ���� ���������� ������ ���� �������?
SELECT DISTINCT [ShipCountry] FROM [Orders]
WHERE [ShipCity] IN(
SELECT [ShipCity] FROM(
SELECT [ShipCity],COUNT(*) CNT FROM [Orders]
GROUP BY [ShipCity]) AS ALL_CITIES
WHERE [CNT] > 2)


