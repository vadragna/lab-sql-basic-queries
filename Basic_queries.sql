USE Sakila;

-- Show all tables.
SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer
SELECT *
from actor;

SELECT *
from film;

SELECT *
from customer;

-- Retrieve the following columns from their respective tables: 3.1 Titles of all films from the film table - 3.2. List of languages used in films, with the column aliased as language from the language table - 3.3 List of first names of all employees from the staff table
SELECT title
from film;

SELECT film.title, language.name
FROM film
JOIN language ON film.language_ID = language.language_id;

SELECT first_name
FROM staff;

-- Retrieve unique release years.
SELECT distinct(release_year)
FROM film;

-- Counting records for database insights: 5.1 Determine the number of stores that the company has. - 5.2 Determine the number of employees that the company has.
-- 5.3 Determine how many films are available for rent and how many have been rented. -- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT store_id) 
FROM store;

SELECT COUNT(DISTINCT staff_id) 
FROM staff;

SELECT COUNT(DISTINCT inventory_id) FROM inventory;
SELECT COUNT(DISTINCT film_id) FROM inventory;

SELECT DISTINCT(title)
FROM film
JOIN inventory
ON film.film_id = inventory.film_id;

SELECT DISTINCT(last_name)
FROM actor;

-- Retrieve the 10 longest films.
SELECT title
FROM film
ORDER BY length DESC
limit 10;

-- Use filtering techniques in order to: 7.1 Retrieve all actors with the first name "SCARLETT". - .2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

SELECT title
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(DISTINCT film_id)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


