--
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/paises estados y ciudades_catalogo.csv'
INTO TABLE localidades_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(PAIS, LATITUD_PAIS, LONGITUD_PAIS,ESTADO,LATITUD_ESTADO,LONGITUD_ESTADO,CIUDAD,LATITUD_CIUDAD,LONGITUD_CIUDAD);