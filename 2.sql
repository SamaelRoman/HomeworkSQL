USE [Northwind]
--2. � ����� ������ ������ ��������������� ����� ������ ����?
SELECT DISTINCT [ShipCity] from [Orders]
WHERE DATEDIFF(DAY,[OrderDate],[ShippedDate]) > 10
