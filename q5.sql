WITH RECURSIVE T AS
(
SELECT actorId, name, 0 as bacon
FROM Actors NATURAL JOIN playsIn
WHERE name = 'Frank Bacon'
UNION
SELECT actorId, name, bacon+1
FROM Actors NATURAL JOIN  PlaysIn NATURAL JOIN
(
SELECT movieId, bacon
FROM  T NATURAL JOIN PlaysIn
) M2
WHERE bacon < 5
)

SELECT DISTINCT actorId , name FROM T;
