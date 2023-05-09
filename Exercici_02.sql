-- Exercici 2
-- Realitza la següent consulta sobre la base de dades acabada de crear: 
--
-- Has d'obtenir el nom, el país i la data de naixement 
-- d'aquelles persones per les quals no consti una data de mort 
-- i ordenar les dades de la persona més vella a la persona més jove.

SELECT person_name as nom, 
       person_country as pais, 
       person_dob as data_naixement
FROM TB_PERSON
where person_dod is null
order by person_dob asc;
;
