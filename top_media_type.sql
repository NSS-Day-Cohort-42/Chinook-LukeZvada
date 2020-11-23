SELECT
FileType, MAX(MediaType) AS SalesTotal
FROM
    (SELECT mt.Name AS FileType, SUM(il.Quantity) AS MediaType
    FROM MediaType AS mt
    JOIN Track AS t ON t.MediaTypeId = mt.MediaTypeId
    JOIN InvoiceLine AS il ON il.TrackId = t.TrackId
    GROUP BY mt.MediaTypeId)