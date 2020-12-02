SELECT DISTINCT M2.movieId as movieId, title
FROM movies NATURAL JOIN
(
SELECT DISTINCT movieId
FROM PlaysIn NATURAL JOIN actors NATURAL JOIN movies
GROUP BY movieId
HAVING AVG(year-byear)>=70
) M2
ORDER BY movieId
