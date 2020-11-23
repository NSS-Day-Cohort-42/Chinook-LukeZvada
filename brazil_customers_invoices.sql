SELECT FirstName || ' ' || Lastname as FullName, InvoiceDate, BillingCountry, InvoiceId
FROM Invoice as i
JOIN Customer as c ON c.CustomerId = i.CustomerId
AND c.Country = "Brazil"