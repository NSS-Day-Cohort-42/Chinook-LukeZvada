SELECT
MAX(CountryTotal) AS SalesTotal,
Country

FROM
    (SELECT ROUND(SUM(i.Total), 2) AS CountryTotal,
    i.BillingCountry AS Country
    FROM Invoice AS i
    GROUP BY i.BillingCountry)