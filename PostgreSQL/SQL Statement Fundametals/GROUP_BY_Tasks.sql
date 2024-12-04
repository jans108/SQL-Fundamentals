SELECT staff_id, COUNT(*) 
FROM payment
GROUP BY staff_id;


SELECT rating, ROUND(AVG(replacement_cost), 2) AS avg_cost_for_each_rating
FROM film
GROUP BY rating

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5