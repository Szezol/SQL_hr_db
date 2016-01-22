SELECT ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry,orders.CustomerID,customers.CompanyName,customers.Address,customers.City,customers.Region,customers.PostalCode,customers.Country,concat(employees.FirstName,' ',employees.LastName) as Salesperson,orderdetails.OrderID,OrderDate,RequiredDate,ShippedDate,shippers.CompanyName,orderdetails.ProductID,products.ProductName,orderdetails.UnitPrice,Quantity,Discount,((orderdetails.UnitPrice*Quantity)-Discount) as Total,Freight
FROM orders
	JOIN customers
	ON orders.CustomerID=customers.CustomerID
		JOIN employees
        ON employees.EmployeeID=orders.EmployeeID
			JOIN orderdetails
            ON orderdetails.OrderID=orders.OrderID
				JOIN products
                ON orderdetails.ProductID=products.ProductID
					JOIN shippers
                    ON shippers.ShipperID=orders.ShipVia
ORDER BY orders.CustomerID,OrderDate,products.ProductID;

