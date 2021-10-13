USE [Northwind]
--4. �������� ����������� �������� ��������, ���������� �� ������ ���������� �������?
SELECT COUNT (DISTINCT [CustomerID]) AS 'number of unique buyers' FROM [Orders]
WHERE [EmployeeID] IN(
SELECT [EmployeeID] FROM (
SELECT TOP (1) WITH TIES 
	[EmployeeID],COUNT (*) CNT
	FROM [Orders]
	WHERE [ShippedDate] IS NOT NULL
	GROUP BY [EmployeeID]
	ORDER BY CNT DESC) AS EMPID)