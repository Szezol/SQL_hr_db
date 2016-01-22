SELECT year(ShippedDate) as YearOFIncome,CategoryName,ProductName, SUM(((orderdetails.UnitPrice*Quantity)-Discount)) as ProductSales
FROM orders
	JOIN orderdetails
    ON orderdetails.OrderID=orders.OrderID
		JOIN products
		ON products.ProductID=orderdetails.ProductID
			JOIN categories
            ON categories.CategoryID=products.CategoryID
GROUP BY year(ShippedDate),ProductName
ORDER BY ProductName, year(ShippedDate);