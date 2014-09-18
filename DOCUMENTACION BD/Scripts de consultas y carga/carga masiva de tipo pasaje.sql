LOAD DATA LOCAL INFILE 'C:/Users/Ing. Alan/Desktop/IFAproject/Catalogos con datos/tipo_pasaje_catalogo.csv'
INTO TABLE tipo_pasaje_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTipoPasaje,TIPO_PASAJE);