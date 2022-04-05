USE sakila;

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

SELECT title
FROM film;

SELECT name
FROM language;

SELECT *
from store;

SELECT count(*) AS number_of_staff
from staff;

SELECT first_name
FROM staff;

-- Bonus round (combine 2 tables in order to capture all the unique languagg names that are linke to films)
SELECT * -- DISTINCT name AS language
FROM film AS f
	INNER JOIN language AS l
		ON f.language_id = l.language_id
	RIGHT JOIN language as ol
		ON f.original_language_id = ol.language_id