WITH RECURSIVE T AS
(
SELECT actorId, 0 as bacon
FROM Actors NATURAL JOIN playsIn
WHERE name = 'Frank Bacon'
UNION
SELECT actorId , bacon+1
FROM PlaysIn NATURAL JOIN
(
SELECT movieId, bacon
FROM T NATURAL JOIN PlaysIn
) M2
WHERE bacon < 5
)

SELECT DISTINCT * FROM T;
