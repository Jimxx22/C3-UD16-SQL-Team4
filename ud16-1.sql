USE `actividades`;

#SELECTS

#1.1
Select nombre from articulos;
#1.2
SELECT nombre, precio from articulos;
#1.3
Select nombre from articulos where precio<=200;
#1.4
Select * from articulos where precio between 60 and 120;
#1.5
select nombre, precio*166.386 from articulos;
#1.6
select avg(precio) from articulos;
#1.7
select avg(precio) from articulos where fabricante = 2;
#1.8
select count(codigo) from articulos where precio >= 180;
#1.9
select nombre, precio from articulos where precio>=180 order by precio desc;
#1.10
select a.*, f.* from articulos as a, fabricantes as f;
#1.11
select a.nombre, a.precio, f.nombre from articulos as a, fabricantes as f where a.fabricante=f.codigo;
#1.12
select avg(precio), fabricante from articulos group by fabricante;
#1.13
select avg(a.precio), f.nombre from articulos as a, fabricantes as f where a.fabricante=f.codigo group by a.FABRICANTE;
#1.14
select f.nombre from fabricantes as f, articulos as a where a.fabricante=f.codigo group by a.fabricante having avg(a.precio) >= 150;
#1.15
select nombre, precio from articulos where precio=(Select min(precio) from articulos);
#1.16
select a.nombre, a.precio, f.nombre from articulos as a, fabricantes as f where a.FABRICANTE=f.CODIGO and a.precio IN (select max(a.precio) from articulos as a, fabricantes as f where a.FABRICANTE=f.CODIGO group by a.FABRICANTE);
#1.17
select codigo, nombre, precio ,fabricante from articulos
union
select MAX(codigo)+1, 'Altavoces', 70, 2 from articulos;
#1.18
select codigo, nombre from articulos where codigo != 8
union
select codigo, 'Impresora Laser' from articulos where codigo = 8;
#1.19
select precio*0.9 from articulos;
#1.20
select precio-10 from articulos where precio >= 120;