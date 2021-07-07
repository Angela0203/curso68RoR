select * from users;-- trae los registros y todas las columnas

select id, first_name from users; -- puedo especificar que columnas puedo traer.

select * from follows;

-- condicionales

select * from users where id=1;
select * from faves where user_id = 1;
select * from tweets where id= 9 or id= 10 or id= 11; -- el or no se usa mucho porque no es especifico.
select * from users where id in (3,4); -- el que se usa es el in.

-- data reunida en una sola query
select *from faves fv, users us, tweets tw -- se le puede agregar alias, puede ser cualquiera que se entienda.
where fv.user_id = us.id and fv.tweet_id = tw.id -- relaciones
; -- toda la informacion

select *from faves fv, users us, tweets tw -- se le puede agregar alias, puede ser cualquiera que se entienda.
where fv.user_id = us.id and fv.tweet_id = tw.id -- relaciones
and us.id = 1 -- solo los datos del usuario 1.
;

select us.first_name, us.last_name, tw.id, tw.tweet -- reduzco la informacion que traen.
from faves fv, users us, tweets tw -- se le puede agregar alias, puede ser cualquiera que se entienda.
where fv.user_id = us.id and fv.tweet_id = tw.id -- relaciones
and us.id = 1 -- solo datos especificos.
;

-- con Join
-- solo con datos especificos, mas "rapido".

select us.first_name, us.last_name, tw.id, tw.tweet 
from faves fv
INNER JOIN users us ON fv.user_id = us.id
INNER JOIN tweets tw ON fv.tweet_id = tw.id
-- inner join 
where  us.id = 1 -- solo los datos del usuario con id 1
;

-- insert
insert into users (first_name, last_name,handle,birthday,created_at, updated_at)
values ('Michael', 'Jordan', 'airjordan','1974-05-01','2021-07-05 16:20:00','2021-07-05 16:20:00' );

select * from users;

-- update
update users set birthday = '1963-02-17', updated_at='2021-07-05 16:24:00'
where id=6;

-- delete
delete from users 
where id in (7,8);

select * from users;


