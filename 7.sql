USE [Northwind]
--7. ����������� �������� �������, ������� ���� ������� � ���������� ����� 1000 ���� (quantity)?

SELECT [ProductID],[ProductName] FROM [Products]
WHERE [ProductID] IN(
SELECT [ProductID] FROM
(SELECT [ProductID],SUM([Quantity]) as 'ProductQuantity' FROM [Order Details]
GROUP BY [ProductID]) AS s
WHERE [ProductQuantity] < 1000)
ORDER BY [ProductID]