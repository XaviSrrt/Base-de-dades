-- Exercici 7

-- Realitza la següent operació sobre la base de dades acabada de crear: 

-- Canvia el gènere de la pel·lícula "Ocho apellidos catalanes" perquè 
-- consti com a comèdia i no com a romàntica.

-- CONSULTES PREVIES
select * from tb_movie;
select * from tb_movie where movie_title='Ocho apellidos catalanes';
select tb_movie.movie_title,tb_movie.movie_genre_id,tb_genre.genre_id,tb_genre.genre_name
from tb_movie inner join tb_genre 
on tb_movie.movie_genre_id=tb_genre.genre_id
where movie_title='Ocho apellidos catalanes';
select * from tb_genre;
SELECT * FROM tb_genre WHERE genre_name = 'Comedia';

-- RESPOSTA A L'EXERCICI
update tb_movie
set movie_genre_id=(select genre_id from tb_genre where genre_name='Comedia')
where movie_title='Ocho apellidos catalanes';
commit;

