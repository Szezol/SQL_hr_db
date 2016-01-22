SELECT DISTINCT ProductName, exclusive_products_prices.UnitPrice
FROM products
	JOIN (SELECT orderdetails.UnitPrice,ProductID
    FROM orderdetails
    WHERE orderdetails.UnitPrice>(SELECT AVG(orderdetails.UnitPrice) 
		FROM orderdetails)) as exclusive_products_prices
    ON exclusive_products_prices.ProductID=products.ProductID
ORDER BY exclusive_products_prices.UnitPrice;