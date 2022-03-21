-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT
name 
FROM 
inventory
LEFT JOIN 
rental
ON
rental.inventory_id = inventory.inventory_id
LEFT JOIN 
film 
ON 
inventory.film_id = film.film_id
LEFT JOIN 
film_category
ON 
film.film_id = film_category.film_id
LEFT JOIN 
category 
ON 
film_category.category_id = category.category_id
WHERE 
rental.customer_id IS NULL