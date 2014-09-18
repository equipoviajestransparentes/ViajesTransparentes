SET @row=0;
select (@row:=@row+1) as id ,paises.nombre as paises, paises.x ,paises.y ,
regiones.nombre as estados, regiones.x, regiones.y,
localidades.nombre as ciudades, localidades.x,localidades.y
from paises, regiones, localidades
where localidades.id_region=regiones.id
and regiones.id_pais=paises.id
and  localidades.id_idioma=7
and regiones.id_idioma=7
and paises.id_idioma=7;