SELECT CategoryName,ProductName,QuantityPerUnit,UnitsInStock
FROM products
	JOIN categories
	ON categories.CategoryID=products.CategoryID
WHERE Discontinued=0 and UnitsInStock>0
ORDER BY CategoryName,ProductName;