SELECT BillingCountry, COUNT(*) AS "TotalInvoices"
FROM Invoice
GROUP BY BillingCountry