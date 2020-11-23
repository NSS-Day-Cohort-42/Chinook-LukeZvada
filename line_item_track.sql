SELECT t.Name as TrackName, i.InvoiceLineId
FROM Track as t
Join InvoiceLine as i ON i.TrackId = t.TrackId