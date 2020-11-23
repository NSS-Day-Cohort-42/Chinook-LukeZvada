SELECT 
t.Name AS TrackName, 
t.Composer AS ArtistName, 
i.InvoiceLineId
FROM Track AS t
Join InvoiceLine AS i ON i.TrackId = t.TrackId