SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `ifai` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ifai` ;

-- -----------------------------------------------------
-- Table `ifai`.`cargo_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`cargo_catalogo` (
  `idCargo` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificador del cargo',
  `CARGO` VARCHAR(200) NULL COMMENT 'Campo que describe el nombre del cargo',
  PRIMARY KEY (`idCargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`tipo_personal_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`tipo_personal_catalogo` (
  `idTipoPersonal` INT NOT NULL COMMENT 'Llave identificador del tipo de personal',
  `TIPO_PERSONAL` VARCHAR(30) NOT NULL COMMENT 'Campo que describe el tipo de personal al que se refiere el servidor publico',
  PRIMARY KEY (`idTipoPersonal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`institucion_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`institucion_catalogo` (
  `idInstitucion` INT NOT NULL COMMENT 'Llave identificadora de las instituciones',
  `INSTITUCION` VARCHAR(200) NULL COMMENT 'Campo que describe el nombre de la insititucion',
  PRIMARY KEY (`idInstitucion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`puesto_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`puesto_catalogo` (
  `idPuesto` VARCHAR(10) NOT NULL COMMENT 'Llave identificadora de los puestos',
  `PUESTO` VARCHAR(200) NOT NULL COMMENT 'Campo que describe el nombre del puesto',
  PRIMARY KEY (`idPuesto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`unidad_administrativa_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`unidad_administrativa_catalogo` (
  `idUnidadAdm` INT NOT NULL COMMENT 'Llave identificadora de la unidad administradora',
  `UNIDAD_ADM` VARCHAR(200) NOT NULL COMMENT 'Campo que describe el nombre de la unidad administradora',
  PRIMARY KEY (`idUnidadAdm`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`servidor_publico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`servidor_publico` (
  `idServidor` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del Servidor Publico',
  `idCargo` INT NOT NULL COMMENT 'Llave foranea que referencia al cargo del servidor publico',
  `idCargoSuperior` INT NOT NULL COMMENT 'Llave foranea que referencia al cargo superior del servidor publico',
  `idPuesto` VARCHAR(10) NOT NULL COMMENT 'Llave foranea que referencia al puesto del servidor publico',
  `idUnidadAdm` INT NOT NULL COMMENT 'Llave foranea que referencia a la unidad administrativa del servidor publico',
  `idInstitucion` INT NOT NULL COMMENT 'Llave foranea que referencia a la institucion del servidor publico',
  `idTipoPersonal` INT NOT NULL COMMENT 'Llave foranea que referencia al tipo de persona del servidor publico',
  `NOMBRE` VARCHAR(30) NOT NULL COMMENT 'Nombre del servidor publico',
  `AP_PATERNO` VARCHAR(15) NOT NULL COMMENT 'Apellido paterno del servidor publico',
  `AP_MATERNO` VARCHAR(15) NOT NULL COMMENT 'Apellido materno del servidor publico',
  `CORREO_ELECTRONICO` VARCHAR(50) NULL COMMENT 'Campo que contiene el correo electronico del servidor publico',
  `GASTOS_COMPROBADOS_TOTAL` DECIMAL(2) NULL DEFAULT 0.0 COMMENT 'Campo que contiene el total o acumulado de los gastos comprobados por el servidor publico en todas las comisiones a las que ah asistido',
  `GASTOS_SIN_COMPROBAR_TOTAL` DECIMAL(2) NULL DEFAULT 0.0 COMMENT 'Campo que contiene el total o acumulado de los gastos sin comprobar por el servidor publico en todas las comisiones a las que ah asistido',
  `COSTO_TOTAL` DECIMAL(2) NULL DEFAULT 0.0 COMMENT 'Campo que contiene el costo total o acumulado, invertido en el servidor publico durante todas sus comisiones',
  `VIATICOS_DEVUELTOS_TOTAL` DECIMAL(2) NULL DEFAULT 0.0 COMMENT 'Campo que contiene el total o acumulador de los viaticos devueltos por el servidor publico a lo largo de todas sus comisiones.',
  `DATE_CREATED` DATETIME NULL COMMENT 'Campo que establece la fecha de creacion del registros',
  `DATE_UPDATED` DATETIME NULL,
  PRIMARY KEY (`idServidor`),
  INDEX `fk_servidores_publicos_puesto_idx` (`idCargo` ASC),
  INDEX `fk_servidores_publicos_tipo_personal1_idx` (`idTipoPersonal` ASC),
  INDEX `fk_servidores_publicos_institucion_catalogo1_idx` (`idInstitucion` ASC),
  INDEX `fk_servidores_publicos_puesto_catalogo1_idx` (`idPuesto` ASC),
  INDEX `fk_servidores_publicos_unidad_administrativa_catalogo1_idx` (`idUnidadAdm` ASC),
  INDEX `fk_servidores_publicos_cargo_catalogo1_idx` (`idCargoSuperior` ASC),
  CONSTRAINT `fk_servidores_publicos_cargos`
    FOREIGN KEY (`idCargo`)
    REFERENCES `ifai`.`cargo_catalogo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servidores_publicos_tipo_personal`
    FOREIGN KEY (`idTipoPersonal`)
    REFERENCES `ifai`.`tipo_personal_catalogo` (`idTipoPersonal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servidores_publicos_institucion_catalogo`
    FOREIGN KEY (`idInstitucion`)
    REFERENCES `ifai`.`institucion_catalogo` (`idInstitucion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servidores_publicos_puesto_catalogo`
    FOREIGN KEY (`idPuesto`)
    REFERENCES `ifai`.`puesto_catalogo` (`idPuesto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servidores_publicos_unidad_administrativa_catalogo`
    FOREIGN KEY (`idUnidadAdm`)
    REFERENCES `ifai`.`unidad_administrativa_catalogo` (`idUnidadAdm`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servidores_publicos_cargo_catalogo`
    FOREIGN KEY (`idCargoSuperior`)
    REFERENCES `ifai`.`cargo_catalogo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`localidades_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`localidades_catalogo` (
  `idLocalidades` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora de la localidad',
  `PAIS` VARCHAR(150) NOT NULL COMMENT 'Campo que indica el nombre del pais',
  `LATITUD_PAIS` VARCHAR(20) NOT NULL COMMENT 'Campo que indica la coordenada latitud del pais',
  `LONGITUD_PAIS` VARCHAR(20) NOT NULL COMMENT 'Campo que indica la coordenada longitud del pais',
  `ESTADO` VARCHAR(150) NOT NULL COMMENT 'Campo que indica el nombre del estado',
  `LATITUD_ESTADO` VARCHAR(20) NOT NULL COMMENT 'Campo que indica la coordenada latitud del estado',
  `LONGITUD_ESTADO` VARCHAR(20) NOT NULL COMMENT 'Campo que indica la coordenada longitud del estado',
  `CIUDAD` VARCHAR(150) NOT NULL COMMENT 'Campo que indica el nombre de la ciudad',
  `LATITUD_CIUDAD` VARCHAR(20) NOT NULL COMMENT 'Campo que indica la coordenada latitud de la ciudad',
  `LONGITUD_CIUDAD` VARCHAR(20) NOT NULL COMMENT 'Campo que indica la coordenada longitud de la ciudad',
  PRIMARY KEY (`idLocalidades`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`tipo_pasaje_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`tipo_pasaje_catalogo` (
  `idTipoPasaje` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del catalogo de tipo de pasajes',
  `TIPO_PASAJE` VARCHAR(20) NOT NULL COMMENT 'Campo que describe el tipo de pasaje',
  PRIMARY KEY (`idTipoPasaje`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`tema_de_viaje_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`tema_de_viaje_catalogo` (
  `idTema_de_viaje` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del catalogo de temas de viaje',
  `TEMA` VARCHAR(100) NOT NULL COMMENT 'Campo que describe el tema del viaje',
  PRIMARY KEY (`idTema_de_viaje`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`detalleViaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`detalleViaje` (
  `idDetalleViaje` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del deltalle del viaje',
  `EVENTO` VARCHAR(100) NULL COMMENT 'Campo que describe  el evento o actividad a la que asiste el funcionario en su comisión',
  `URL_EVENTO` VARCHAR(150) NULL COMMENT 'Campo que indica la liga de internet relacionada con el evento al cual el funcionario asiste como objeto de la comisión, pudiendo ser un micrositio, programa, convocatoria, etc.',
  `FECHAINICIO_PART` DATETIME NULL COMMENT 'Campo que indica la Fecha en la que inicia la participación del funcionario en la comisión',
  `FECHAFIN_PART` DATETIME NULL COMMENT 'Campo que indica la Fecha en la que finaliza la participación del funcionario en la comisión',
  `ANTECEDENTE` VARCHAR(200) NULL COMMENT 'Campo que describe los antecedentes relacionados con la comisión a la que fue enviado el funcionario y del evento al que asistió',
  `ACTIVIDAD` VARCHAR(500) NULL COMMENT 'Campo que indica una breve descripción de las actividades realizadas por el funcionario en la comisión, contemplando el programa y su agenda de trabajo.',
  `CONTRIBUCION_IFAI` VARCHAR(200) NULL COMMENT 'Campo que indica una breve descripción de las contribuciones que la comisión y la participación del funcionario generan para el IFAI',
  `URL_COMUNICADO` VARCHAR(50) NULL COMMENT 'Campo que indica la URL que vincula a una nota, blog o comunicado oficial ya sea generada por la institución convocante o por el IFAI para reportar los resultados de la actividad realizada durante la comisión',
  `CUBRE_PASAJE` VARCHAR(45) NULL COMMENT 'Campo que indica la institución que cubre el costo del viaje, puede ser el IFAI o la institución que invita al funcionario público',
  `idTipo_pasaje` INT NOT NULL COMMENT 'Llave foranea que referencia al catalogo del tipo de pasaje',
  `INST_HOSPEDAJE` VARCHAR(50) NULL COMMENT 'Campo que indica la institución que cubre el costo del hospedaje, puede ser el IFAI o la institución que invita al funcionario público',
  `HOTEL` VARCHAR(30) NULL COMMENT 'Campo que describe el nombre del hotel o recinto en donde se hospeda el funcionario durante su comisión',
  `FECHAINICIO_HOTEL` DATETIME NULL COMMENT 'Campo que indica la Fecha en la que el funcionario se registra en el hotel descrito en el campo anterior',
  `FECHAFIN_HOTEL` DATETIME NULL COMMENT 'Campo que indica la Fecha en la que el funcionario registra su salida del hotel descrito previamente',
  `idTema_viaje` INT NOT NULL COMMENT 'Llave foranea que referencia al catalogo de temas de viaje',
  `LATITUD_ORIGEN` VARCHAR(50) NULL COMMENT 'Campo que describe la coordenada de latitud del origen del viaje',
  `LONGITUD_ORIGEN` VARCHAR(50) NULL COMMENT 'Campo que describe la coordenada de longitud del origen del viaje',
  `LATITUD_DESTINO` VARCHAR(50) NULL COMMENT 'Campo que describe la coordenada de latitud del destino del viaje',
  `LONGITUD_DESTINO` VARCHAR(50) NULL COMMENT 'Campo que describe la coordenada de longitud del destino del viaje',
  PRIMARY KEY (`idDetalleViaje`),
  INDEX `fk_viajes_tipo_pasaje_idx` (`idTipo_pasaje` ASC),
  INDEX `fk_detalleViaje_tema_de_viaje_catalogo1_idx` (`idTema_viaje` ASC),
  CONSTRAINT `fk_viajes_tipo_pasaje`
    FOREIGN KEY (`idTipo_pasaje`)
    REFERENCES `ifai`.`tipo_pasaje_catalogo` (`idTipoPasaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleViaje_tema_de_viaje_catalogo1`
    FOREIGN KEY (`idTema_viaje`)
    REFERENCES `ifai`.`tema_de_viaje_catalogo` (`idTema_de_viaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`vuelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`vuelo` (
  `idVuelos` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del vuelo',
  `idViaje` INT NOT NULL COMMENT 'Llave foranea que referencia al id del viaje al que pertenecen el o los vuelos',
  `VUELO_ORIGEN` VARCHAR(15) NOT NULL COMMENT 'Campo que indica el Número de vuelo. De acuerdo con la asignación dada por la aerolínea en cuestión',
  `VUELO_DESTINO` VARCHAR(15) NOT NULL COMMENT 'Campo que indica el Número de vuelo. De acuerdo con la asignación dada por la aerolínea en cuestión',
  `LINEA_ORIGEN` VARCHAR(20) NOT NULL COMMENT 'Campo que indica el nombre de la aerolinea',
  `LINEA_DESTINO` VARCHAR(20) NOT NULL COMMENT 'Campo que indica el nombre de la aerolinea',
  PRIMARY KEY (`idVuelos`),
  INDEX `fk_vuelos_detalleViaje1_idx` (`idViaje` ASC),
  CONSTRAINT `fk_vuelos_detalleViaje1`
    FOREIGN KEY (`idViaje`)
    REFERENCES `ifai`.`detalleViaje` (`idDetalleViaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`tipo_viaje_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`tipo_viaje_catalogo` (
  `idTipoViaje` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave indetificadora del catalogo de tipo de viaje',
  `TIPO_VIAJE` VARCHAR(20) NOT NULL COMMENT 'Campo que describe el tipo de viaje',
  PRIMARY KEY (`idTipoViaje`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`moneda_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`moneda_catalogo` (
  `idMoneda` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del catalogo de monedas',
  `MONEDA` VARCHAR(10) NOT NULL COMMENT 'Campo que indica la descripcion de la moneda',
  PRIMARY KEY (`idMoneda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`tipo_comision_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`tipo_comision_catalogo` (
  `idTipo_comision` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del tipo de comision',
  `TIPO_COM` VARCHAR(50) NOT NULL COMMENT 'Campo que indica el tipo de comision asignada',
  PRIMARY KEY (`idTipo_comision`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`mecanismo_origen_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`mecanismo_origen_catalogo` (
  `idMec_origen` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del catalogo de mecanismos de origen',
  `MEC_ORIGEN` VARCHAR(50) NOT NULL COMMENT 'Campo que indica el mecanismo de origen, se genera por una invitación externa o por requerimiento de una Unidades Responsable dentro de la institución.',
  PRIMARY KEY (`idMec_origen`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`representacion_catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`representacion_catalogo` (
  `idRepresentacion` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del tipo de representacion',
  `TIPO_REP` VARCHAR(20) NOT NULL COMMENT 'Campo que indica el tipo de representacion en función del puesto del funcionario público que viaja',
  PRIMARY KEY (`idRepresentacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`comision`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`comision` (
  `idComision` INT NOT NULL COMMENT 'Llave identificadora de las comisiones',
  `idServidor` INT NOT NULL COMMENT 'Llave foranea que referencia al servidor publico al que le pertenece esta comision',
  `idMec_origen` INT NOT NULL COMMENT 'Llave foranea que referencia al catalogo de mecanismos de originacion',
  `idTipo_comision` INT NOT NULL COMMENT 'Llave foranea que referencia al catalogo del tipo de comision asignada',
  `idRepresentacion` INT NOT NULL COMMENT 'Llave foranea que referencia al catalogo de tipos de representacion',
  `FECHAINICIO_COM` DATETIME NOT NULL COMMENT 'Campo que indica la fecha inicio de la comision',
  `FECHAFIN_COM` DATETIME NOT NULL COMMENT 'Campo que indica la fecha fin de la comision',
  `INST_GENERA` VARCHAR(100) NOT NULL COMMENT 'Campo que indica la Institución que invita, o en su defecto Unidad Responsable que genera la comisión para el servidor público',
  `UR` VARCHAR(50) NOT NULL COMMENT 'Campo que indica la unidad responsable en la que se genera la nota de viaje, el oficio relacionado a la comisión a la que se envía al funcionario público, u otra información específica sobre motivo del viaje y resultados',
  `CONSECUTIVO` INT NOT NULL COMMENT 'Campo que indica el número de identificación único asignado por las áreas de control del IFAI para identificar la comisión',
  `ACUERDO` VARCHAR(45) NOT NULL COMMENT 'Campo que indica el número de acuerdo o documento oficial mediante el cual se autoriza la comisión del servidor público',
  `OFICIO` VARCHAR(45) NOT NULL COMMENT 'Campo que indica el número de oficio a través del cuál se comisiona al servidor público',
  `MOTIVO` VARCHAR(200) NOT NULL COMMENT 'Campo que indica el motivo por el cual el funcionario público fue enviado a la comisión en cuestión',
  `COMPROBADO_TOTAL` DECIMAL(2) NULL COMMENT 'Campo que indica el monto comprobado total de la comision asignada al servidor publico',
  `SIN_COMPROBAR_TOTAL` DECIMAL(2) NULL DEFAULT 0.0 COMMENT 'Campo que indica el monto sin comprobado total de la comision asignada al servidor publico',
  `VIATICO_DEVUELTO_TOTAL` DECIMAL(2) NULL DEFAULT 0.0 COMMENT 'Campo que indica el monto de viaticos total devuelto por el servidor publico',
  `RESULTADO` VARCHAR(200) NULL COMMENT 'Campo que contiene los resultados obtenidos durante la comision',
  `OBSERVACIONES` VARCHAR(100) NULL COMMENT 'Campo que contiene las observaciones realizadas durante la comision',
  `ESTATUS_COMISION` CHAR NOT NULL DEFAULT 'F' COMMENT 'Campo que indica el estatus de la comision, este puede estar con valor de \'F\' cuando la comision no ah sido reportada o confirmada aun por el servidor publico con los gastos derivados de la comision a la que asistio, una vez que esta comision es reportada adquiere el valor de \'T\'',
  PRIMARY KEY (`idComision`),
  INDEX `fk_comision_mecanismo_origen_catalogo1_idx` (`idMec_origen` ASC),
  INDEX `fk_comision_representacion_catalogo1_idx` (`idRepresentacion` ASC),
  INDEX `fk_comision_tipo_comision_catalogo1_idx` (`idTipo_comision` ASC),
  INDEX `fk_comision_servidores_publicos1_idx` (`idServidor` ASC),
  CONSTRAINT `fk_comision_mecanismo_origen_catalogo`
    FOREIGN KEY (`idMec_origen`)
    REFERENCES `ifai`.`mecanismo_origen_catalogo` (`idMec_origen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comision_representacion_catalogo`
    FOREIGN KEY (`idRepresentacion`)
    REFERENCES `ifai`.`representacion_catalogo` (`idRepresentacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comision_tipo_comision_catalogo`
    FOREIGN KEY (`idTipo_comision`)
    REFERENCES `ifai`.`tipo_comision_catalogo` (`idTipo_comision`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comision_servidores_publicos`
    FOREIGN KEY (`idServidor`)
    REFERENCES `ifai`.`servidor_publico` (`idServidor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`viaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`viaje` (
  `idViaje` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del viaje que realizo el servidor publico',
  `idComision` INT NOT NULL COMMENT 'Llave foranea que referencia a la comision a la que pertenece el viaje',
  `idDetalleViaje` INT NOT NULL COMMENT 'Llave foranea que referencia al detalle del viaje reallizado por el servidor publico',
  `LOCALIDAD_ORIGEN` INT NOT NULL COMMENT 'Llave foranea que referencia a la localidad origen desde donde viajo el servidor publico',
  `LOCALIDAD_DESTINO` INT NOT NULL COMMENT 'Llave foranea que referencia a la localidad destino hasta donde viajo el servidor publico',
  `TIPO_VIAJE` INT NOT NULL COMMENT 'Llave foranea que referencia al catalogo con el tipo de viaje que realizo el servidor publico',
  PRIMARY KEY (`idViaje`),
  INDEX `fk_viaje_localidades1_idx` (`LOCALIDAD_ORIGEN` ASC),
  INDEX `fk_viaje_localidades2_idx` (`LOCALIDAD_DESTINO` ASC),
  INDEX `fk_viaje_tipo_viaje1_idx` (`TIPO_VIAJE` ASC),
  INDEX `fk_detalleViaje_viaje_idx` (`idDetalleViaje` ASC),
  INDEX `fk_viaje_comision1_idx` (`idComision` ASC),
  CONSTRAINT `fk_viaje_detalleviaje`
    FOREIGN KEY (`idDetalleViaje`)
    REFERENCES `ifai`.`detalleViaje` (`idDetalleViaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_localidades1`
    FOREIGN KEY (`LOCALIDAD_ORIGEN`)
    REFERENCES `ifai`.`localidades_catalogo` (`idLocalidades`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_localidades2`
    FOREIGN KEY (`LOCALIDAD_DESTINO`)
    REFERENCES `ifai`.`localidades_catalogo` (`idLocalidades`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_tipo_viaje1`
    FOREIGN KEY (`TIPO_VIAJE`)
    REFERENCES `ifai`.`tipo_viaje_catalogo` (`idTipoViaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_viaje_comision`
    FOREIGN KEY (`idComision`)
    REFERENCES `ifai`.`comision` (`idComision`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifai`.`costo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifai`.`costo` (
  `idCosto` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave identificadora del costo',
  `idViaje` INT NOT NULL COMMENT 'Llave foranea que referencia al identificador del viaje al que pertenece el costo',
  `idMoneda` INT NOT NULL COMMENT 'Llave foranea que referencia al catalogo de monedas en que esta representado el costo',
  `GASTO_PASAJE` DECIMAL(2) NULL COMMENT 'Campo que describe el Monto del gasto generado por viáticos, relacionado específicamente con el transporte del funcionario.',
  `GASTO_VIATICO` DECIMAL(2) NULL COMMENT 'Campo que describe el Monto del gasto generado por viáticos, relacionado rubros diferentes al transporte del funcionario (hospedaje y alimentación principalmente)',
  `COSTO_HOTEL` DECIMAL(2) NULL COMMENT 'Campo que describe el Costo total del hospedaje reportado en el oficio correspondiente',
  `COMPROBADO` DECIMAL(2) NULL COMMENT 'Campo que indica el Costo total generado durante el viaje del que se cuenta con comprobantes oficialmente aceptados por el IFAI, según lo reportado por el funcionario en el oficio correspondiente',
  `SIN_COMPROBAR` DECIMAL(2) NULL COMMENT 'Campo que indica el Costo total generado durante el viaje del que no se cuenta con comprobantes oficialmente aceptados por el IFAI, según lo reportado por el funcionario en el oficio correspondiente',
  `VIATICO_DEVUELTO` DECIMAL(2) NULL COMMENT 'Campo que describe el Monto devuelto por el funcionario a la cuenta del IFAI correspondiente, según lineamientos internos, reportado en el oficio correspondiente',
  `TARIFA_DIARIA` DECIMAL(2) NULL COMMENT 'Campo que indica la Tarifa de viáticos diaria asignada al funcionario de acuerdo con su perfil y el lugar a donde viaja. ',
  PRIMARY KEY (`idCosto`, `idViaje`),
  INDEX `fk_moneda_gastos_idx` (`idMoneda` ASC),
  INDEX `fk_costo_viaje_idx` (`idViaje` ASC),
  CONSTRAINT `fk_costo_viajes`
    FOREIGN KEY (`idViaje`)
    REFERENCES `ifai`.`viaje` (`idDetalleViaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_moneda_costo`
    FOREIGN KEY (`idMoneda`)
    REFERENCES `ifai`.`moneda_catalogo` (`idMoneda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
