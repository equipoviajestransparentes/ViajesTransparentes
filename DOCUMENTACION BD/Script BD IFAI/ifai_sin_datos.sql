-- Creator:       MySQL Workbench 6.1.7/ExportSQLite plugin 2009.12.02
-- Author:        ALAN7
-- Caption:       New Model
-- Project:       Name of the project
-- Changed:       2014-09-13 01:46
-- Created:       2014-09-09 09:58
PRAGMA foreign_keys = OFF;

-- Schema: ifai
BEGIN;
CREATE TABLE "localidades_catalogo"(
  "idLocalidades" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora de la localidad
  "PAIS" VARCHAR(150) NOT NULL,-- Campo que indica el nombre del pais
  "LATITUD_PAIS" VARCHAR(15) NOT NULL,-- Campo que indica la coordenada latitud del pais
  "LONGITUD_PAIS" VARCHAR(15) NOT NULL,-- Campo que indica la coordenada longitud del pais
  "ESTADO" VARCHAR(150) NOT NULL,-- Campo que indica el nombre del estado
  "LATITUD_ESTADO" VARCHAR(15) NOT NULL,-- Campo que indica la coordenada latitud del estado
  "LONGITUD_ESTADO" VARCHAR(15) NOT NULL,-- Campo que indica la coordenada longitud del estado
  "CIUDAD" VARCHAR(150) NOT NULL,-- Campo que indica el nombre de la ciudad
  "LATITUD_CIUDAD" VARCHAR(15) NOT NULL,-- Campo que indica la coordenada latitud de la ciudad
  "LONGITUD_CIUDAD" VARCHAR(15) NOT NULL-- Campo que indica la coordenada longitud de la ciudad
);
CREATE TABLE "tipo_viaje_catalogo"(
  "idTipoViaje" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave indetificadora del catalogo de tipo de viaje
  "TIPO_VIAJE" VARCHAR(20) NOT NULL-- Campo que describe el tipo de viaje
);
CREATE TABLE "moneda_catalogo"(
  "idMoneda" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del catalogo de monedas
  "MONEDA" VARCHAR(10) NOT NULL-- Campo que indica la descripcion de la moneda
);
CREATE TABLE "tema_de_viaje_catalogo"(
  "idTema_de_viaje" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del catalogo de temas de viaje
  "TEMA" VARCHAR(100) NOT NULL-- Campo que describe el tema del viaje
);
CREATE TABLE "tipo_comision_catalogo"(
  "idTipo_comision" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del tipo de comision
  "TIPO_COM" VARCHAR(50) NOT NULL-- Campo que indica el tipo de comision asignada
);
CREATE TABLE "tipo_pasaje_catalogo"(
  "idTipoPasaje" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del catalogo de tipo de pasajes
  "TIPO_PASAJE" VARCHAR(20) NOT NULL-- Campo que describe el tipo de pasaje
);
CREATE TABLE "mecanismo_origen_catalogo"(
  "idMec_origen" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del catalogo de mecanismos de origen
  "MEC_ORIGEN" VARCHAR(50) NOT NULL-- Campo que indica el mecanismo de origen, se genera por una invitación externa o por requerimiento de una Unidades Responsable dentro de la institución.
);
CREATE TABLE "representacion_catalogo"(
  "idRepresentacion" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del tipo de representacion
  "TIPO_REP" VARCHAR(20) NOT NULL-- Campo que indica el tipo de representacion en función del puesto del funcionario público que viaja
);
CREATE TABLE "comision"(
  "idComision" INTEGER PRIMARY KEY NOT NULL,-- Llave identificadora de las comisiones
  "idMec_origen" INTEGER NOT NULL,-- Llave foranea que referencia al catalogo de mecanismos de originacion
  "idTipo_comision" INTEGER NOT NULL,-- Llave foranea que referencia al catalogo del tipo de comision asignada
  "idRepresentacion" INTEGER NOT NULL,-- Llave foranea que referencia al catalogo de tipos de representacion
  "FECHAINICIO_COM" DATETIME NOT NULL,-- Campo que indica la fecha inicio de la comision
  "FECHAFIN_COM" DATETIME NOT NULL,-- Campo que indica la fecha fin de la comision
  "INST_GENERA" VARCHAR(100) NOT NULL,-- Campo que indica la Institución que invita, o en su defecto Unidad Responsable que genera la comisión para el servidor público
  "UR" VARCHAR(50) NOT NULL,-- Campo que indica la unidad responsable en la que se genera la nota de viaje, el oficio relacionado a la comisión a la que se envía al funcionario público, u otra información específica sobre motivo del viaje y resultados
  "CONSECUTIVO" INTEGER NOT NULL,-- Campo que indica el número de identificación único asignado por las áreas de control del IFAI para identificar la comisión
  "ACUERDO" VARCHAR(45) NOT NULL,-- Campo que indica el número de acuerdo o documento oficial mediante el cual se autoriza la comisión del servidor público
  "OFICIO" VARCHAR(45) NOT NULL,-- Campo que indica el número de oficio a través del cuál se comisiona al servidor público
  "MOTIVO" VARCHAR(200) NOT NULL,-- Campo que indica el motivo por el cual el funcionario público fue enviado a la comisión en cuestión
  "COMPROBADO_TOTAL" DECIMAL,-- Campo que indica el monto comprobado total de la comision asignada al servidor publico
  "SIN_COMPROBAR_TOTAL" DECIMAL,-- Campo que indica el monto sin comprobado total de la comision asignada al servidor publico
  "VIATICO_DEVUELTO_TOTAL" DECIMAL,-- Campo que indica el monto de viaticos total devuelto por el servidor publico
  "ESTATUS_COMISION" CHAR NOT NULL DEFAULT 'F',-- Campo que indica el estatus de la comision, este puede estar con valor de 'F' cuando la comision no ah sido reportada o confirmada aun por el servidor publico con los gastos derivados de la comision a la que asistio, una vez que esta comision es reportada adquiere el valor de 'T'
  CONSTRAINT "fk_comision_mecanismo_origen_catalogo1"
    FOREIGN KEY("idMec_origen")
    REFERENCES "mecanismo_origen_catalogo"("idMec_origen"),
  CONSTRAINT "fk_comision_representacion_catalogo1"
    FOREIGN KEY("idRepresentacion")
    REFERENCES "representacion_catalogo"("idRepresentacion"),
  CONSTRAINT "fk_comision_tipo_comision_catalogo1"
    FOREIGN KEY("idTipo_comision")
    REFERENCES "tipo_comision_catalogo"("idTipo_comision")
);
CREATE INDEX "comision.fk_comision_mecanismo_origen_catalogo1_idx" ON "comision"("idMec_origen");
CREATE INDEX "comision.fk_comision_representacion_catalogo1_idx" ON "comision"("idRepresentacion");
CREATE INDEX "comision.fk_comision_tipo_comision_catalogo1_idx" ON "comision"("idTipo_comision");
CREATE TABLE "grupo_catalogo"(
  "idGrupo" INTEGER PRIMARY KEY NOT NULL,-- Llave identificador del grupo
  "GRUPO" VARCHAR(20) NOT NULL-- Descripcion del grupo
);
CREATE TABLE "cargo_catalogo"(
  "idCargo" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificador del cargo
  "CARGO" VARCHAR(30),-- Descripcion del cargo
  "idGrupo" INTEGER NOT NULL,-- Llave foranea que referencia al id del Grupo al que pertenece el cargo
  CONSTRAINT "fk_puesto_catalogo_grupo_catalogo1"
    FOREIGN KEY("idGrupo")
    REFERENCES "grupo_catalogo"("idGrupo")
);
CREATE INDEX "cargo_catalogo.fk_puesto_catalogo_grupo_catalogo1_idx" ON "cargo_catalogo"("idGrupo");
CREATE TABLE "detalleViaje"(
  "idDetalleViaje" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del deltalle del viaje
  "EVENTO" VARCHAR(100),-- Campo que describe  el evento o actividad a la que asiste el funcionario en su comisión
  "URL_EVENTO" VARCHAR(150),-- Campo que indica la liga de internet relacionada con el evento al cual el funcionario asiste como objeto de la comisión, pudiendo ser un micrositio, programa, convocatoria, etc.
  "FECHAINICIO_PART" DATETIME,-- Campo que indica la Fecha en la que inicia la participación del funcionario en la comisión
  "FECHAFIN_PART" DATETIME,-- Campo que indica la Fecha en la que finaliza la participación del funcionario en la comisión
  "ANTECEDENTE" VARCHAR(200),-- Campo que describe los antecedentes relacionados con la comisión a la que fue enviado el funcionario y del evento al que asistió
  "ACTIVIDAD" VARCHAR(500),-- Campo que indica una breve descripción de las actividades realizadas por el funcionario en la comisión, contemplando el programa y su agenda de trabajo.
  "CONTRIBUCION_IFAI" VARCHAR(200),-- Campo que indica una breve descripción de las contribuciones que la comisión y la participación del funcionario generan para el IFAI
  "URL_COMUNICADO" VARCHAR(50),-- Campo que indica la URL que vincula a una nota, blog o comunicado oficial ya sea generada por la institución convocante o por el IFAI para reportar los resultados de la actividad realizada durante la comisión
  "CUBRE_PASAJE" VARCHAR(45),-- Campo que indica la institución que cubre el costo del viaje, puede ser el IFAI o la institución que invita al funcionario público
  "idTipo_pasaje" INTEGER NOT NULL,-- Llave foranea que referencia al catalogo del tipo de pasaje
  "INST_HOSPEDAJE" VARCHAR(50),-- Campo que indica la institución que cubre el costo del hospedaje, puede ser el IFAI o la institución que invita al funcionario público
  "HOTEL" VARCHAR(30),-- Campo que describe el nombre del hotel o recinto en donde se hospeda el funcionario durante su comisión
  "FECHAINICIO_HOTEL" DATETIME,-- Campo que indica la Fecha en la que el funcionario se registra en el hotel descrito en el campo anterior
  "FECHAFIN_HOTEL" DATETIME,-- Campo que indica la Fecha en la que el funcionario registra su salida del hotel descrito previamente
  "idTema_viaje" INTEGER NOT NULL,-- Llave foranea que referencia al catalogo de temas de viaje
  "LATITUD_ORIGEN" VARCHAR(50),-- Campo que describe la coordenada de latitud del origen del viaje
  "LONGITUD_ORIGEN" VARCHAR(50),-- Campo que describe la coordenada de longitud del origen del viaje
  "LATITUD_DESTINO" VARCHAR(50),-- Campo que describe la coordenada de latitud del destino del viaje
  "LONGITUD_DESTINO" VARCHAR(50),-- Campo que describe la coordenada de longitud del destino del viaje
  CONSTRAINT "fk_viajes_tipo_pasaje"
    FOREIGN KEY("idTipo_pasaje")
    REFERENCES "tipo_pasaje_catalogo"("idTipoPasaje"),
  CONSTRAINT "fk_detalleViaje_tema_de_viaje_catalogo1"
    FOREIGN KEY("idTema_viaje")
    REFERENCES "tema_de_viaje_catalogo"("idTema_de_viaje")
);
CREATE INDEX "detalleViaje.fk_viajes_tipo_pasaje_idx" ON "detalleViaje"("idTipo_pasaje");
CREATE INDEX "detalleViaje.fk_detalleViaje_tema_de_viaje_catalogo1_idx" ON "detalleViaje"("idTema_viaje");
CREATE TABLE "vuelos"(
  "idVuelos" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del vuelo
  "idViaje" INTEGER NOT NULL,-- Llave foranea que referencia al id del viaje al que pertenecen el o los vuelos
  "VUELO_ORIGEN" VARCHAR(15) NOT NULL,-- Campo que indica el Número de vuelo. De acuerdo con la asignación dada por la aerolínea en cuestión
  "VUELO_DESTINO" VARCHAR(15) NOT NULL,-- Campo que indica el Número de vuelo. De acuerdo con la asignación dada por la aerolínea en cuestión
  "LINEA_ORIGEN" VARCHAR(20) NOT NULL,-- Campo que indica el nombre de la aerolinea
  "LINEA_DESTINO" VARCHAR(20) NOT NULL,-- Campo que indica el nombre de la aerolinea
  CONSTRAINT "fk_vuelos_detalleViaje1"
    FOREIGN KEY("idViaje")
    REFERENCES "detalleViaje"("idDetalleViaje")
);
CREATE INDEX "vuelos.fk_vuelos_detalleViaje1_idx" ON "vuelos"("idViaje");
CREATE TABLE "servidores_publicos"(
  "idServidor" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del Servidor Publico
  "NOMBRE" VARCHAR(30) NOT NULL,-- Nombre del servidor publico
  "AP_PATERNO" VARCHAR(15) NOT NULL,-- Apellido paterno del servidor publico
  "AP_MATERNO" VARCHAR(15) NOT NULL,-- Apellido materno del servidor publico
  "idCargo" INTEGER NOT NULL,-- Llave foranea que referencia al cargo del servidor publico
  "GASTOS_COMPROBADOS_TOTAL" DECIMAL,-- Campo que contiene el total o acumulado de los gastos comprobados por el servidor publico en todas las comisiones a las que ah asistido
  "GASTOS_SIN_COMPROBAR_TOTAL" DECIMAL,-- Campo que contiene el total o acumulado de los gastos sin comprobar por el servidor publico en todas las comisiones a las que ah asistido
  "COSTO_TOTAL" DECIMAL,-- Campo que contiene el costo total o acumulado, invertido en el servidor publico durante todas sus comisiones
  "VIATICOS_DEVUELTOS_TOTAL" DECIMAL,-- Campo que contiene el total o acumulador de los viaticos devueltos por el servidor publico a lo largo de todas sus comisiones.
  CONSTRAINT "fk_servidores_publicos_cargos"
    FOREIGN KEY("idCargo")
    REFERENCES "cargo_catalogo"("idCargo")
);
CREATE INDEX "servidores_publicos.fk_servidores_publicos_puesto_idx" ON "servidores_publicos"("idCargo");
CREATE TABLE "servidor_comision"(
  "idServidor" INTEGER NOT NULL,-- Llave foranea que referencia al identificador del servidor publico
  "idComision" INTEGER NOT NULL,-- Llave foranea que referencia al identificador de la comision asignada al servidor publico
  "RESULTADO" VARCHAR(200),-- Campo que contiene los resultados obtenidos durante la comision
  "OBSERVACIONES" VARCHAR(100),-- Campo que contiene las observaciones realizadas durante la comision
  PRIMARY KEY("idServidor","idComision"),
  CONSTRAINT "fk_servidor_comision_servidores_publicos"
    FOREIGN KEY("idServidor")
    REFERENCES "servidores_publicos"("idServidor"),
  CONSTRAINT "fk_servidor_comision_comision"
    FOREIGN KEY("idComision")
    REFERENCES "comision"("idComision")
);
CREATE INDEX "servidor_comision.fk_servidor_comision_comision1_idx" ON "servidor_comision"("idComision");
CREATE TABLE "viaje"(
  "idViaje" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,-- Llave identificadora del viaje que realizo el servidor publico
  "idDetalleViaje" INTEGER NOT NULL,-- Llave foranea que referencia al detalle del viaje reallizado por el servidor publico
  "LOCALIDAD_ORIGEN" INTEGER NOT NULL,-- Llave foranea que referencia a la localidad origen desde donde viajo el servidor publico
  "LOCALIDAD_DESTINO" INTEGER NOT NULL,-- Llave foranea que referencia a la localidad destino hasta donde viajo el servidor publico
  "TIPO_VIAJE" INTEGER NOT NULL,-- Llave foranea que referencia al catalogo con el tipo de viaje que realizo el servidor publico
  "idServidor" INTEGER NOT NULL,-- Llave foranea que referencia al identificador del servidor publico
  "idComision" INTEGER NOT NULL,-- Llave foranea que referencia al identificador de la comision a la que asisitio el servidor publico
  CONSTRAINT "fk_viaje_detalleviaje"
    FOREIGN KEY("idDetalleViaje")
    REFERENCES "detalleViaje"("idDetalleViaje"),
  CONSTRAINT "fk_viaje_localidades1"
    FOREIGN KEY("LOCALIDAD_ORIGEN")
    REFERENCES "localidades_catalogo"("idLocalidades"),
  CONSTRAINT "fk_viaje_localidades2"
    FOREIGN KEY("LOCALIDAD_DESTINO")
    REFERENCES "localidades_catalogo"("idLocalidades"),
  CONSTRAINT "fk_viaje_tipo_viaje1"
    FOREIGN KEY("TIPO_VIAJE")
    REFERENCES "tipo_viaje_catalogo"("idTipoViaje"),
  CONSTRAINT "fk_viaje_servidor_comision"
    FOREIGN KEY("idServidor","idComision")
    REFERENCES "servidor_comision"("idServidor","idComision")
);
CREATE INDEX "viaje.fk_viaje_localidades1_idx" ON "viaje"("LOCALIDAD_ORIGEN");
CREATE INDEX "viaje.fk_viaje_localidades2_idx" ON "viaje"("LOCALIDAD_DESTINO");
CREATE INDEX "viaje.fk_viaje_tipo_viaje1_idx" ON "viaje"("TIPO_VIAJE");
CREATE INDEX "viaje.fk_viaje_servidor_comision_idx" ON "viaje"("idServidor","idComision");
CREATE INDEX "viaje.fk_detalleViaje_viaje_idx" ON "viaje"("idDetalleViaje");
CREATE TABLE "costo"(
  "idCosto" INTEGER NOT NULL,-- Llave identificadora del costo
  "idViaje" INTEGER NOT NULL,-- Llave foranea que referencia al identificador del viaje al que pertenece el costo
  "idMoneda" INTEGER NOT NULL,-- Llave foranea que referencia al catalogo de monedas en que esta representado el costo
  "GASTO_PASAJE" DECIMAL,-- Campo que describe el Monto del gasto generado por viáticos, relacionado específicamente con el transporte del funcionario.
  "GASTO_VIATICO" DECIMAL,-- Campo que describe el Monto del gasto generado por viáticos, relacionado rubros diferentes al transporte del funcionario (hospedaje y alimentación principalmente)
  "COSTO_HOTEL" DECIMAL,-- Campo que describe el Costo total del hospedaje reportado en el oficio correspondiente
  "COMPROBADO" DECIMAL,-- Campo que indica el Costo total generado durante el viaje del que se cuenta con comprobantes oficialmente aceptados por el IFAI, según lo reportado por el funcionario en el oficio correspondiente
  "SIN_COMPROBAR" DECIMAL,-- Campo que indica el Costo total generado durante el viaje del que no se cuenta con comprobantes oficialmente aceptados por el IFAI, según lo reportado por el funcionario en el oficio correspondiente
  "VIATICO_DEVUELTO" DECIMAL,-- Campo que describe el Monto devuelto por el funcionario a la cuenta del IFAI correspondiente, según lineamientos internos, reportado en el oficio correspondiente
  "TARIFA_DIARIA" DECIMAL,-- Campo que indica la Tarifa de viáticos diaria asignada al funcionario de acuerdo con su perfil y el lugar a donde viaja.
  PRIMARY KEY("idCosto","idViaje"),
  CONSTRAINT "fk_costo_viajes"
    FOREIGN KEY("idViaje")
    REFERENCES "viaje"("idDetalleViaje"),
  CONSTRAINT "fk_moneda_costo"
    FOREIGN KEY("idMoneda")
    REFERENCES "moneda_catalogo"("idMoneda")
);
CREATE INDEX "costo.fk_moneda_gastos_idx" ON "costo"("idMoneda");
CREATE INDEX "costo.fk_costo_viaje_idx" ON "costo"("idViaje");
COMMIT;

-- Schema: paises
ATTACH "paises.sdb" AS "paises";
BEGIN;
CREATE TABLE "paises"."idiomas"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL CHECK("id">=0),
  "codigo" VARCHAR(10) NOT NULL DEFAULT '',
  "estado" INTEGER NOT NULL CHECK("estado">=0) DEFAULT '1'
);
CREATE TABLE "paises"."localidades"(
  "id" INTEGER NOT NULL CHECK("id">=0),
  "id_region" INTEGER NOT NULL CHECK("id_region">=0) DEFAULT '0',
  "id_pais" INTEGER NOT NULL CHECK("id_pais">=0) DEFAULT '0',
  "id_idioma" INTEGER NOT NULL CHECK("id_idioma">=0) DEFAULT '0',
  "nombre" VARCHAR(150) NOT NULL DEFAULT '',
  "x" FLOAT NOT NULL DEFAULT '0.0000000000',
  "y" FLOAT NOT NULL DEFAULT '0.0000000000',
  "exacto" INTEGER NOT NULL DEFAULT '0',
  PRIMARY KEY("id","id_region","id_pais","id_idioma")
);
CREATE TABLE "paises"."paises"(
  "id" INTEGER NOT NULL CHECK("id">=0),
  "id_idioma" INTEGER NOT NULL CHECK("id_idioma">=0) DEFAULT '0',
  "nombre" VARCHAR(150) NOT NULL DEFAULT '',
  "x" FLOAT NOT NULL DEFAULT '0.0000000000',
  "y" FLOAT NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY("id","id_idioma")
);
CREATE TABLE "paises"."regiones"(
  "id" INTEGER NOT NULL CHECK("id">=0),
  "id_pais" INTEGER NOT NULL CHECK("id_pais">=0) DEFAULT '0',
  "id_idioma" INTEGER NOT NULL CHECK("id_idioma">=0) DEFAULT '0',
  "nombre" VARCHAR(150) NOT NULL DEFAULT '',
  "x" FLOAT NOT NULL DEFAULT '0.0000000000',
  "y" FLOAT NOT NULL DEFAULT '0.0000000000',
  "exacto" INTEGER NOT NULL DEFAULT '0',
  PRIMARY KEY("id","id_pais","id_idioma")
);
COMMIT;
