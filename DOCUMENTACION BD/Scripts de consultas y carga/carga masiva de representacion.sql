--
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/representacion_catalogo.csv'
INTO TABLE representacion_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idRepresentacion,TIPO_REP);