SELECT
    a.Name AS Artist,
    SUM(il.Quantity) AS PurchaseTotal
FROM Artist AS a
JOIN Album AS al ON al.ArtistId = a.ArtistId
JOIN Track AS t ON t.AlbumId = al.AlbumId
JOIN InvoiceLine AS il ON il.TrackId = t.TrackId
GROUP BY a.ArtistId
ORDER BY PurchaseTotal DESC
LIMIT 3