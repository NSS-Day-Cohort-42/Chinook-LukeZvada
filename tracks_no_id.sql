SELECT t.Name AS "Track Name", 
mt.Name AS MediaType,
g.Name AS Genre
FROM Track AS t
JOIN MediaType AS mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre AS g ON g.GenreId = t.GenreId