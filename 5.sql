USE [Northwind]
--5. ������� ����������� ������� �������� �������� �1 � 1997-�?
SELECT COUNT(DISTINCT [ShipCity]) FROM [Orders]
WHERE [EmployeeID] = 1 AND
[ShipCountry] LIKE 'France' AND
([ShippedDate] BETWEEN '19970101' AND '19971231')



