SELECT 
    e.FirstName || ' ' || e.LastName AS EmployeeFullName,
    COUNT(c.CustomerId) AS NumberOfCustomers
FROM Employee AS e
JOIN Customer AS c ON c.SupportRepId = e.EmployeeId
WHERE Title LIKE "Sales% Support% Agent%"
GROUP BY e.EmployeeId