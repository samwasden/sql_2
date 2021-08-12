SELECT i.* 
FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE il.unit_price > .99


SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i 
JOIN customer c
ON i.customer_id = c.customer_id;


SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;


SELECT al.title, a.name
FROM album al
JOIN artist a
ON al.artist_id = a.artist_id;


SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';


SELECT t.name
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON pt.playlist_id = p.playlist_id;


SELECT t.name, p.name as playlist
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON pt.playlist_id = p.playlist_id;


SELECT t.name, a.title
FROM track t
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';



