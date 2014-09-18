--
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/Ing. Alan/Desktop/IFAproject/Catalogos con datos/moneda_catalogo.csv'
INTO TABLE moneda_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(idMoneda,MONEDA);