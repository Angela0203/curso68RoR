select * from users;
select * from friendships;

Select users.id, users.first_name as nombre_usuario, users.last_name as apellido_usuario, user2.first_name as nombre_amigo, user2.last_name as apellido_amigo
from users
inner join friendships on friendships.user_id = users.id 
inner join users AS user2 on user2.id = friendships.friend_id
;

-- cantidad de amigos
SELECT users.first_name, count(users.id) cant_amigos FROM users 
LEFT JOIN friendships ON  friendships.user_id = users.id 
LEFT JOIN users as user2 ON  user2.id = friendships.friend_id
group by users.id
;

-- Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.
Select users.id, users.first_name as nombre_usuario, users.last_name as apellido_usuario, user2.first_name as nombre_amigo, user2.last_name as apellido_amigo
from users
inner join friendships on friendships.user_id = users.id 
inner join users AS user2 on user2.id = friendships.friend_id
where friendships.friend_id = 4
;
-- Devuelve el recuento de todas las amistades.

;
-- Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
-- Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.
-- Devuelve a los amigos de Eli en orden alfabético.
-- Eliminar a Marky Mark de los amigos de Eli.
-- Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos

-- ejemplo profe
select MAX(cant_amigos) as maximo from (
										SELECT users.first_name, count(users.id) cant_amigos FROM users 
										LEFT JOIN friendships ON  friendships.user_id = users.id 
										LEFT JOIN users as user2 ON  user2.id = friendships.friend_id
										group by users.id, users.first_name
									) as amigos
;