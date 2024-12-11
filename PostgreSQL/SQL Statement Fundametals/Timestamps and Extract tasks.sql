SELECT * FROM payment;

SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) AS payment_month
FROM payment

SELECT COUNT(*) AS count_mondays_payments
FROM payment
WHERE EXTRACT(DOW from payment_date) = 1

