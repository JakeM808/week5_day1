-- Question 1
SELECT count(*)
FROM actor a 
WHERE last_name = 'Wahlberg';
      
 --Answer: 2

--Question 2
SELECT count(*) 
FROM payment p 
WHERE amount BETWEEN 3.99 AND 5.99;

--Answer: 5,607


--Question 3

SELECT film_id 
FROM inventory i
GROUP BY film_id
HAVING count(film_id) = 7; 

--Answer: See OUTPUT table

	
--Question 4
SELECT  count(*)
FROM customer
WHERE first_name = 'Willie';

--Answer 2

--Question 5:
SELECT count(staff_id), staff_id
FROM rental
GROUP BY Staff_id;


count|staff_id|
-----+--------+
 8040|       1|
 8004|       2|
 --Answer: employee 1

--Question 6:
SELECT count (DISTINCT district)
FROM address a ;

--answer 378

--Question 7:

SELECT count(film_id), film_id
FROM film_actor  
GROUP BY film_id
ORDER BY count (film_id) desc;

SELECT *
FROM film f 
WHERE film_id = 508;
--Answer:
--Lambs Cincinatti

--Question 8:
SELECT count(*)
FROM customer c
WHERE store_id = 1 AND last_name LIKE '%es' ;

--Answer: 13

--Question 9:
SELECT amount, count(amount)
FROM payment p
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(*) > 250;

--Answer: 3 amounts 

--Question 10:
SELECT count(DISTINCT rating)
FROM film;

--Answer: 5

SELECT rating, count(rating)
FROM film
GROUP BY rating
ORDER BY count(rating)
--Answer: PG-13
