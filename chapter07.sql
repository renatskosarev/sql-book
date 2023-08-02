SELECT UPPER('  hello  '),
       TRIM('  hello world  '),
       '  hello  ',
       REPLACE('hello world', 'o', '_');


SELECT FirstName,
       LastName,
       Address
FROM customers
WHERE Country = 'USA';


SELECT FirstName,
       LastName,
       FirstName || ' ' || LastName
FROM customers;


SELECT FirstName || ' ' || LastName [Full Name]
FROM customers;


SELECT PostalCode,
       SUBSTR(PostalCode, 1, 5) AS [Five Digit Postal Code],
       SUBSTR(PostalCode, length(PostalCode) - 3) AS [ZIP + 4 Code]
FROM customers;

SELECT UPPER(LastName) || ' ' || SUBSTR(FirstName, 1, 1)
FROM customers;

SELECT strftime('%d-%m-%Y', 'now');


SELECT FirstName,
       LastName,
       STRFTIME('%Y-%m-%d', BirthDate) AS [Bithday No Timecode],
       STRFTIME('%Y-%m-%d', 'now') - STRFTIME('%Y-%m-%d', BirthDate) AS [Age]
FROM employees;

SELECT FirstName,
       LastName
FROM employees;

SELECT ROUND(5.49, 1);


SELECT
    BillingCity,
    ROUND(AVG(Total), 2)
FROM
    invoices
GROUP BY
    BillingCity;


SELECT
    BillingCity,
    AVG(Total) AS 'a1'
FROM
    invoices
WHERE
    BillingCity LIKE 'L%'
GROUP BY
    BillingCity
HAVING
    a1 > 5.5
ORDER BY
    BillingCity;


-- Контрольные вопросы
SELECT UPPER(FirstName || ' ' || LastName) || ' ' || Address || ', ' || City || ', ' || State || ' ' || SUBSTR(PostalCode, 1, 5) AS [INFO]
FROM customers
WHERE Country = 'USA';


SELECT
    STRFTIME('%Y', InvoiceDate) AS 'Year',
    ROUND(AVG(Total), 4)
FROM
    invoices
GROUP BY
    "Year";


SELECT
    SUM(Total)
FROM
    invoices;


SELECT FirstName || ' ' || LastName AS 'Full Name',
       Country,
       SUM(Total)
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
GROUP BY customers.CustomerId
ORDER BY SUM(Total) DESC
LIMIT 10;
-- из книги:
SELECT SUM(Total),
       FirstName,
       LastName
FROM invoices i
INNER JOIN customers c on i.CustomerId = c.CustomerId
GROUP BY c.CustomerId
ORDER BY SUM(Total) DESC;