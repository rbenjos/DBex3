WITH RECURSIVE T AS
(
SELECT actorId, movieId, 0 as bacon
FROM Actors NATURAL JOIN playsIn
WHERE name = 'Frank Bacon'
UNION ALL

SELECT p1.actorId, p2.movieId, bacon+1
FROM T INNER JOIN PlaysIn p1 ON (p1.movieId = T.movieId AND T.bacon < 6) INNER JOIN PlaysIn p2 ON (p1.actorId = p2.actorID)

)
SELECT actorId
FROM actors
WHERE actorId IN 
(SELECT actorId
	FROM T
	GROUP BY actorID
	WHERE bacon < 6)
;
