SELECT DISTINCT actorId, MAX(duration), MIN(duration), AVG(duration)
FROM PlaysIn NATURAL JOIN Movies
GROUP BY actorId
