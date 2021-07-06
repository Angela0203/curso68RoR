use world;

select * from cities;
select * from countries;
select * from languages; 

-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente.

select lg.language, lg.percentage from languages lg
where lg.language LIKE '%lovene%'
ORDER BY lg.percentage desc;

SELECT cou.name, cou.id from countries cou
where cou.id in (16,96, 107,200);

select cou.name, lg.language, lg.percentage 
from languages lg
inner join countries cou on lg.country_id = cou.id
where cou.id in (16,96,107,200) and lg.language LIKE '%lovene%'
order by lg.percentage desc
;

-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país?
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)

select countries.name as name ,count(cities.id) as conteo from cities 
join countries on cities.country_id=countries.id
group by countries.id order by conteo desc;

-- 3. ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
-- Tu consulta debe organizar el resultado por población en orden descendente. (1)
select * from countries
where name = 'Mexico'
;
select * from cities
where country_id= 136 and population > 500000
order by population desc
;

-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%?
-- Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)

select * from languages -- escoger la tabla que tiene la foring key, y luego llama a la que tiene primary key
where percentage >89;

Select countries.name, languages.language, languages.percentage
from languages
inner join countries on languages.country_id = country_id
where languages.percentage >89
order by languages.percentage desc
;

-- alias
select ct.name nombre_paises, lg.language lenguaje , lg.percentage porcentaje from languages lg
INNER JOIN countries ct ON ct.id = lg.country_id
where lg.percentage >89
order by lg.percentage desc;

-- 5. ¿Qué consulta haría para obtener todos los países 
-- con un área de superficie inferior a 501 y una población superior a 100,000? (2)

select * from countries
where surface_area < 501
and population >100000;

-- 6. ¿Qué consulta harías para obtener países con 
-- solo Monarquía Constitucional con un capital superior a 200 y una esperanza de vida superior a 75 años? (1)

Select countries.name, countries.capital, countries.life_expectancy from countries
where government_form = 'Constitutional Monarchy'
and capital >200 
and life_expectancy >75;

-- 7. ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires y
-- tener una población superior a 500,000? La consulta debe devolver el nombre del país, 
-- el nombre de la ciudad, el distrito y la población. (2)

select * from countries;
select * from cities;

select * from countries
where name like 'Arg%'; -- id=9 ( entre mas informacion le entregue a la like es mas especifico)

Select countries.name as pais , cities.name as ciudad , cities.district as distrito, cities.population as poblacion  
from cities
inner join countries on countries.id = cities.country_id
where country_id =9 
and district = 'Buenos Aires' 
and cities.population > 500000
;

-- 8. ¿Qué consulta harías para resumir el número de países en cada región? 
-- La consulta debe mostrar el nombre de la región y el número de países. 
-- Además, la consulta debe organizar el resultado por el número de países en orden descendente. (2)

select * from countries;
Select region, count(region) from countries
group by region 
order by region desc;




