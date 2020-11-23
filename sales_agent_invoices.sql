SELECT 
e.FirstName || '' || e.LastName as EmployeeFullName,
i.InvoiceId, i.InvoiceDate, i.BillingAddress, i.BillingCity,
i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total
FROM Employee as e
JOIN Customer as c ON c.SupportRepId = e.EmployeeId
JOIN Invoice as i ON i.CustomerId = c.CustomerId