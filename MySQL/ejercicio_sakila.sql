-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

use sakila;
select * from customer;
select * from address;
select * from city;

select * from address
where city_id=312;

select customer.first_name as nombre, customer.last_name as apellido, customer.email, address.address as direccion 
from customer
inner join address on address.address_id = customer.address_id
where address.address_id in (256,517) and address.city_id = 312
;


-- 2. ¿Qué consulta harías para obtener todas las películas de comedia? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, 
-- la calificación, las características especiales y el género (categoría).

select * from film;
select * from film_category;
select * from category
where category.name = 'comedy'; -- comedy, category_id=5

select film.title as titulo , film.description as descripcion , film.release_year as año_estreno, film.rating as calificacion, film.special_features as caracteristicas_especiales , category.name as genero
from film
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where category.name = 'comedy'
;
-- 3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? 
-- Su consulta debe devolver la identificación del actor, el nombre del actor, el título de la película,
-- la descripción y el año de lanzamiento.

Select * from film;
Select * from film_actor;
Select * from actor;

select actor.actor_id as actor_id, actor.first_name as nombre, actor.last_name as apellido, film.title as titulo_pelicula, film.description as descripcion_pelicula, film.release_year as año_realizacion 
from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
where actor.actor_id = 5
;

-- 4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 
-- y dentro de estas ciudades (1, 42, 312 y 459)? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

Select * from customer;
Select * from store;
Select * from address;
Select * from city;

Select customer.first_name as nombre, customer.last_name as apellido, customer.email, address.address as direccion
from customer
inner join store on store.store_id = customer.store_id
inner join address on address.address_id = customer.address_id
inner join city on city.city_id = address.city_id
where store.store_id = 1 
and city.city_id in (1,42,312,459)
;


-- 5. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" 
-- y "característica especial = detrás de escena", unidas por actor_id = 15? 
-- Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento, la calificación 
-- y la función especial. Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.

select * from film
where film.rating= 'G' and film.special_features= 'Behind the Scenes';
select * from actor
where actor.actor_id= 15;

select film.title as titulo, film.description as description, film.release_year as año_realizacion, film.rating as clasificacion, film.special_features
from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
where  film.rating= 'G' and film.special_features like '%Behind the Scenes' and actor.actor_id = 15
;

-- 6. ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369? 
-- Su consulta debe devolver film_id, title, actor_id y actor_name.

select * from actor;
select * from film;

select film.film_id as identificador_pelicula, film.title as titulo, actor.actor_id as identificador_actor, concat(actor.first_name,'  ', actor.last_name) as nombre_actor
from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
where  film.film_id = 369
;

-- 7. ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, 
-- las características especiales y el género (categoría).

select * from payment
where payment.amount = 2.99;
select * from film;

select film.film_id as identificador_pelicula, film.title as titulo, film.description as descripcion, film.release_year as año_estreno, film.rating as calificacion, film.special_features, category.name as categoria, payment.amount as precio
from film
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
inner join inventory on film.film_id = inventory.film_id
inner join rental on inventory.inventory_id = rental.inventory_id
inner join payment on payment.rental_id = rental.rental_id
where payment.amount = 2.99 and category.name = 'drama'
group by film.film_id
;

-- 8. ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, 
-- las características especiales, el género (categoría) y el nombre y apellido del actor.

select  film.title as titulo,film.description as descripcion, film.release_year as año_estreno, film.rating as calificacion, film.special_features, category.name as categoria, actor.actor_id as identificador_actor, concat(actor.first_name,'  ', actor.last_name) as nombre_actor
from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where actor.first_name = 'Sandra' and actor.last_name = 'Kilmer'  and  category.name = 'action'
;