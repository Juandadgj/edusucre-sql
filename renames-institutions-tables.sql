
START TRANSACTION;

ALTER TABLE `ano_escolar` 
RENAME TO  `master_scholar_year` ;

ALTER TABLE `area` 
RENAME TO  `master_area` ;

ALTER TABLE `asignatura` 
RENAME TO  `master_course` ;

ALTER TABLE `asignatura_estudiante` 
RENAME TO  `master_course_student` ;

ALTER TABLE `curso` 
RENAME TO  `master_group` ;

ALTER TABLE `destacados` 
RENAME TO  `master_featured` ;

ALTER TABLE `estudiante` 
RENAME TO  `master_student` ;

ALTER TABLE `inasistencias` 
RENAME TO  `master_absence` ;

ALTER TABLE `indicador_estudiante` 
RENAME TO  `master_indicator_student` ;

ALTER TABLE `logro` 
RENAME TO  `master_achievement` ;

ALTER TABLE `logro_estudiante` 
RENAME TO  `master_achievement_student` ;

ALTER TABLE `matricula` 
RENAME TO  `master_enrollment` ;

ALTER TABLE `notificacion` 
RENAME TO  `master_notification` ;

ALTER TABLE `obscenidad` 
RENAME TO  `master_obscenity` ;

ALTER TABLE `observaciones` 
RENAME TO  `master_observation` ;

ALTER TABLE `profesor` 
RENAME TO  `master_teacher` ;

ALTER TABLE `recomendacion` 
RENAME TO  `master_recommendation` ;

ALTER TABLE `recomendacion_estudiante` 
RENAME TO  `master_recommendation_student` ;

ALTER TABLE `secretaria` 
RENAME TO  `master_secretary` ;

ALTER TABLE `tipo_nota_clasificacion` 
RENAME TO  `master_type_qualification` ;

ALTER TABLE `usuario` 
RENAME TO  `master_user` ;

COMMIT;
