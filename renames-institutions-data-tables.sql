
ALTER TABLE `usuario`
RENAME TO  `user` ;

ALTER TABLE `user`
CHANGE COLUMN `usu_codigo` `id_user` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `usu_usuario` `user` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `usu_contrasena` `password` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `usu_tipo` `typeu` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `usu_estado` `status` VARCHAR(5) NOT NULL DEFAULT '' ,
CHANGE COLUMN `usu_pertenece` `belongs` VARCHAR(200) NULL DEFAULT NULL ;

ALTER TABLE `inasistencias`
RENAME TO  `absence` ;

ALTER TABLE `absence`
CHANGE COLUMN `ina_codigo` `id_absence` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `est_codigo` `id_student` INT NULL DEFAULT NULL ,
CHANGE COLUMN `asi_codigo` `id_course` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ina_dia` `day` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ina_mes` `month` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ina_ano` `year` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ina_horas` `hours` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ina_justificacion` `justification` CHAR(2) NULL DEFAULT NULL ,
CHANGE COLUMN `ina_motivo` `reason` VARCHAR(245) NULL DEFAULT NULL ,
CHANGE COLUMN `ina_periodo` `period` INT NULL DEFAULT NULL ;

ALTER TABLE `logro`
RENAME TO  `achievement` ;

ALTER TABLE `achievement`
CHANGE COLUMN `log_codigo` `id_achievement` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `asi_codigo` `id_course` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `log_periodo` `period` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `log_descripcion` `description` LONGTEXT NULL DEFAULT NULL ;

ALTER TABLE `logro_estudiante`
RENAME TO  `achievement_student` ;

ALTER TABLE `achievement_student`
CHANGE COLUMN `log_est_codigo` `id_achie_stu` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `log_codigo` `id_achievement` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `est_codigo` `id_student` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `log_est_nota` `score` VARCHAR(20) NULL DEFAULT NULL ;

ALTER TABLE `area`
CHANGE COLUMN `are_codigo` `id_area` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `are_nombre` `name` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `are_estado` `status` VARCHAR(1) NOT NULL DEFAULT 'H' ;

ALTER TABLE `asignatura`
RENAME TO  `course` ;

ALTER TABLE `course`
CHANGE COLUMN `asi_codigo` `id_course` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `cur_codigo` `id_group` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `pro_codigo` `id_teacher` INT NULL DEFAULT NULL ,
CHANGE COLUMN `asi_nombre` `name` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `asi_posicion` `position` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `are_codigo` `id_area` INT NOT NULL ,
CHANGE COLUMN `asi_hora` `hour` INT NOT NULL ,
CHANGE COLUMN `asi_promedio` `average` CHAR(2) NOT NULL DEFAULT 'Si' ,
CHANGE COLUMN `porcentaje` `percentage` INT NOT NULL DEFAULT '100' ;

ALTER TABLE `asignatura_estudiante`
RENAME TO  `course_student` ;

ALTER TABLE `course_student`
CHANGE COLUMN `asi_est_codigo` `id_cour_stu` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `est_codigo` `id_student` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `asi_codigo` `id_course` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `asi_est_nota1` `score1` VARCHAR(15) NULL DEFAULT NULL ,
CHANGE COLUMN `asi_est_nota2` `score2` VARCHAR(15) NULL DEFAULT NULL ,
CHANGE COLUMN `asi_est_nota3` `score3` VARCHAR(15) NULL DEFAULT NULL ,
CHANGE COLUMN `asi_est_nota4` `score4` VARCHAR(15) NULL DEFAULT NULL ,
CHANGE COLUMN `asi_est_nota5` `score5` VARCHAR(15) NOT NULL ;

ALTER TABLE `matricula`
RENAME TO  `enrollment` ;

ALTER TABLE `enrollment`
CHANGE COLUMN `mat_codigo` `id_enrollment` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `est_codigo` `id_student` INT NULL DEFAULT NULL ,
CHANGE COLUMN `cur_codigo` `id_group` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `mat_ano` `year` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `mat_estado` `status` VARCHAR(10) NOT NULL DEFAULT '' ,
CHANGE COLUMN `mat_desercion_motivo` `reason_desertion` LONGTEXT NULL DEFAULT NULL ,
CHANGE COLUMN `mat_desercion_fecha` `date_desertion` DATETIME NULL DEFAULT NULL ;

ALTER TABLE `destacados`
RENAME TO  `featured` ;

ALTER TABLE `featured`
CHANGE COLUMN `des_codigo` `id_featured` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `cur_codigo` `id_group` INT NULL DEFAULT NULL ,
CHANGE COLUMN `est_codigo` `id_student` INT NULL DEFAULT NULL ;

ALTER TABLE `curso`
RENAME TO  `group` ;

ALTER TABLE `group`
CHANGE COLUMN `cur_codigo` `id_group` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `ano_codigo` `id_year` INT UNSIGNED NOT NULL DEFAULT '0' ,
CHANGE COLUMN `cur_nivel` `level` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `cur_subnivel` `sublevel` VARCHAR(5) NOT NULL DEFAULT '' ,
CHANGE COLUMN `cur_jornada` `working_time` VARCHAR(5) NOT NULL DEFAULT '' ,
CHANGE COLUMN `cur_representante` `representative` VARCHAR(200) NULL DEFAULT NULL ;

ALTER TABLE `indicador_estudiante`
RENAME TO  `indicator_student` ;

ALTER TABLE `indicator_student`
CHANGE COLUMN `ind_est_codigo` `id_ind_stu` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `ind_codigo` `id_indicator` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `est_codigo` `id_student` INT NULL DEFAULT NULL ,
CHANGE COLUMN `ind_est_nota` `score` VARCHAR(20) NULL DEFAULT NULL ;

ALTER TABLE `observaciones`
RENAME TO  `observation` ;

ALTER TABLE `observation`
CHANGE COLUMN `obs_codigo` `id_observation` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `est_codigo` `id_student` INT NOT NULL ,
CHANGE COLUMN `cur_codigo` `id_group` INT NOT NULL ,
CHANGE COLUMN `obs_periodo` `period` INT NOT NULL ,
CHANGE COLUMN `obs_titulo` `title` VARCHAR(200) NOT NULL ,
CHANGE COLUMN `obs_descripcion` `description` LONGTEXT NULL DEFAULT NULL ,
CHANGE COLUMN `obs_nota` `note` VARCHAR(20) NULL DEFAULT NULL ;

ALTER TABLE `recomendacion`
RENAME TO  `recommendation` ;

ALTER TABLE `recommendation`
CHANGE COLUMN `rec_codigo` `id_recommendation` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `asi_codigo` `id_course` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `rec_periodo` `period` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `rec_descripcion` `description` LONGTEXT NULL DEFAULT NULL ;

ALTER TABLE `recomendacion_estudiante`
RENAME TO  `recommendation_student` ;

ALTER TABLE `recommendation_student`
CHANGE COLUMN `rec_est_codigo` `id_rec_stu` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `rec_codigo` `id_recommendation` INT UNSIGNED NULL DEFAULT NULL ,
CHANGE COLUMN `est_codigo` `id_student` INT UNSIGNED NULL DEFAULT NULL ;

ALTER TABLE `ano_escolar`
RENAME TO  `scholar_year` ;

ALTER TABLE `scholar_year`
CHANGE COLUMN `ano_codigo` `id_year` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `ano_rector` `rector` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `ano_secretaria` `secretary` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `ano_comentario` `comment` VARCHAR(200) NULL DEFAULT NULL ;

ALTER TABLE `estudiante`
RENAME TO  `student` ;

ALTER TABLE `student`
CHANGE COLUMN `est_codigo` `id_student` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `est_nombre` `name` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `est_apellido` `last_name` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `est_tipo_identificacion` `type_id` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `est_identificacion` `identification` VARCHAR(200) NOT NULL DEFAULT '0' ,
CHANGE COLUMN `est_sexo` `sex` VARCHAR(10) NOT NULL DEFAULT '' ,
CHANGE COLUMN `est_direccion` `direction` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `est_telefono` `phone` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `est_nombre_acudiente` `guardian` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `est_estado` `status` VARCHAR(5) NULL DEFAULT 'H' ,
CHANGE COLUMN `est_nacimiento` `birthday` DATE NULL DEFAULT NULL ,
CHANGE COLUMN `est_padre` `father` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `est_madre` `mother` VARCHAR(150) NOT NULL ;

ALTER TABLE `profesor`
RENAME TO  `teacher` ;

ALTER TABLE `teacher`
CHANGE COLUMN `pro_codigo` `id_teacher` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `pro_nombre` `name` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `pro_apellido` `last_name` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `pro_tipo_identificacion` `type_id` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `pro_identificacion` `identification` INT NOT NULL DEFAULT '0' ,
CHANGE COLUMN `pro_direccion` `direction` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `pro_telefono` `phone` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `pro_email` `email` VARCHAR(200) NOT NULL DEFAULT '' ,
CHANGE COLUMN `pro_titulo` `degree` VARCHAR(200) NOT NULL DEFAULT '' ;

ALTER TABLE `tipo_nota_clasificacion`
RENAME TO  `type_qualification` ;

ALTER TABLE `type_qualification`
CHANGE COLUMN `tipo_not_cla_codigo` `id_type_qual` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `tipo_not_cla_nombre` `name` VARCHAR(50) NULL DEFAULT '0' ,
CHANGE COLUMN `tipo_not_cla_valor` `floor_score` DECIMAL(10,1) NULL DEFAULT NULL ,
CHANGE COLUMN `tipo_not_cla_valor_f` `ceiling_score` DECIMAL(10,1) NULL DEFAULT NULL ,
CHANGE COLUMN `tipo_not_cla_ano` `year` INT NULL DEFAULT NULL ;

