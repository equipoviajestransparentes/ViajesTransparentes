--
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/Ing. Alan/Desktop/IFAproject/Catalogos con datos/tema_de_viaje_catalogo.csv'
INTO TABLE tema_de_viaje_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTema_de_viaje,TEMA);