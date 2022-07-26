USE `actividades`;

#SELECTS

#3.1
select * from almacenes;
#3.2
select * from cajas where valor > 150;
#3.3
select contenido from cajas group by CONTENIDO;
#3.4
select avg(valor) from cajas;
#3.5
select avg(valor) from cajas group by almacen;
#3.6
select CODIGO from almacenes, cajas where codigo = almacen and 150 < (select avg(valor) from cajas where almacenes.codigo = almacen) group by codigo;
#3.7
Select c.numReferencia, a.lugar from cajas as c, almacenes as a where c.almacen=a.codigo;
#3.8
select codigo as codigo_almacen, count(codigo) as numero_cajas from almacenes, cajas where almacenes.codigo = cajas.almacen group by codigo;
#3.9
select codigo from almacenes, cajas where codigo = almacen AND capacidad < (select count(almacen) from cajas where almacenes.codigo = almacen) group by codigo;
#3.10
select numreferencia from cajas, almacenes where cajas.almacen = almacenes.codigo AND almacenes.lugar = 'Bilbao';
#3.11
insert into almacenes values (6,'Barcelona', 3);
#3.12
INSERT INTO cajas VALUES('H5RT','Papel',200,2);
#3.13
update cajas set valor = valor*0.85;
#3.14
update cajas as c1 inner join cajas as c2 set c1.valor = c2.valor*0.80 where c1.valor > (Select avg(c2.valor));
#3.15
delete from cajas where valor < 100;
#3.16
ALTER TABLE cajas DROP CONSTRAINT cajas_ibfk_1;
ALTER TABLE cajas ADD CONSTRAINT cajas_ibfk_1 FOREIGN KEY (almacen) REFERENCES almacenes(codigo) ON DELETE CASCADE;
delete from almacenes where capacidad < (select count(almacen) from cajas where almacenes.codigo = almacen);
