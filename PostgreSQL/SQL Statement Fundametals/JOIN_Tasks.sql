SELECT email, customer.address_id, district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California'

SELECT * FROM actor
SELECT * FROM film
SELECT * FROM film_actor

SELECT film.title, film.film_id, actor.first_name, actor.last_name, actor.actor_id
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Nick'
AND actor.last_name = 'Wahlberg'