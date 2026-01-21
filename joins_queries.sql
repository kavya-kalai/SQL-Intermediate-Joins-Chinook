SELECT c.FirstName, c.LastName, i.InvoiceId, i.Total
FROM Customer AS c
INNER JOIN Invoice AS i ON c.CustomerId = i.CustomerId;
SELECT c.FirstName, c.LastName, i.InvoiceId
FROM Customer AS c
LEFT JOIN Invoice AS i ON c.CustomerId = i.CustomerId
WHERE i.InvoiceId IS NULL;
SELECT t.Name AS TrackName, SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM Track AS t
JOIN InvoiceLine AS il ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY TotalRevenue DESC
LIMIT 10;