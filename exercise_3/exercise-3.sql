-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category
SELECT 
*
FROM 
film 
LEFT JOIN 
film_category
ON 
film_category.film_id = film
