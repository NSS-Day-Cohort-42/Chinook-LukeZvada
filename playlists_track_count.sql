SELECT p.Name, p.PlaylistId, Count(plt.TrackId) AS "TotalNumOfTracks"
FROM Playlist AS p
JOIN PlaylistTrack as plt
ON plt.PlaylistId = p.PlaylistId
GROUP BY p.PlaylistId