SELECT 
    c.FirstName ||' '|| c.LastName as CustomerFullName,
    e.FirstName ||' '|| e.LastName as AgentFullName,
    i.BillingCountry, i.Total
FROM Invoice as i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN employee e ON c.SupportRepId = e.EmployeeId
ORDER BY CustomerFullName DESC