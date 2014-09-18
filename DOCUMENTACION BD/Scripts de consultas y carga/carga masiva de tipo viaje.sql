LOAD DATA LOCAL INFILE 'C:/Users/Ing. Alan/Desktop/IFAproject/Catalogos con datos/tipo_viaje_catalogo.csv'
INTO TABLE tipo_viaje_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTipoViaje,TIPO_VIAJE);