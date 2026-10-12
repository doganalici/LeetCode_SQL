SELECT US.name,COALESCE(SUM(RD.distance),0) AS 'travelled_distance' FROM Users US
LEFT JOIN Rides RD ON US.id = RD.user_id
GROUP BY RD.user_id, US.name
ORDER BY SUM(RD.distance) DESC, US.name 
