SELECT
    *
FROM
    invoices
INNER JOIN
        customers
ON
    invoices.CustomerId = customers.CustomerId;


SELECT
    i.InvoiceId,
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Address,
    i.InvoiceDate,
    i.BillingAddress,
    i.Total
FROM invoices as i
INNER JOIN
    customers AS c
ON i.CustomerId = c.CustomerId;


SELECT
    i.InvoiceId,
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Address,
    i.InvoiceDate,
    i.BillingAddress,
    i.Total
FROM invoices as i
LEFT OUTER JOIN
    customers AS c
ON i.CustomerId = c.CustomerId;


SELECT
    ar.ArtistId AS [ArtistID From Artists Table],
    al.ArtistId AS [ArtistID From Albums Table],
    ar.Name AS [Artist Name],
    al.Title AS [Album Title]
FROM
    artists AS ar
LEFT JOIN
    albums AS al
ON ar.ArtistId = al.ArtistId
WHERE al.ArtistId IS NULL;


-- Контрольные вопросы
SELECT albums.Title,
       tracks.Name
FROM albums
INNER JOIN
    tracks
ON tracks.AlbumId = albums.AlbumId;

SELECT a.Title,
       t.name,
       g.Name
FROM albums AS a
INNER JOIN
    tracks AS t
ON a.AlbumId = t.AlbumId
INNER JOIN
    genres AS g
ON t.GenreId = g.GenreId
ORDER BY a.AlbumId;