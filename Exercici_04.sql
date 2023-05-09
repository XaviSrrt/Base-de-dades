-- Exercici 4

-- Realitza la següent consulta sobre la base de dades acabada de crear: 

-- Has d'obtenir, per a cada persona, el seu nom i el nombre màxim de rols 
-- diferents que ha tingut en una mateixa pel·lícula. 

-- Posteriorment, mostra únicament aquelles persones que hagin assumit més 
-- d'un rol en una mateixa pel·lícula.


-- CONSULTES PREVIES
select * from tb_person;
select * from tb_role;
select * from tb_movie_person order  by person_id asc;

-- RESPOSTA A L'EXERCICI, APARTAT 1
select tb_person.person_name,count(tb_movie_person.role_id)
from tb_movie_person
inner join tb_person
on tb_movie_person.person_id=tb_person.person_id
group by tb_person.person_name
;


-- RESPOSTA A L'EXERCICI, APARTAT 2
select tb_person.person_name,count(tb_movie_person.role_id)
from tb_movie_person
inner join tb_person
on tb_movie_person.person_id=tb_person.person_id
group by tb_person.person_name
having count(*)>1
;


