--
-- Carga masiva de cargo_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/cargos_catalogo.csv'
INTO TABLE cargo_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idCargo,CARGO);

--
-- Carga masiva de institucion_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/institucion_catalogo.csv'
INTO TABLE institucion_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idInstitucion,INSTITUCION);

--
-- Carga masiva de tipo_personal_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/tipo_personal_catalogo.csv'
INTO TABLE tipo_personal_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTipoPersonal,TIPO_PERSONAL);

--
-- Carga masiva unidad_administrativa_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/unidad_administrativa_catalogo.csv'
INTO TABLE unidad_administrativa_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idUnidadAdm,UNIDAD_ADM);

--
-- Carga masiva de mecanismo_origen_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/mecanismo_origen_catalogo.csv'
INTO TABLE mecanismo_origen_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idMec_origen,MEC_ORIGEN);

--
-- Carga masiva de moneda_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/moneda_catalogo.csv'
INTO TABLE moneda_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(idMoneda,MONEDA);

--
-- Carga masiva de puesto_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/puestos_catalogo.csv'
INTO TABLE puesto_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idPuesto,PUESTO);
--
-- Carga masiva de representacion_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/representacion_catalogo.csv'
INTO TABLE representacion_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idRepresentacion,TIPO_REP);
--
-- Carga masiva de tema_de_viaje_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/tema_de_viaje_catalogo.csv'
INTO TABLE tema_de_viaje_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTema_de_viaje,TEMA);

--
-- Carga masiva de tipo_comision_catalogo
-- Reemplazar por la ruta correcta del archivo
--

LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/tipo_comision_catalogo.csv'
INTO TABLE tipo_comision_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTipo_comision,TIPO_COM);

--
-- Carga masiva de tipo_pasaje_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/tipo_pasaje_catalogo.csv'
INTO TABLE tipo_pasaje_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTipoPasaje,TIPO_PASAJE);

--
-- Carga masiva de tipo_viaje_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/tipo_viaje_catalogo.csv'
INTO TABLE tipo_viaje_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idTipoViaje,TIPO_VIAJE);

--
-- Carga masiva de servidor_publico
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/ifai_catalogo.csv'
INTO TABLE servidor_publico
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(idServidor,idCargo,idCargoSuperior,idPuesto,idUnidadAdm,idInstitucion,idTipoPersonal,NOMBRE,AP_PATERNO,AP_MATERNO,CORREO_ELECTRONICO,GASTOS_COMPROBADOS_TOTAL,GASTOS_SIN_COMPROBAR_TOTAL,COSTO_TOTAL,VIATICOS_DEVUELTOS_TOTAL);

--
-- Carga masiva de localidades_catalogo
-- Reemplazar por la ruta correcta del archivo
--
LOAD DATA LOCAL INFILE 'C:/Users/ALAN7/Documents/GitHub/ViajesTransparentes/DOCUMENTACION BD/Catalogos con datos/paises estados y ciudades_catalogo.csv'
INTO TABLE localidades_catalogo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(PAIS, LATITUD_PAIS, LONGITUD_PAIS,ESTADO,LATITUD_ESTADO,LONGITUD_ESTADO,CIUDAD,LATITUD_CIUDAD,LONGITUD_CIUDAD);