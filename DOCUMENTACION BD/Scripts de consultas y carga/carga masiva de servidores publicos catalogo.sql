--
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/ifai_catalogo.csv'
INTO TABLE servidor_publico
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idServidor,idCargo,idCargoSuperior,idPuesto,idUnidadAdm,idInstitucion,idTipoPersonal,NOMBRE,AP_PATERNO,AP_MATERNO,CORREO_ELECTRONICO,GASTOS_COMPROBADOS_TOTAL,GASTOS_SIN_COMPROBAR_TOTAL,COSTO_TOTAL,VIATICOS_DEVUELTOS_TOTAL);