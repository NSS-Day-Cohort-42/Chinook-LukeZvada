SELECT BillingCountry, COUNT(*) AS TotalSales
FROM Invoice
GROUP BY BillingCountry