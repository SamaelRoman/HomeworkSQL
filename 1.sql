USE [Northwind]
--1. ��� ���������� ����� ������� ����� �� �������� ��������� �1?
SELECT TOP 1 [ProductName] FROM [Products]
WHERE [CategoryID] = 1
ORDER BY [UnitPrice] DESC