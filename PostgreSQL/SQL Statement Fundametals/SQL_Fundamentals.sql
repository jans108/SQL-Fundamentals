SELECT COUNT(amount) FROM payment
WHERE amount > 5;


SELECT COUNT(*) AS how_many_actors_name_starts_with_P FROM actor
WHERE first_name LIKE 'P%'


SELECT COUNT(DISTINCT district) FROM address;

SELECT DISTINCT(district) FROM address;

SELECT COUNT(*) FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';