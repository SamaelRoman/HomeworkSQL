USE [Northwind]
--5. Сколько французских городов обслужил продавец №1 в 1997-м?
SELECT COUNT(DISTINCT [ShipCity]) FROM [Orders]
WHERE [EmployeeID] = 1 AND
[ShipCountry] LIKE 'France' AND
([ShippedDate] BETWEEN '19970101' AND '19971231')



