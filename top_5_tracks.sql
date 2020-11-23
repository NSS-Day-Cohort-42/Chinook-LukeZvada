SELECT
    t.Name AS TrackName,
    SUM(il.Quantity) AS PurchaseTotal
FROM Track AS t
JOIN InvoiceLine AS il ON il.TrackId = t.TrackId
Group BY t.TrackId
ORDER BY PurchaseTotal DESC
LIMIT 5
