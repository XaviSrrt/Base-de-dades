-- Exercici 5
-- Realitza la següent operació sobre la base de dades acabada de crear: 

-- Has de crear un nou gènere anomenat "Documental" el qual tingui com 
-- a identificador el nombre 69.

select * from tb_genre;

insert into tb_genre(genre_id,genre_name,created_by_user,created_date,updated_date)
values(69,"Documental","Xavi","2023-05-09",null)
;
commit;

delete 
from tb_genre
where genre_id=0
;
commit;

