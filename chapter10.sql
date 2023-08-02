-- Контрольный вопрос 1
INSERT INTO customers
VALUES (100, 'Renat', 'Skosarev', null, null, 'Perm', 'Perm', 'Russia', 123456, null, null, 'skosarrrev@gmail.com', null);


-- Контрольный вопрос 2
INSERT INTO invoices
VALUES (10000, 100, STRFTIME('%Y-%m-%d', 'now'), null, 'Perm', 'Perm', 'Russia', 123456, 50.00);


-- Контрольный вопрос 3
DELETE FROM customers
WHERE CustomerId = 100;