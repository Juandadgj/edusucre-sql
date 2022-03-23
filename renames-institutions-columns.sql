
START TRANSACTION;

ALTER TABLE `edusucre_institutions`.`instituto` 
CHANGE COLUMN `ins_codigo` `code` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `ins_nombre` `name` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `ins_registro` `register` VARCHAR(250) NULL DEFAULT NULL ,
CHANGE COLUMN `ins_direccion` `direction` VARCHAR(250) NULL DEFAULT NULL ,
CHANGE COLUMN `ins_telefono` `phone` VARCHAR(250) NULL DEFAULT NULL ,
CHANGE COLUMN `ins_responsable` `responsable` VARCHAR(250) NULL DEFAULT NULL ,
CHANGE COLUMN `ins_logo` `logo` VARCHAR(250) NULL DEFAULT NULL , 
CHANGE COLUMN `ins_usuario` `user` VARCHAR(250) NULL DEFAULT NULL ,
CHANGE COLUMN `ins_pago_inscripcion` `pay_inscription` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ins_pago_mensual` `monthly_pay` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ins_dia` `day` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ins_mes` `month` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ins_ano` `year` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ins_version` `version` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ins_estado` `status` CHAR(1) NULL DEFAULT NULL ,
CHANGE COLUMN `ins_titulo` `title` VARCHAR(50) NOT NULL ,
CHANGE COLUMN `ins_mensaje` `message` VARCHAR(250) NOT NULL ,
CHANGE COLUMN `ins_informacion` `information` LONGTEXT NOT NULL ;

ALTER TABLE `edusucre_institutions`.`instituto` 
RENAME TO  `edusucre_institutions`.`master_institution` ;

COMMIT;
