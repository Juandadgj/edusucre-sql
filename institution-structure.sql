
START TRANSACTION;

--
-- Database: `edusucre_c1059`
--

-- --------------------------------------------------------

--
-- Table structure for table `alterno`
--

CREATE TABLE `alterno` (
  `alt_codigo` int(200) NOT NULL,
  `est_codigo` int(200) NOT NULL DEFAULT '0',
  `pro_codigo` int(200) DEFAULT NULL,
  `alt_nombre` varchar(50) DEFAULT NULL,
  `alt_materia` varchar(200) DEFAULT NULL,
  `alt_nota` varchar(20) DEFAULT NULL,
  `alt_ano` int(5) DEFAULT NULL,
  `alt_periodo` int(4) NOT NULL,
  `valor_nota` varchar(20) NOT NULL,
  `sigla_nota` varchar(5) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ano_escolar`
--

CREATE TABLE `ano_escolar` (
  `ano_codigo` int(10) NOT NULL DEFAULT '0',
  `ano_rector` varchar(200) DEFAULT NULL,
  `ano_secretaria` varchar(200) DEFAULT NULL,
  `ano_comentario` varchar(200) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `are_codigo` int(250) NOT NULL,
  `are_nombre` varchar(150) NOT NULL,
  `are_estado` varchar(1) NOT NULL DEFAULT 'H'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asignatura`
--

CREATE TABLE `asignatura` (
  `asi_codigo` int(200) NOT NULL,
  `cur_codigo` int(200) UNSIGNED DEFAULT NULL,
  `pro_codigo` int(200) DEFAULT NULL,
  `asi_nombre` varchar(200) NOT NULL DEFAULT '',
  `asi_posicion` int(2) NOT NULL DEFAULT '0',
  `dim_codigo` int(200) NOT NULL,
  `asi_dimension` char(1) NOT NULL,
  `are_codigo` int(100) NOT NULL,
  `asi_hora` int(2) NOT NULL,
  `asi_promedio` char(2) NOT NULL DEFAULT 'Si',
  `porcentaje` int(3) NOT NULL DEFAULT '100'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asignatura_estudiante`
--

CREATE TABLE `asignatura_estudiante` (
  `asi_est_codigo` int(200) NOT NULL,
  `est_codigo` int(200) UNSIGNED DEFAULT NULL,
  `asi_codigo` int(200) UNSIGNED DEFAULT NULL,
  `asi_est_nota1` varchar(15) DEFAULT NULL,
  `asi_est_nota2` varchar(15) DEFAULT NULL,
  `asi_est_nota3` varchar(15) DEFAULT NULL,
  `asi_est_nota4` varchar(15) DEFAULT NULL,
  `valor_nota1` varchar(20) DEFAULT NULL,
  `valor_nota2` varchar(20) DEFAULT NULL,
  `valor_nota3` varchar(20) DEFAULT NULL,
  `valor_nota4` varchar(20) DEFAULT NULL,
  `sigla_nota1` varchar(5) DEFAULT NULL,
  `sigla_nota2` varchar(5) DEFAULT NULL,
  `sigla_nota3` varchar(5) DEFAULT NULL,
  `sigla_nota4` varchar(5) DEFAULT NULL,
  `asi_est_nota5` varchar(15) NOT NULL,
  `valor_nota5` varchar(20) NOT NULL,
  `sigla_nota5` varchar(5) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `barner`
--

CREATE TABLE `barner` (
  `bar_titulo` longtext,
  `bar_subtitulo` longtext,
  `bar_logo` varchar(20) DEFAULT NULL,
  `bar_logo_posicion` varchar(20) DEFAULT NULL,
  `bar_titulo_tamano` varchar(5) DEFAULT NULL,
  `bar_titulo_color` varchar(10) DEFAULT NULL,
  `bar_subtitulo_tamano` varchar(5) DEFAULT NULL,
  `bar_subtitulo_color` varchar(10) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `boletin`
--

CREATE TABLE `boletin` (
  `bol_indicadores` int(1) NOT NULL,
  `bol_calificacion` int(1) NOT NULL,
  `bol_titulo` int(1) NOT NULL,
  `bol_promedio_general` char(1) NOT NULL,
  `bol_promedio_grupo` char(1) NOT NULL,
  `bol_promedio_area` char(1) NOT NULL,
  `bol_puesto_grupo` char(1) NOT NULL,
  `bol_puesto_estudiante` char(1) NOT NULL,
  `bol_docente` char(1) NOT NULL,
  `bol_usuario` char(1) NOT NULL,
  `bol_subtitulo` char(1) NOT NULL,
  `bol_logo` char(1) NOT NULL,
  `bol_recomendaciones` char(1) NOT NULL,
  `bol_periodo_1` char(1) NOT NULL,
  `bol_periodo_2` char(1) NOT NULL,
  `bol_periodo_3` char(1) NOT NULL,
  `bol_periodo_4` char(1) NOT NULL,
  `bol_promedio_periodos` char(1) NOT NULL,
  `bol_notas` char(1) NOT NULL,
  `bol_asignatura_area` char(1) NOT NULL,
  `bol_i_h` char(1) NOT NULL,
  `bol_docente_linea` char(1) NOT NULL,
  `bol_firma_rector` char(1) NOT NULL,
  `bol_firma_secretaria` char(1) NOT NULL,
  `bol_firma_docente` char(1) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carnet`
--

CREATE TABLE `carnet` (
  `car_titulo` char(1) NOT NULL,
  `car_titulo_con` varchar(250) NOT NULL,
  `car_titulo_tam` int(1) NOT NULL,
  `car_titulo_col` varchar(7) NOT NULL,
  `car_subtitulo` char(1) NOT NULL,
  `car_subtitulo_con` varchar(250) NOT NULL,
  `car_subtitulo_tam` int(1) NOT NULL,
  `car_subtitulo_col` varchar(7) NOT NULL,
  `car_pie` char(1) NOT NULL,
  `car_pie_con` varchar(250) NOT NULL,
  `car_pie_tam` int(1) NOT NULL,
  `car_pie_col` varchar(7) NOT NULL,
  `car_estudiante` char(1) NOT NULL,
  `car_estudiante_tam` int(1) NOT NULL,
  `car_estudiante_col` varchar(7) NOT NULL,
  `car_codigo` char(1) NOT NULL,
  `car_codigo_tam` int(1) NOT NULL,
  `car_codigo_col` varchar(7) NOT NULL,
  `car_grupo` char(1) NOT NULL,
  `car_grupo_tam` int(1) NOT NULL,
  `car_grupo_col` varchar(7) NOT NULL,
  `car_foto` char(1) NOT NULL,
  `car_logo` char(1) NOT NULL,
  `car_fondo` char(1) NOT NULL,
  `car_fondo_nom` varchar(20) NOT NULL,
  `car_fondo_niv` int(1) NOT NULL,
  `car_linea` char(1) NOT NULL,
  `car_linea_col` varchar(7) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cobros`
--

CREATE TABLE `cobros` (
  `cob_codigo` int(250) NOT NULL,
  `cur_codigo` int(250) DEFAULT NULL,
  `cob_matricula` int(100) DEFAULT NULL,
  `cob_seguro` int(100) DEFAULT NULL,
  `cob_carnet` int(100) DEFAULT NULL,
  `cob_pension` int(100) DEFAULT NULL,
  `cob_otros` int(100) DEFAULT NULL,
  `cob_enero` char(1) DEFAULT NULL,
  `cob_julio` char(1) DEFAULT NULL,
  `cob_diciembre` char(1) DEFAULT NULL,
  `cob_febrero` char(1) NOT NULL DEFAULT 'S',
  `cob_marzo` char(1) NOT NULL DEFAULT 'S',
  `cob_abril` char(1) NOT NULL DEFAULT 'S',
  `cob_mayo` char(1) NOT NULL DEFAULT 'S',
  `cob_junio` char(1) NOT NULL DEFAULT 'S',
  `cob_agosto` char(1) NOT NULL DEFAULT 'S',
  `cob_septiembre` char(1) NOT NULL DEFAULT 'S',
  `cob_octubre` char(1) NOT NULL DEFAULT 'S',
  `cob_noviembre` char(1) NOT NULL DEFAULT 'S'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cobros_especiales`
--

CREATE TABLE `cobros_especiales` (
  `cob_esp_codigo` int(11) NOT NULL,
  `cob_codigo` int(100) DEFAULT NULL,
  `est_codigo` int(200) DEFAULT NULL,
  `cob_esp_matricula` int(100) DEFAULT NULL,
  `cob_esp_seguro` int(100) DEFAULT NULL,
  `cob_esp_carnet` int(100) DEFAULT NULL,
  `cob_esp_otros` int(100) DEFAULT NULL,
  `cob_esp_pension` int(100) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `com_codigo` int(250) NOT NULL,
  `com_comentario` varchar(250) NOT NULL,
  `pub_codigo` int(250) NOT NULL,
  `usu_codigo` int(250) NOT NULL,
  `usu_tipo` int(1) NOT NULL,
  `com_estado` int(1) NOT NULL,
  `com_fecha` date NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

CREATE TABLE `curso` (
  `cur_codigo` int(200) NOT NULL,
  `ano_codigo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cur_nivel` int(5) NOT NULL DEFAULT '0',
  `cur_subnivel` varchar(5) NOT NULL DEFAULT '',
  `cur_jornada` varchar(5) NOT NULL DEFAULT '',
  `cur_representante` varchar(200) DEFAULT NULL,
  `periodo_1` varchar(1) NOT NULL DEFAULT 's',
  `periodo_2` varchar(1) NOT NULL DEFAULT 's',
  `periodo_3` varchar(1) NOT NULL DEFAULT 's',
  `periodo_4` varchar(1) NOT NULL DEFAULT 's',
  `periodo_5` varchar(1) NOT NULL DEFAULT 's'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `datos`
--

CREATE TABLE `datos` (
  `dat_codigo` int(250) NOT NULL,
  `dat_titulo` longtext,
  `dat_contenido` longtext,
  `dat_titulo_color` varchar(50) DEFAULT NULL,
  `dat_titulo_tamano` varchar(50) DEFAULT NULL,
  `dat_titulo_lugar` varchar(7) DEFAULT NULL,
  `dat_contenido_color` varchar(50) DEFAULT NULL,
  `dat_contenido_tamano` varchar(50) DEFAULT NULL,
  `dat_contenido_lugar` varchar(7) DEFAULT NULL,
  `dat_prioridad` int(2) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `destacados`
--

CREATE TABLE `destacados` (
  `des_codigo` int(200) NOT NULL,
  `cur_codigo` int(200) DEFAULT NULL,
  `est_codigo` int(200) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dimension`
--

CREATE TABLE `dimension` (
  `dim_codigo` int(200) NOT NULL,
  `dim_nombre` varchar(200) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estudiante`
--

CREATE TABLE `estudiante` (
  `est_codigo` int(200) NOT NULL,
  `est_nombre` varchar(200) NOT NULL DEFAULT '',
  `est_apellido` varchar(200) NOT NULL DEFAULT '',
  `est_tipo_identificacion` int(5) NOT NULL DEFAULT '0',
  `est_identificacion` varchar(200) NOT NULL DEFAULT '0',
  `est_sexo` varchar(10) NOT NULL DEFAULT '',
  `est_direccion` varchar(200) DEFAULT NULL,
  `est_telefono` varchar(200) DEFAULT NULL,
  `est_nombre_acudiente` varchar(200) DEFAULT NULL,
  `est_foto` varchar(200) DEFAULT NULL,
  `est_estado` varchar(5) DEFAULT 'H',
  `est_nacimiento` date DEFAULT NULL,
  `est_indigena` varchar(2) DEFAULT NULL,
  `est_desplasado` varchar(2) DEFAULT NULL,
  `est_madre_c` varchar(2) DEFAULT NULL,
  `est_desmovilisado` varchar(2) DEFAULT NULL,
  `est_sisben` varchar(2) DEFAULT NULL,
  `est_padre` varchar(150) NOT NULL,
  `est_madre` varchar(150) NOT NULL,
  `est_ide_acudiente` varchar(100) NOT NULL,
  `est_ide_madre` varchar(100) NOT NULL,
  `est_ide_padre` varchar(100) NOT NULL,
  `est_lugar_nacimiento` varchar(100) NOT NULL,
  `est_niv_sisben` varchar(100) NOT NULL,
  `est_niv_estrato` varchar(100) NOT NULL,
  `est_niv_discapacidad` varchar(100) NOT NULL,
  `comunidad_indigena` varchar(70) DEFAULT NULL,
  `afrodescendiente` varchar(70) DEFAULT NULL,
  `comunidad_afrodescendiente` varchar(70) DEFAULT NULL,
  `barrio` varchar(70) DEFAULT NULL,
  `zona` varchar(70) DEFAULT NULL,
  `estudio_vigencia` varchar(70) DEFAULT NULL,
  `institucion_procedencia` varchar(70) DEFAULT NULL,
  `grado_procedencia` varchar(70) DEFAULT NULL,
  `ano_procedencia` varchar(70) DEFAULT NULL,
  `ciudad_procedencia` varchar(70) DEFAULT NULL,
  `sistema_salud` varchar(70) DEFAULT NULL,
  `tipo_sangra` varchar(70) DEFAULT NULL,
  `entidad_afiliado` varchar(70) DEFAULT NULL,
  `capacidad_excepcional` varchar(70) DEFAULT NULL,
  `codigo` varchar(70) DEFAULT NULL,
  `municipio` varchar(70) DEFAULT NULL,
  `estudio_realizado_madre` varchar(70) DEFAULT NULL,
  `profesion_madre` varchar(70) DEFAULT NULL,
  `celular_madre` varchar(70) DEFAULT NULL,
  `estudio_realizado_padre` varchar(70) DEFAULT NULL,
  `profesion_padre` varchar(70) DEFAULT NULL,
  `celulat_padre` varchar(70) DEFAULT NULL,
  `direccion_padre` varchar(70) DEFAULT NULL,
  `necesita_escolar` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estudiante_evaluacion`
--

CREATE TABLE `estudiante_evaluacion` (
  `est_eva_codigo` int(250) NOT NULL,
  `eva_codigo` int(250) DEFAULT NULL,
  `est_codigo` int(250) DEFAULT NULL,
  `est_eva_inicio` varchar(40) DEFAULT NULL,
  `est_eva_fin` varchar(40) DEFAULT NULL,
  `est_eva_dia` int(2) DEFAULT NULL,
  `est_eva_mes` int(2) DEFAULT NULL,
  `est_eva_ano` int(4) DEFAULT NULL,
  `est_eva_nota` varchar(20) DEFAULT NULL,
  `est_eva_observacion` varchar(250) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evaluacion`
--

CREATE TABLE `evaluacion` (
  `eva_codigo` int(250) NOT NULL,
  `asi_codigo` int(250) DEFAULT NULL,
  `eva_nombre` varchar(250) DEFAULT NULL,
  `eva_explicacion` longtext,
  `eva_dia` int(2) DEFAULT NULL,
  `eva_mes` int(2) UNSIGNED DEFAULT NULL,
  `eva_ano` int(4) UNSIGNED DEFAULT NULL,
  `eva_estado` int(2) DEFAULT NULL,
  `eva_tipo` int(2) DEFAULT NULL,
  `archivo` varchar(100) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `eve_codigo` int(250) NOT NULL,
  `eve_titulo` varchar(250) DEFAULT NULL,
  `eve_evento` longtext,
  `eve_dia` int(2) DEFAULT NULL,
  `eve_mes` int(2) DEFAULT NULL,
  `eve_ano` int(4) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `fac_codigo` int(200) NOT NULL,
  `fac_numero` int(250) NOT NULL,
  `cob_codigo` int(200) NOT NULL,
  `est_codigo` int(250) NOT NULL,
  `fac_estado` char(1) NOT NULL DEFAULT 'H',
  `fac_fecha` datetime NOT NULL,
  `fac_usu_crea` varchar(200) NOT NULL,
  `fac_usu_crea_tipo` int(1) NOT NULL,
  `fac_usu_borra` varchar(200) NOT NULL,
  `fac_usu_borra_tipo` int(1) NOT NULL,
  `fac_fecha_borra` datetime NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factura_detalle`
--

CREATE TABLE `factura_detalle` (
  `fac_det_codigo` int(250) NOT NULL,
  `fac_codigo` int(200) NOT NULL,
  `fac_det_tipo` int(1) NOT NULL,
  `fac_det_pago` int(250) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grado`
--

CREATE TABLE `grado` (
  `gra_codigo` int(200) NOT NULL,
  `est_codigo` int(200) DEFAULT NULL,
  `gra_nombre` varchar(50) DEFAULT NULL,
  `gra_ano` int(5) NOT NULL DEFAULT '0',
  `gra_mes` int(2) UNSIGNED DEFAULT NULL,
  `gra_dia` int(2) UNSIGNED DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

CREATE TABLE `horario` (
  `hor_codigo` int(200) NOT NULL,
  `asi_codigo` int(200) NOT NULL DEFAULT '0',
  `hor_salon` varchar(200) NOT NULL DEFAULT '',
  `hor_desde` varchar(100) NOT NULL DEFAULT '',
  `hor_hasta` varchar(100) NOT NULL DEFAULT '',
  `hor_dia` int(5) NOT NULL DEFAULT '0',
  `cur_codigo` int(150) NOT NULL,
  `hor_ano` int(4) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inasistencias`
--

CREATE TABLE `inasistencias` (
  `ina_codigo` int(250) NOT NULL,
  `est_codigo` int(250) DEFAULT NULL,
  `asi_codigo` int(250) DEFAULT NULL,
  `ina_dia` int(2) DEFAULT NULL,
  `ina_mes` int(2) DEFAULT NULL,
  `ina_ano` int(4) DEFAULT NULL,
  `ina_horas` int(2) DEFAULT NULL,
  `ina_justificacion` char(2) DEFAULT NULL,
  `ina_motivo` longtext,
  `ina_periodo` int(2) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `indicador`
--

CREATE TABLE `indicador` (
  `ind_codigo` int(250) NOT NULL,
  `log_codigo` int(250) UNSIGNED DEFAULT NULL,
  `ind_descripcion` longtext
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `indicador_estudiante`
--

CREATE TABLE `indicador_estudiante` (
  `ind_est_codigo` int(250) NOT NULL,
  `ind_codigo` int(250) UNSIGNED DEFAULT NULL,
  `est_codigo` int(250) DEFAULT NULL,
  `ind_est_nota` varchar(20) DEFAULT NULL,
  `valor_nota` int(100) DEFAULT NULL,
  `sigla_nota` varchar(5) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logro`
--

CREATE TABLE `logro` (
  `log_codigo` int(250) NOT NULL,
  `asi_codigo` int(200) UNSIGNED DEFAULT NULL,
  `log_periodo` int(5) UNSIGNED DEFAULT NULL,
  `log_descripcion` longtext
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logro_estudiante`
--

CREATE TABLE `logro_estudiante` (
  `log_est_codigo` int(250) NOT NULL,
  `log_codigo` int(250) UNSIGNED DEFAULT NULL,
  `est_codigo` int(250) UNSIGNED DEFAULT NULL,
  `log_est_nota` varchar(20) DEFAULT NULL,
  `valor_nota` varchar(20) DEFAULT NULL,
  `sigla_nota` varchar(5) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `matricula`
--

CREATE TABLE `matricula` (
  `mat_codigo` int(200) NOT NULL,
  `est_codigo` int(200) DEFAULT NULL,
  `cur_codigo` int(11) NOT NULL DEFAULT '0',
  `mat_ano` int(10) NOT NULL DEFAULT '0',
  `mat_estado` varchar(10) NOT NULL DEFAULT '',
  `mat_desercion_motivo` longtext,
  `mat_desercion_fecha` datetime DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mensajeria`
--

CREATE TABLE `mensajeria` (
  `men_codigo` int(250) NOT NULL,
  `men_origen` int(200) DEFAULT NULL,
  `men_destino` int(200) DEFAULT NULL,
  `men_origen_tipo` int(200) DEFAULT NULL,
  `men_destino_tipo` int(200) DEFAULT NULL,
  `men_asunto` varchar(200) DEFAULT NULL,
  `men_mensaje` longtext,
  `men_dia` int(2) DEFAULT NULL,
  `men_mes` int(2) DEFAULT NULL,
  `men_ano` int(4) DEFAULT NULL,
  `men_estado` int(1) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mural`
--

CREATE TABLE `mural` (
  `mur_codigo` int(200) NOT NULL,
  `cur_codigo` int(250) DEFAULT NULL,
  `est_codigo` int(250) DEFAULT NULL,
  `mur_dia` int(2) DEFAULT NULL,
  `mur_mes` int(2) DEFAULT NULL,
  `mur_ano` int(4) DEFAULT NULL,
  `mur_mensaje` longtext
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notificacion`
--

CREATE TABLE `notificacion` (
  `nott_codigo` int(250) NOT NULL,
  `nott_destino` int(200) DEFAULT NULL,
  `nott_origen` int(200) DEFAULT NULL,
  `nott_origen_tipo` int(200) DEFAULT NULL,
  `nott_destino_tipo` int(200) DEFAULT NULL,
  `nott_notificacion` longtext,
  `nott_dia` int(2) DEFAULT NULL,
  `nott_mes` int(2) DEFAULT NULL,
  `nott_ano` int(4) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `obscenidad`
--

CREATE TABLE `obscenidad` (
  `obs_codigo` int(200) NOT NULL,
  `obs_palabra` varchar(50) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `observaciones`
--

CREATE TABLE `observaciones` (
  `obs_codigo` int(200) NOT NULL,
  `est_codigo` int(200) NOT NULL,
  `cur_codigo` int(200) NOT NULL,
  `obs_periodo` int(4) NOT NULL,
  `obs_titulo` varchar(200) NOT NULL,
  `obs_descripcion` longtext,
  `obs_nota` varchar(20) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opciones`
--

CREATE TABLE `opciones` (
  `ano_codigo` int(10) DEFAULT NULL,
  `logro` char(2) DEFAULT 'S',
  `indicador` char(2) DEFAULT 'S',
  `css` varchar(10) DEFAULT NULL,
  `muro` char(2) DEFAULT 'S',
  `mensaje_administrador` char(2) DEFAULT 'S',
  `vista_asignatura` char(2) DEFAULT 'S',
  `status` char(2) DEFAULT 'S',
  `vista_eventos` char(2) DEFAULT 'S',
  `vista_mejores` char(2) DEFAULT 'S',
  `identificador` varchar(250) DEFAULT NULL,
  `visita` int(250) DEFAULT NULL,
  `notas_estudiante` char(1) NOT NULL DEFAULT '',
  `pagos_estudiante` char(2) NOT NULL DEFAULT '',
  `encuesta` char(2) NOT NULL DEFAULT '',
  `excelente` int(200) NOT NULL DEFAULT '0',
  `bueno` int(200) NOT NULL DEFAULT '0',
  `regular` int(200) NOT NULL DEFAULT '0',
  `falta` int(200) NOT NULL DEFAULT '0',
  `tip_not_codigo` int(50) NOT NULL DEFAULT '1',
  `vista_personal` char(2) NOT NULL DEFAULT 'S',
  `calcular_final` varchar(1) NOT NULL DEFAULT 'N',
  `ins_titulo` varchar(50) NOT NULL,
  `ins_mensaje` varchar(250) NOT NULL,
  `ins_estado` varchar(1) NOT NULL DEFAULT 'H',
  `color_1` varchar(8) NOT NULL,
  `color_2` varchar(8) NOT NULL,
  `color_3` varchar(8) NOT NULL,
  `min_nota` varchar(5) NOT NULL DEFAULT '6.0',
  `aud_publicaciones` varchar(1) NOT NULL DEFAULT 'N',
  `vista_publicacion` varchar(1) NOT NULL DEFAULT 'S',
  `ing_logro` varchar(1) NOT NULL DEFAULT 'S',
  `edi_logro` varchar(1) NOT NULL DEFAULT 'S',
  `ing_nota_1` varchar(1) NOT NULL DEFAULT 'S',
  `ing_nota_2` varchar(1) NOT NULL DEFAULT 'S',
  `ing_nota_3` varchar(1) NOT NULL DEFAULT 'S',
  `ing_nota_4` varchar(1) NOT NULL DEFAULT 'S',
  `ing_nota_f` varchar(1) NOT NULL DEFAULT 'S',
  `edi_nota` varchar(1) NOT NULL DEFAULT 'S',
  `imp_boletin` varchar(1) NOT NULL DEFAULT 'S',
  `lugar` varchar(50) NOT NULL,
  `certificado_ini` longtext NOT NULL,
  `certificado_fin` longtext NOT NULL,
  `menu_dinamico` varchar(1) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outin`
--

CREATE TABLE `outin` (
  `out_codigo` int(200) NOT NULL,
  `est_codigo` int(200) DEFAULT NULL,
  `out_nombre` varchar(20) DEFAULT NULL,
  `out_motivo` longtext,
  `out_dia` int(2) DEFAULT NULL,
  `out_mes` int(2) DEFAULT NULL,
  `out_ano` int(4) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `pag_codigo` int(250) NOT NULL,
  `cob_codigo` int(250) DEFAULT NULL,
  `est_codigo` int(200) DEFAULT NULL,
  `pag_matricula` int(100) DEFAULT NULL,
  `pag_seguro` int(100) DEFAULT NULL,
  `pag_carnet` int(100) DEFAULT NULL,
  `pag_otros` int(100) DEFAULT NULL,
  `pag_enero` int(100) DEFAULT NULL,
  `pag_febrero` int(100) DEFAULT NULL,
  `pag_marzo` int(100) DEFAULT NULL,
  `pag_abril` int(100) DEFAULT NULL,
  `pag_mayo` int(100) DEFAULT NULL,
  `pag_junio` int(100) DEFAULT NULL,
  `pag_julio` int(100) DEFAULT NULL,
  `pag_agosto` int(100) DEFAULT NULL,
  `pag_septiembre` int(100) DEFAULT NULL,
  `pag_octubre` int(100) DEFAULT NULL,
  `pag_noviembre` int(100) DEFAULT NULL,
  `pag_diciembre` int(100) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pregunta`
--

CREATE TABLE `pregunta` (
  `pre_codigo` int(250) NOT NULL,
  `eva_codigo` int(250) DEFAULT NULL,
  `pre_pregunta` longtext
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE `profesor` (
  `pro_codigo` int(200) NOT NULL,
  `pro_nombre` varchar(200) NOT NULL DEFAULT '',
  `pro_apellido` varchar(200) NOT NULL DEFAULT '',
  `pro_tipo_identificacion` int(5) NOT NULL DEFAULT '0',
  `pro_identificacion` int(100) NOT NULL DEFAULT '0',
  `pro_direccion` varchar(200) NOT NULL DEFAULT '',
  `pro_telefono` varchar(200) NOT NULL DEFAULT '',
  `pro_email` varchar(200) NOT NULL DEFAULT '',
  `pro_titulo` varchar(200) NOT NULL DEFAULT '',
  `pro_descripcion` varchar(200) NOT NULL DEFAULT '',
  `pro_eliminado` varchar(5) DEFAULT 'N'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_codigo` int(250) NOT NULL,
  `pub_titulo` varchar(250) NOT NULL,
  `pub_contenido` longtext NOT NULL,
  `pub_resumen` varchar(250) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `pub_visita` int(4) NOT NULL,
  `pub_estado` int(1) NOT NULL,
  `pub_fecha` date NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recomendacion`
--

CREATE TABLE `recomendacion` (
  `rec_codigo` int(250) NOT NULL,
  `asi_codigo` int(200) UNSIGNED DEFAULT NULL,
  `rec_periodo` int(5) UNSIGNED DEFAULT NULL,
  `rec_descripcion` longtext
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recomendacion_estudiante`
--

CREATE TABLE `recomendacion_estudiante` (
  `rec_est_codigo` int(250) NOT NULL,
  `rec_codigo` int(250) UNSIGNED DEFAULT NULL,
  `est_codigo` int(250) UNSIGNED DEFAULT NULL,
  `rec_est_nota` varchar(1) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `respuesta`
--

CREATE TABLE `respuesta` (
  `res_codigo` int(250) NOT NULL,
  `pre_codigo` int(250) DEFAULT NULL,
  `est_eva_codigo` int(250) DEFAULT NULL,
  `res_respuesta` longtext
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sancion`
--

CREATE TABLE `sancion` (
  `san_codigo` int(200) NOT NULL,
  `est_codigo` int(200) DEFAULT NULL,
  `san_motivo` varchar(250) DEFAULT NULL,
  `san_castigo` varchar(250) DEFAULT NULL,
  `san_ano` int(5) DEFAULT NULL,
  `san_mes` int(2) DEFAULT NULL,
  `san_dia` int(2) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `secretaria`
--

CREATE TABLE `secretaria` (
  `sec_codigo` int(200) NOT NULL,
  `sec_nombre` varchar(200) NOT NULL DEFAULT '',
  `sec_apellido` varchar(200) NOT NULL DEFAULT '',
  `sec_tipo_identificacion` int(5) NOT NULL DEFAULT '0',
  `sec_identificacion` int(100) NOT NULL DEFAULT '0',
  `sec_direccion` varchar(200) NOT NULL DEFAULT '',
  `sec_telefono` varchar(200) NOT NULL DEFAULT '',
  `sec_email` varchar(200) NOT NULL DEFAULT '',
  `sec_descripcion` varchar(200) NOT NULL DEFAULT '',
  `sec_eliminado` varchar(5) DEFAULT 'N'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_nota`
--

CREATE TABLE `tipo_nota` (
  `tip_not_codigo` int(250) NOT NULL,
  `tip_not_descripcion` varchar(250) NOT NULL,
  `tip_not_nombre` varchar(50) NOT NULL DEFAULT '0'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_nota_clasificacion`
--

CREATE TABLE `tipo_nota_clasificacion` (
  `tipo_not_cla_codigo` int(250) NOT NULL,
  `tipo_not_codigo` int(250) DEFAULT NULL,
  `tipo_not_cla_nombre` varchar(50) DEFAULT '0',
  `tipo_not_cla_valor` decimal(10,1) DEFAULT NULL,
  `tipo_not_cla_valor_f` decimal(10,1) DEFAULT NULL,
  `tipo_not_cla_sigla` varchar(5) DEFAULT NULL,
  `tipo_not_cla_ano` int(4) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `tip_codigo` int(250) NOT NULL,
  `tip_titulo` varchar(150) NOT NULL,
  `tip_contenido` longtext NOT NULL,
  `tip_tipo` int(1) NOT NULL,
  `tip_imagen` varchar(150) DEFAULT NULL,
  `tip_imagen_2` varchar(150) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `usu_codigo` int(200) NOT NULL,
  `usu_usuario` varchar(200) NOT NULL DEFAULT '',
  `usu_contrasena` varchar(200) NOT NULL DEFAULT '',
  `usu_tipo` int(5) NOT NULL DEFAULT '0',
  `usu_estado` varchar(5) NOT NULL DEFAULT '',
  `usu_pertenece` varchar(200) DEFAULT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `utiles`
--

CREATE TABLE `utiles` (
  `uti_codigo` int(200) NOT NULL,
  `asi_codigo` int(200) DEFAULT NULL,
  `uti_nombre` longtext,
  `uti_caracteristicas` longtext
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `votacion`
--

CREATE TABLE `votacion` (
  `vot_codigo` int(100) NOT NULL,
  `vot_nombre` varchar(200) NOT NULL,
  `vot_estado` varchar(1) NOT NULL,
  `vot_fecha` date NOT NULL,
  `vot_ano` int(4) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `votacion_candidatos`
--

CREATE TABLE `votacion_candidatos` (
  `vot_can_codigo` int(100) NOT NULL,
  `vot_codigo` int(100) NOT NULL,
  `est_codigo` int(250) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `votacion_curso`
--

CREATE TABLE `votacion_curso` (
  `vot_cur_codigo` int(200) NOT NULL,
  `vot_codigo` int(100) NOT NULL,
  `cur_codigo` int(200) NOT NULL
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `votacion_estudiante`
--

CREATE TABLE `votacion_estudiante` (
  `vot_est_codigo` int(200) NOT NULL,
  `vot_codigo` int(200) NOT NULL,
  `est_codigo` int(250) NOT NULL,
  `vot_can_codigo` varchar(200) NOT NULL,
  `vot_est_fecha` datetime NOT NULL
) DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alterno`
--
ALTER TABLE `alterno`
  ADD PRIMARY KEY (`alt_codigo`);

--
-- Indexes for table `ano_escolar`
--
ALTER TABLE `ano_escolar`
  ADD PRIMARY KEY (`ano_codigo`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`are_codigo`);

--
-- Indexes for table `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`asi_codigo`),
  ADD KEY `asignatura` (`cur_codigo`);

--
-- Indexes for table `asignatura_estudiante`
--
ALTER TABLE `asignatura_estudiante`
  ADD PRIMARY KEY (`asi_est_codigo`),
  ADD KEY `asignatura_estudiante` (`est_codigo`);

--
-- Indexes for table `cobros`
--
ALTER TABLE `cobros`
  ADD PRIMARY KEY (`cob_codigo`);

--
-- Indexes for table `cobros_especiales`
--
ALTER TABLE `cobros_especiales`
  ADD PRIMARY KEY (`cob_esp_codigo`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`com_codigo`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cur_codigo`),
  ADD KEY `curso` (`ano_codigo`);

--
-- Indexes for table `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`dat_codigo`);

--
-- Indexes for table `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`des_codigo`);

--
-- Indexes for table `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`dim_codigo`);

--
-- Indexes for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`est_codigo`);

--
-- Indexes for table `estudiante_evaluacion`
--
ALTER TABLE `estudiante_evaluacion`
  ADD PRIMARY KEY (`est_eva_codigo`);

--
-- Indexes for table `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`eva_codigo`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`eve_codigo`),
  ADD KEY `eve_codigo` (`eve_codigo`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`fac_codigo`);

--
-- Indexes for table `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD PRIMARY KEY (`fac_det_codigo`);

--
-- Indexes for table `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`gra_codigo`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`hor_codigo`);

--
-- Indexes for table `inasistencias`
--
ALTER TABLE `inasistencias`
  ADD PRIMARY KEY (`ina_codigo`);

--
-- Indexes for table `indicador`
--
ALTER TABLE `indicador`
  ADD PRIMARY KEY (`ind_codigo`);

--
-- Indexes for table `indicador_estudiante`
--
ALTER TABLE `indicador_estudiante`
  ADD PRIMARY KEY (`ind_est_codigo`);

--
-- Indexes for table `logro`
--
ALTER TABLE `logro`
  ADD PRIMARY KEY (`log_codigo`),
  ADD KEY `logro` (`asi_codigo`);

--
-- Indexes for table `logro_estudiante`
--
ALTER TABLE `logro_estudiante`
  ADD PRIMARY KEY (`log_est_codigo`),
  ADD KEY `logro_estudiante` (`log_codigo`),
  ADD KEY `key_logro_estudiante_estudiante` (`est_codigo`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`mat_codigo`);

--
-- Indexes for table `mensajeria`
--
ALTER TABLE `mensajeria`
  ADD PRIMARY KEY (`men_codigo`);

--
-- Indexes for table `mural`
--
ALTER TABLE `mural`
  ADD PRIMARY KEY (`mur_codigo`);

--
-- Indexes for table `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`nott_codigo`);

--
-- Indexes for table `obscenidad`
--
ALTER TABLE `obscenidad`
  ADD PRIMARY KEY (`obs_codigo`);

--
-- Indexes for table `observaciones`
--
ALTER TABLE `observaciones`
  ADD PRIMARY KEY (`obs_codigo`);

--
-- Indexes for table `outin`
--
ALTER TABLE `outin`
  ADD PRIMARY KEY (`out_codigo`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`pag_codigo`);

--
-- Indexes for table `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`pre_codigo`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`pro_codigo`);

--
-- Indexes for table `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_codigo`);

--
-- Indexes for table `recomendacion`
--
ALTER TABLE `recomendacion`
  ADD PRIMARY KEY (`rec_codigo`);

--
-- Indexes for table `recomendacion_estudiante`
--
ALTER TABLE `recomendacion_estudiante`
  ADD PRIMARY KEY (`rec_est_codigo`);

--
-- Indexes for table `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`res_codigo`);

--
-- Indexes for table `sancion`
--
ALTER TABLE `sancion`
  ADD PRIMARY KEY (`san_codigo`);

--
-- Indexes for table `secretaria`
--
ALTER TABLE `secretaria`
  ADD PRIMARY KEY (`sec_codigo`);

--
-- Indexes for table `tipo_nota`
--
ALTER TABLE `tipo_nota`
  ADD PRIMARY KEY (`tip_not_codigo`);

--
-- Indexes for table `tipo_nota_clasificacion`
--
ALTER TABLE `tipo_nota_clasificacion`
  ADD PRIMARY KEY (`tipo_not_cla_codigo`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`tip_codigo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_codigo`);

--
-- Indexes for table `utiles`
--
ALTER TABLE `utiles`
  ADD PRIMARY KEY (`uti_codigo`);

--
-- Indexes for table `votacion`
--
ALTER TABLE `votacion`
  ADD PRIMARY KEY (`vot_codigo`);

--
-- Indexes for table `votacion_candidatos`
--
ALTER TABLE `votacion_candidatos`
  ADD PRIMARY KEY (`vot_can_codigo`);

--
-- Indexes for table `votacion_curso`
--
ALTER TABLE `votacion_curso`
  ADD PRIMARY KEY (`vot_cur_codigo`);

--
-- Indexes for table `votacion_estudiante`
--
ALTER TABLE `votacion_estudiante`
  ADD PRIMARY KEY (`vot_est_codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alterno`
--
ALTER TABLE `alterno`
  MODIFY `alt_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `are_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `asi_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asignatura_estudiante`
--
ALTER TABLE `asignatura_estudiante`
  MODIFY `asi_est_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cobros`
--
ALTER TABLE `cobros`
  MODIFY `cob_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cobros_especiales`
--
ALTER TABLE `cobros_especiales`
  MODIFY `cob_esp_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `com_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `cur_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datos`
--
ALTER TABLE `datos`
  MODIFY `dat_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destacados`
--
ALTER TABLE `destacados`
  MODIFY `des_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dimension`
--
ALTER TABLE `dimension`
  MODIFY `dim_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `est_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estudiante_evaluacion`
--
ALTER TABLE `estudiante_evaluacion`
  MODIFY `est_eva_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `eva_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `eve_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `fac_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factura_detalle`
--
ALTER TABLE `factura_detalle`
  MODIFY `fac_det_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grado`
--
ALTER TABLE `grado`
  MODIFY `gra_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `hor_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inasistencias`
--
ALTER TABLE `inasistencias`
  MODIFY `ina_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicador`
--
ALTER TABLE `indicador`
  MODIFY `ind_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicador_estudiante`
--
ALTER TABLE `indicador_estudiante`
  MODIFY `ind_est_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logro`
--
ALTER TABLE `logro`
  MODIFY `log_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logro_estudiante`
--
ALTER TABLE `logro_estudiante`
  MODIFY `log_est_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `mat_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mensajeria`
--
ALTER TABLE `mensajeria`
  MODIFY `men_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mural`
--
ALTER TABLE `mural`
  MODIFY `mur_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `nott_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obscenidad`
--
ALTER TABLE `obscenidad`
  MODIFY `obs_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `observaciones`
--
ALTER TABLE `observaciones`
  MODIFY `obs_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outin`
--
ALTER TABLE `outin`
  MODIFY `out_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagos`
--
ALTER TABLE `pagos`
  MODIFY `pag_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `pre_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `pro_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recomendacion`
--
ALTER TABLE `recomendacion`
  MODIFY `rec_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recomendacion_estudiante`
--
ALTER TABLE `recomendacion_estudiante`
  MODIFY `rec_est_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `res_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sancion`
--
ALTER TABLE `sancion`
  MODIFY `san_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secretaria`
--
ALTER TABLE `secretaria`
  MODIFY `sec_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo_nota`
--
ALTER TABLE `tipo_nota`
  MODIFY `tip_not_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo_nota_clasificacion`
--
ALTER TABLE `tipo_nota_clasificacion`
  MODIFY `tipo_not_cla_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `tip_codigo` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `utiles`
--
ALTER TABLE `utiles`
  MODIFY `uti_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votacion`
--
ALTER TABLE `votacion`
  MODIFY `vot_codigo` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votacion_candidatos`
--
ALTER TABLE `votacion_candidatos`
  MODIFY `vot_can_codigo` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votacion_curso`
--
ALTER TABLE `votacion_curso`
  MODIFY `vot_cur_codigo` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votacion_estudiante`
--
ALTER TABLE `votacion_estudiante`
  MODIFY `vot_est_codigo` int(200) NOT NULL AUTO_INCREMENT;

COMMIT;

