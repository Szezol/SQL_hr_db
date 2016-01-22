SELECT OrderID,orderdetails.ProductID,ProductName,UnitPrice,Quantity,Discount, ((Quantity*UnitPrice)-Discount) as Total
FROM orderdetails
INNER JOIN (select ProductID,ProductName
	FROM products) as products_with_name
    ON orderdetails.ProductID=products_with_name.ProductID
ORDER BY OrderID,orderdetails.ProductID;

