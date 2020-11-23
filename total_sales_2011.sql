SELECT ROUND(SUM(Total), 2) as 'TotalSalesIn2011'
FROM Invoice
WHERE InvoiceDate LIKE '2011%'; 