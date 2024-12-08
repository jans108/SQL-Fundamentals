SELECT customer_id, COUNT(*) AS plat_status_qualification 
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;

SELECT customer_id, SUM(amount) as total_spent
FROM payment
WHERE staff_id IN(2)
GROUP BY customer_id
HAVING SUM(amount) > 100