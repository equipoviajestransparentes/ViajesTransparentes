--
-- Carga masiva de justificacion_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/Ing. Alan/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/justificacion_catalogo.csv'
INTO TABLE justificacion_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(JUSTIFICACION);