CREATE VIEW V_AvgTotal AS
SELECT AVG(Total)
FROM invoices;


-- Запрос из КВ
SELECT BillingCity,
       AVG(Total)      AS [City Average],
       (SELECT avg(Total)
        from invoices) AS [Global Average]
FROM invoices
GROUP BY BillingCity
ORDER BY BillingCity;


-- Контрольный вопрос 1
CREATE VIEW V_GlobalAverage AS
SELECT AVG(Total)
FROM invoices;


-- Контрольный вопрос 2
SELECT BillingCity,
       AVG(Total)                      AS [City Average],
       (SELECT * FROM V_GlobalAverage) AS [Global Average]
FROM invoices
GROUP BY BillingCity
ORDER BY BillingCity;


-- Контрольный вопрос 3
CREATE VIEW V_CityAvgVsGlobalAvg AS
SELECT BillingCity,
       AVG(Total)                 AS [City Average],
       (SELECT * FROM V_GlobalAverage) AS [Global Average]
FROM invoices
GROUP BY BillingCity
ORDER BY BillingCity;


-- Контрольный вопрос 4
DROP VIEW V_GlobalAverage