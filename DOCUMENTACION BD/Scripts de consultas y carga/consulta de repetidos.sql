select COUNT(localidades.id) AS total,localidades.id AS idLocalidadRepetida, paises.nombre as paises, paises.x ,paises.y ,
regiones.nombre as estados, regiones.x, regiones.y,
localidades.nombre as ciudades, localidades.x,localidades.y
from paises, regiones, localidades
where localidades.id_region=regiones.id
and regiones.id_pais=paises.id
and  localidades.id_idioma=7
and regiones.id_idioma=7
and paises.id_idioma=7
GROUP BY id_region, localidades.id_pais, localidades.id_idioma, localidades.nombre HAVING total > 1;