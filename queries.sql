-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName FROM product
JOIN category
ON product.CategoryId = category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT id, companyname FROM [order]
JOIN shipper
ON [order].ShipVia = shipper.Id
WHERE [order].OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT productname, quantity FROM orderdetail
JOIN product
ON orderdetail.ProductId = product.Id
WHERE orderid = 10251
ORDER BY productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT
id as OrderID,
companyName as Customer_CompanyName,
lastname as Employee_lastName FROM [order]
JOIN customer
ON [order].CustomerId = customer.Id
JOIN employee
ON [order].EmployeeId = employee.Id;