SELECT OrderID, SUM(((UnitPrice*Quantity)-Discount)) as OrderTotal
FROM orderdetails
GROUP BY OrderID;