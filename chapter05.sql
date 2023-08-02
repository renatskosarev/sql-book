SELECT Total      AS [Original Amount],
       Total + 10 AS [Additional Operator],
       Total - 10 AS [Subtracktion Operator],
       Total / 10 AS [Division Operator],
       Total * 10 AS [Multiplication Operator],
       Total % 10 AS [Modulo Operator]
FROM invoices
ORDER BY Total DESC;


-- Стр 73
SELECT Total,
       Total + Total * 0.15 AS '15% Tax'
FROM invoices;


SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE Total = 1.98
ORDER BY InvoiceDate;


-- Стр 75
SELECT InvoiceId,
       InvoiceDate,
       Total
FROM invoices
WHERE Total > 1.98;

SELECT InvoiceId,
       InvoiceDate,
       Total
FROM invoices
WHERE Total >= 1.98;

SELECT InvoiceId,
       InvoiceDate,
       Total
FROM invoices
WHERE Total != 1.98
ORDER BY Total;


SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE Total BETWEEN 1.98 AND 5.00
ORDER BY Total DESC;


SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE Total IN (1.98, 3.96)
ORDER BY InvoiceDate;

SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE Total IN (13.86, 18.86, 21.86)
ORDER BY InvoiceDate;


SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE BillingCity = 'Tucson'
ORDER BY Total;

SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE BillingCity IN ('Tucson', 'Paris', 'London')
ORDER BY BillingCity;

SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE BillingCity LIKE 'T%'
ORDER BY Total;

SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE InvoiceDate = '2009-01-03 00:00:00'
ORDER BY Total;

SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 00:00:00'
ORDER BY Total;

SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total
FROM invoices
WHERE DATE(InvoiceDate) > '2009-07-05'
ORDER BY Total DESC
LIMIT 10;

SELECT InvoiceId,
       InvoiceDate,
       BillingCity,
       Total
FROM invoices
WHERE BillingCity LIKE 'P%'
  AND Total > 2.00
ORDER BY InvoiceDate;


-- CASE
SELECT InvoiceDate,
       BillingAddress,
       BillingCity,
       Total,
       CASE
           WHEN Total < 2.00 THEN 'Baseline Purchase'
           WHEN Total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
           WHEN Total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
           ELSE 'Top Performers'
           END AS 'PurchaseType'
FROM invoices
ORDER BY BillingCity;


-- Контрольные вопросы
SELECT InvoiceDate,
       BillingCountry,
       BillingCity,
       Total,
       CASE
           WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
           ELSE 'Foreign Sales'
           END AS 'SalesType'
FROM invoices
ORDER BY InvoiceDate;

SELECT InvoiceDate,
       BillingCountry,
       BillingCity,
       Total,
       CASE
           WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
           ELSE 'Foreign Sales'
           END AS 'SalesType'
FROM invoices
ORDER BY SalesType, BillingCountry;

SELECT InvoiceDate,
       BillingCountry,
       BillingCity,
       Total,
       CASE
           WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
           ELSE 'Foreign Sales'
           END AS 'SalesType'
FROM invoices
WHERE SalesType = 'Domestic Sales'
  AND Total > 15.00;