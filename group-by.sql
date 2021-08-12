SELECT g.name AS "Genre", COUNT(t.*) AS "Count"
FROM genre g
JOIN track t
ON g.genre_id = t.genre_id
GROUP BY g.name;


SELECT g.name AS "Genre", COUNT(t.*) AS "Count"
FROM genre g
JOIN track t
ON g.genre_id = t.genre_id
WHERE g.name = 'Rock' OR g.name = 'Pop'
GROUP BY g.name;


SELECT a.name AS "Artist", COUNT(al.*) AS "Number of Albums"
FROM artist a
JOIN album al
ON a.artist_id = al.artist_id
GROUP BY a.name;