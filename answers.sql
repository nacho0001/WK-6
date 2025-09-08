-- GET EMPLOYEE DETAILS WITH THEIR OFFICE INFORMATION
-- INNER JOIN IS USED BECAUSE WE ONLY WANT EMPLOYEES THAT HAVE A MATCHING OFFICE
SELECT e.firstName,
       e.lastName,
       e.email,
       e.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- GET PRODUCT DETAILS ALONG WITH THEIR PRODUCT LINE
-- LEFT JOIN IS USED SO WE KEEP ALL PRODUCTS, EVEN IF SOME DON'T HAVE A PRODUCT LINE MATCH
SELECT p.productName,
       p.productVendor,
       p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

-- GET THE FIRST 10 ORDERS WITH THEIR DETAILS
-- RIGHT JOIN IS USED SO WE KEEP ALL ORDERS, EVEN IF SOME DON'T HAVE A CUSTOMER MATCH
SELECT o.orderDate,
       o.shippedDate,
       o.status,
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;

