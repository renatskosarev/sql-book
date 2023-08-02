-- Контрольный вопрос №1
SELECT COUNT(*)
FROM invoices
WHERE Total > (select AVG(Total)
               from invoices
               where date(InvoiceDate) between '2010-01-01' and '2010-12-31');


-- Контрольный вопрос №2
SELECT DISTINCT c.FirstName,
       c.LastName
FROM invoices
INNER JOIN customers c ON invoices.CustomerId = c.CustomerId
WHERE Total > (select AVG(Total)
               from invoices
               where date(InvoiceDate) between '2010-01-01' and '2010-12-31');


-- Контрольный вопрос №3
SELECT DISTINCT c.FirstName,
       c.LastName
FROM invoices
INNER JOIN customers c ON invoices.CustomerId = c.CustomerId
WHERE c.Country = 'USA' AND Total > (select AVG(Total)
               from invoices
               where date(InvoiceDate) between '2010-01-01' and '2010-12-31');
