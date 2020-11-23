SELECT
MAX(CustomerTotal) AS SalesTotal,
EmployeeFullName

FROM
    (SELECT ROUND(SUM(i.Total), 2) AS CustomerTotal,
    e.FirstName || ' ' || e.LastName AS EmployeeFullName
    FROM Invoice AS i
    JOIN Customer AS c ON c.CustomerId = i.CustomerId
    JOIN Employee AS e ON e.EmployeeId = c.SupportRepId
    WHERE i.InvoiceDate LIKE "%2009%"
    GROUP BY e.EmployeeId)