/*
 CREATED BY: Renat Skosarev
 CREATED ON: 8/1/2023
 DESCRIPTION: Some query
 */

SELECT FirstName AS 'First Name',
       LastName     [Last Name],
       Email     AS EMAIL,
       Phone        CELL,
       City         'PLACE (city)'
FROM customers
ORDER BY FirstName,
         LastName DESC
LIMIT 20;


-- Контрольные вопросы
SELECT COUNT(*)
FROM customers
WHERE LastName LIKE 'B%';

SELECT Company
FROM customers
ORDER BY Company DESC
LIMIT 1;

SELECT COUNT(*)
FROM customers
WHERE PostalCode IS NULL;