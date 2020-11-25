SELECT actorId, MAX(duration), MIN(duration), AVG(duration)
FROM PlaysIn NATURAL JOIN Movies
WHERE duration IS NOT NULL
GROUP BY actorId
ORDER BY actorId
