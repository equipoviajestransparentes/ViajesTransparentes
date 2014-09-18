--
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/Ing. Alan/Desktop/IFAproject/Catalogos con datos/mecanismo_origen_catalogo.csv'
INTO TABLE mecanismo_origen_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idMec_origen,MEC_ORIGEN);