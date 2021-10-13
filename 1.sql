USE [Northwind]
--1. Как называется самый дорогой товар из товарной категории №1?
SELECT TOP 1 [ProductName] FROM [Products]
WHERE [CategoryID] = 1
ORDER BY [UnitPrice] DESC