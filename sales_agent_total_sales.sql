SELECT 
e.FirstName || ' ' || e.LastName as EmployeeFullName,
Round(Sum(i.Total), 2) AS TotalSalesMade
FROM Employee AS e
JOIN Customer as c ON c.SupportRepId = e.EmployeeId
JOIN Invoice as i ON c.CustomerId = i.CustomerId
WHERE Title LIKE "Sales% Support% Agent%"
GROUP BY e.EmployeeId
