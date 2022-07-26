USE `actividades`;

#SELECTS

#4.1
select nombre from peliculas;
#4.2
Select calificacionEdad from peliculas group by calificacionEdad;
#4.3
select * from peliculas where calificacionedad is null;
#4.4
Select * from salas where pelicula is null;
#4.5
Select * from salas left join peliculas on salas.pelicula=peliculas.codigo;
#4.6
Select * from peliculas left join salas on salas.pelicula=peliculas.codigo;
#4.7
select peliculas.nombre from peliculas left join salas on salas.pelicula=peliculas.codigo where salas.codigo is null;
#4.8
Insert into peliculas values((Select max(p1.codigo)+1 from peliculas as p1),'Un, Dos, Tres', 'PG-7');
#4.9
update peliculas as p1 set p1.calificacionEdad = 'NC -13' where p1.calificacionEdad is null;
#4.10 
delete from salas where salas.pelicula IN (select codigo from peliculas where peliculas.calificacionEdad='G');