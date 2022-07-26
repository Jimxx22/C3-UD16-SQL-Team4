USE `actividades`;

#SELECTS

#2.1
select apellidos from empleados;
#2.2
select distinct apellidos from empleados;
#2.3
select * from empleados where apellidos = 'Smith';
#2.4
select * from empleados where apellidos = 'Smith' or apellidos = 'Rogers';
#2.5
Select * from empleados where departamento = 14;
#2.6
select * from empleados where departamento = 37 OR departamento = 77;
#2.7
Select * from empleados where apellidos like 'P%';
#2.8
select sum(presupuesto) from departamentos;
#2.9
Select count(dni) from empleados group by departamento;
#2.10
select empleados.*, departamentos.* from empleados, departamentos where departamentos.codigo = empleados.departamento;
#2.11
Select e.nombre, e.apellidos, d.nombre, d.presupuesto from empleados as e, departamentos as d where e.DEPARTAMENTO = d.CODIGO;
#2.12
select e.nombre, e.apellidos from empleados as e join departamentos as d where e.DEPARTAMENTO=d.CODIGO and d.PRESUPUESTO>60000;
#2.13
select * from departamentos where presupuesto > (select avg(presupuesto) from departamentos);
#2.14
select departamentos.NOMBRE from departamentos, empleados where codigo=departamento and 2<(select count(*)from empleados where departamentos.CODIGO=DEPARTAMENTO)group by nombre;
#2.15
Insert into departamentos values (11, 'Calidad', 40000);
Insert into empleados values ('89267109', 'Esther', 'Vázquez', 11);
#2.16
select codigo, nombre, presupuesto*0.9 as recorte_presupuesto from departamentos;
#2.17
update empleados set departamento = 14 where departamento = 77;
#2.18
delete from empleados where departamento = 14;
#2.19
delete from empleados where departamento in (select codigo from departamentos where presupuesto >60000);
#2.20
truncate empleados;