SELECT City,CompanyName,ContactName,'Suppliers' as Relationship
FROM suppliers
UNION
SELECT City,CompanyName,ContactName,'Customers' as Relationship
FROM customers
ORDER BY City,ContactName;