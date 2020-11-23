SELECT ROUND(SUM(Total), 2) as 'TotalSalesIn2009'
FROM Invoice
WHERE InvoiceDate LIKE '2009%'; 