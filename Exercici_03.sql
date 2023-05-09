-- Exercici 3
-- Realitza la següent consulta sobre la base de dades acabada de crear: 
--
-- Has d'obtenir el nom del gènere i el nombre total de pel·lícules d'aquest gènere 
-- i ordenar-ho per ordre descendent de nombre total de pel·lícules.  

-- CONSULTES PREVIES
-- no funciona compta com 1 els generes que no tenen peli
SELECT tb_genre.genre_name, count(*)
FROM TB_GENRE
LEFT JOIN tb_movie
ON TB_GENRE.GENRE_ID=tb_movie.movie_genre_id
group by tb_genre.genre_name
order by count(*) desc
;

-- RESPOSTA A L'EXERCICI

-- versio facil basada en la relacio entre pelicules i generes,
-- pero que no contempla els generes dels quals no hi ha pelicula
select tb_genre.genre_name,count(*) as total_pelicules
from tb_movie 
inner join tb_genre
on tb_movie.movie_genre_id=tb_genre.genre_id
group by tb_genre.genre_name
order by count(*) desc;

-- versio que inclou els generes sense pelicules
select genre_name,sum(hi_ha_peli) as total_pelis
from
	(SELECT tb_genre.genre_name,tb_movie.movie_genre_id,tb_movie.movie_title,
	case 
	when tb_movie.movie_genre_id is null then 0 
	else 1 
	end as hi_ha_peli
	from tb_genre
	LEFT JOIN tb_movie
	ON TB_GENRE.GENRE_ID=tb_movie.movie_genre_id) as query_base
group by genre_name
order by sum(hi_ha_peli) desc
;

;
