DELIMITER $$

CREATE PROCEDURE paises.cur_Loc_Eli_Rep()
 BEGIN
 DECLARE done INT DEFAULT 0;
 DECLARE var_Ide, var_Ide_Region, var_Ide_Pais, var_Ide_Idioma INT;
 DECLARE var_Nombre VARCHAR(150);
 DECLARE cur_Loc_Rep CURSOR FOR
 SELECT localidades.id, id_Region, id_Pais, nombre, id_Idioma FROM `Localidades`
 GROUP BY id_region, id_pais, id_idioma, nombre having COUNT(*) > 1;
 DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;


 DELETE FROM paises.localidades WHERE id_Idioma<> 7;
 DELETE FROM paises.regiones WHERE id_Idioma <>7;
 DELETE FROM paises.paises WHERE id_Idioma <>7;

OPEN cur_Loc_Rep; 

REPEAT
 FETCH cur_Loc_Rep INTO var_Ide, var_Ide_Region, var_Ide_Pais, var_Nombre, var_Ide_Idioma;
 IF NOT done THEN
 DELETE FROM Localidades
 WHERE id_Region = var_Ide_Region
 AND id_Pais = var_Ide_Pais
 AND nombre = var_Nombre
 AND id_Idioma = var_Ide_Idioma
 AND id =var_Ide;
 END IF;
 UNTIL done END REPEAT;

CLOSE cur_Loc_Rep;
 END

$$
