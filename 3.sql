USE [Northwind]
--3. ����� ���������� �� ��� ��� ���� �������� ����� �������?
SELECT * FROM [Customers]
WHERE [CustomerID] IN(
	SELECT DISTINCT [CustomerID] from [Orders]
	WHERE [ShippedDate] IS NULL)
