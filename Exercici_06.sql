-- Exercici 6
-- Fes la següent operació sobre la base de dades acabada de crear:  

-- Elimina la pel·lícula "La Gran Familia Española" de la base de dades.

-- CONSULTES PREVIES
select * from tb_movie;
select * from tb_movie where movie_title='La Gran Familia Española';
select * from tb_movie_person where movie_id=11;

-- RESPOSTA A L'EXERCICI

-- primer hem d'esborra els registres de tb_movie_person
-- ja que hi ha definida una restriccio que impedeix esborrar
-- directament la pel·licula de la taula tb_movies

delete
from tb_movie_person
where movie_id=11;
commit;

-- Ara ja podem esborrar la pelicula de la taula tb_movies
delete
from tb_movie
where movie_title='La Gran Familia Española'
;
commit;

select * from tb_movie;
