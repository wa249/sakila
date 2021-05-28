-- 1.
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE address.city_id = 312;

-- 2.
SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category
ON film_category.category_id = category.category_id
WHERE category.name = 'Comedy'
ORDER BY film.film_id ASC;

-- 3.
SELECT actor.actor_id, actor.first_name, actor.last_name, film.film_id, film.title, film.description, film.release_year
FROM actor, film
WHERE actor_id = 5;

-- 4.
SELECT customer.store_id, address.city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE customer.store_id = 1
AND (address.city_id = 1
OR address.city_id = 42
OR address.city_id = 312
OR address.city_id = 459);

-- 5.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film
JOIN film_actor
ON film.film_id = film_actor.film_id
JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 15
AND (film.rating = 'G'
AND film.special_features LIKE 'behind the scenes');
