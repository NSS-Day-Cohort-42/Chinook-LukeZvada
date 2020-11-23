SELECT
MAX(TrackPurchaseTotal) AS TrackSalesTotal,
TrackName, Artist

FROM
    (SELECT ROUND(SUM(il.Quantity), 2) AS TrackPurchaseTotal,
    t.Name AS TrackName, t.Composer AS Artist
    FROM InvoiceLine AS il
    JOIN Track AS t ON il.InvoiceLineId = t.TrackId
    JOIN Invoice AS i ON i.InvoiceId = il.InvoiceId)