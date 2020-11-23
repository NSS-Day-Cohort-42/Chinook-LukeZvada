SELECT i.InvoiceId, COUNT(il.InvoiceLineId)
FROM Invoice i
JOIN InvoiceLine as il on il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId