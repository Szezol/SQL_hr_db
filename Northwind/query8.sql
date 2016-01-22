SELECT min_prices_per_category.CategoryName,ProductName as CheapestProduct,min_prices_per_category.min_price as MinCategoryPrice
FROM products
	JOIN (SELECT min(products.UnitPrice) as min_price,CategoryName,products.CategoryID
	FROM products
		JOIN categories
		ON categories.CategoryID=products.CategoryID
		GROUP BY CategoryName) as min_prices_per_category
	ON min_prices_per_category.CategoryID=products.CategoryID
	WHERE min_prices_per_category.min_price=products.UnitPrice    
;