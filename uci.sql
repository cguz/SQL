#
# Table structure for table sirinet_aplicacion
#

CREATE TABLE `sirinet_aplicacion` (
  `id_aplicacion` int(10) NOT NULL auto_increment,
  `nombre` varchar(200) default NULL,
  `descripcion` text,
  `url` varchar(200) default NULL,
  `logo` varchar(100) default NULL,
  `id_usuarios` int(10) default NULL,
  `fecha_creacion` datetime default NULL,
  PRIMARY KEY  (`id_aplicacion`),
  UNIQUE KEY `IDX_sirinet_aplicacion1` (`id_aplicacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_aplicacion
#

INSERT INTO `sirinet_aplicacion` VALUES (1,'ZUCI WEB','ZUCI WEB - Sistema de Información de Historias Clinicas Neonatales a traves de Internet.','http://200.114.15.225','http://200.114.15.225/Imagenes/logoaplica.gif',0,'15/04/2006 00:00:00');
INSERT INTO `sirinet_aplicacion` VALUES (2,'Chirimias Kulturprojekt','Proyecto cultural que se viene realizando en Alemania.','http://www.chirimias.com/','http://chirimias.com/Images/logo.gif',0,'22/07/2006 00:00:00');
INSERT INTO `sirinet_aplicacion` VALUES (3,'URO WEB','Sistema de Información de Historias Clinicas de Urologia a traves de Internet','http://uro.keopstd.com','http://uro.keopstd.com/imagenes/logo.gif',0,'09/08/2006 04:19:00 a.m.');

#
# Table structure for table sirinet_aplicacion_func
#

CREATE TABLE `sirinet_aplicacion_func` (
  `id_funcionalidad` int(10) unsigned NOT NULL auto_increment,
  `id_aplicacion` int(10) default NULL,
  `prioridad` tinyint(4) default NULL,
  `nombre` text,
  `ubicacion` varchar(100) default NULL,
  `estado` tinyint(1) default NULL,
  PRIMARY KEY  (`id_funcionalidad`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_aplicacion_func
#

INSERT INTO `sirinet_aplicacion_func` VALUES (1,1,1,'Ingresar Usuarios','Menu Superior',1);

#
# Table structure for table sirinet_cont_apli_idio
#

CREATE TABLE `sirinet_cont_apli_idio` (
  `Id_cont_apli_idio` int(11) unsigned NOT NULL auto_increment,
  `sirinet_id_aplicacion` int(10) NOT NULL default '0',
  `sirinet_id_cont_idio` int(10) NOT NULL default '0',
  `prioridad` tinyint(2) default NULL,
  `texto` text,
  `contenido` text,
  `ubicacion` varchar(40) default NULL,
  PRIMARY KEY  (`Id_cont_apli_idio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_cont_apli_idio
#

INSERT INTO `sirinet_cont_apli_idio` VALUES (1,2,1,1,'Español','1','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (2,2,1,2,'Ingles','2','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (3,2,1,3,'Aleman','3','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (4,2,2,1,'Spanisch','1','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (5,2,2,2,'Englisch','2','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (6,2,2,3,'German','3','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (7,2,3,1,'Spanisch','1','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (8,2,3,2,'Englisch','2','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (9,2,3,3,'Deutsch','3','Idiomas');
INSERT INTO `sirinet_cont_apli_idio` VALUES (10,2,3,1,'<img src=\"Images/disC_05.jpg\" alt=\"\" width=\"157\" height=\"37\" border=\"0\" />','Home','Menu');
INSERT INTO `sirinet_cont_apli_idio` VALUES (11,2,3,2,'<img src=\"Images/disC_08.jpg\" alt=\"\" width=\"157\" height=\"36\" border=\"0\" />','Percusion','Menu');
INSERT INTO `sirinet_cont_apli_idio` VALUES (12,2,3,3,'<img src=\"Images/disC_10.jpg\" alt=\"\" width=\"157\" height=\"37\" border=\"0\" />','Expresion','Menu');
INSERT INTO `sirinet_cont_apli_idio` VALUES (13,2,3,4,'<img src=\"Images/disC_11.jpg\" alt=\"\" width=\"157\" height=\"37\" border=\"0\" />','Kunstgeschichte','Menu');
INSERT INTO `sirinet_cont_apli_idio` VALUES (14,2,3,5,'<img src=\"Images/disC_12.jpg\" alt=\"\" width=\"157\" height=\"37\" border=\"0\" />','Danza','Menu');
INSERT INTO `sirinet_cont_apli_idio` VALUES (15,2,3,6,'<img src=\"Images/disC_13.jpg\" alt=\"\" width=\"157\" height=\"37\" border=\"0\" />','Literatur','Menu');
INSERT INTO `sirinet_cont_apli_idio` VALUES (16,2,3,7,'<img src=\"Images/disC_14.jpg\" alt=\"\" width=\"157\" height=\"37\" border=\"0\" />','Kontakt','Menu');
INSERT INTO `sirinet_cont_apli_idio` VALUES (17,2,3,1,'<br><p>Chirimias ist ein Kulturprojekt, welches die kulturellen und artistischen F&auml;higkeiten f&ouml;rdert.</p>\r\n              <p>F&uuml;r Kinder, die daran interessiert sind, die lateinamerikanische und spanische Kultur kennen zu lernen.</p>\r\n              <p>Unsere Absicht ist es, die kulturelle Bildung zu verst&auml;rken, die Neugier in den Kindern zu erwecken und unsere Kulturen zu bewahren.</p>\r\n              <p>Unser Hauptaugenmerk liegt darin, die Traditionen aufrechtzuerhalten.</p>','10','Cuerpo');
INSERT INTO `sirinet_cont_apli_idio` VALUES (18,2,3,1,'<br><p align=\'center\'><strong>Taller de Percusi&oacute;n</strong></p>\r\n             <p>&nbsp;</p>\r\n             <p>Durch Bewegung, Klatschen, Stimme und Gesang das Rhytmusgef&uuml;hl entwickeln.</p>\r\n             <p>Einbeziehung von Small-Percussion <br />(Rasseln, Klangh&ouml;lzer usw).</p>','11','Cuerpo');
INSERT INTO `sirinet_cont_apli_idio` VALUES (19,2,3,1,'<br><p align=\'center\'><strong>Taller de Expresi&oacute;n</strong></p>\r\n             <p>&nbsp;</p>\r\n             <p>Die Kinder lernen neue Techniken, Bilder zu malen, die dazu beitragen, um in kleinen Gruppen B&uuml;cher zu schreiben und illustrieren.</p>\r\n             <p>Auch kleine Theaterst&uuml;cke werden vorbereitet und vorgef&uuml;hrt.</p>','12','Cuerpo');

#
# Table structure for table sirinet_cont_idio
#

CREATE TABLE `sirinet_cont_idio` (
  `Id_cont_idio` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(100) default NULL,
  `Moneda` varchar(60) default NULL,
  PRIMARY KEY  (`Id_cont_idio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_cont_idio
#

INSERT INTO `sirinet_cont_idio` VALUES (1,'Español (Colombia)','Pesos');
INSERT INTO `sirinet_cont_idio` VALUES (2,'English (USA)','Dolar');
INSERT INTO `sirinet_cont_idio` VALUES (3,'Deutsch','Euro');

#
# Table structure for table sirinet_empresa
#

CREATE TABLE `sirinet_empresa` (
  `id_empresa` int(10) NOT NULL auto_increment,
  `id_aplicacion` int(10) default NULL,
  `nombre` varchar(80) default NULL,
  `nit` varchar(25) default NULL,
  `logo` varchar(200) default NULL,
  `id_usuarios` int(10) default NULL,
  `fecha_creacion` date default NULL,
  `pais` varchar(100) default NULL,
  `url` varchar(255) default NULL,
  PRIMARY KEY  (`id_empresa`),
  UNIQUE KEY `IDX_sirinet_empresa2` (`id_empresa`),
  KEY `IDX_sirinet_empresa1` (`id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_empresa
#

INSERT INTO `sirinet_empresa` VALUES (1,1,'UCI del CARIBE S.A.','806.008.356-7','Imagenes/logotipo.gif',0,'15/04/2006','Colombia','http://localhost/uci/');

#
# Table structure for table sirinet_pais
#

CREATE TABLE `sirinet_pais` (
  `id_pais` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(200) default NULL,
  PRIMARY KEY  (`id_pais`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_pais
#


#
# Table structure for table sirinet_pais_ciudades
#

CREATE TABLE `sirinet_pais_ciudades` (
  `id_pais_ciudad` int(10) unsigned NOT NULL auto_increment,
  `id_pais` int(10) default NULL,
  `nombre` varchar(200) default NULL,
  `capital` varchar(200) default NULL,
  PRIMARY KEY  (`id_pais_ciudad`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_pais_ciudades
#


#
# Table structure for table sirinet_sucursales
#

CREATE TABLE `sirinet_sucursales` (
  `id_sucursal` int(10) NOT NULL auto_increment,
  `id_empresa` int(10) NOT NULL default '0',
  `lugar` text,
  `sede` text,
  `barrio` varchar(100) default NULL,
  `edificio` varchar(100) default NULL,
  `apartamento` varchar(10) default NULL,
  `ciudad` varchar(100) default NULL,
  `estado` tinyint(1) default NULL,
  PRIMARY KEY  (`id_sucursal`,`id_empresa`),
  UNIQUE KEY `IDX_sirinet_sucursales2` (`id_sucursal`),
  KEY `IDX_sirinet_sucursales1` (`id_empresa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_sucursales
#

INSERT INTO `sirinet_sucursales` VALUES (1,1,'Kra. 3a. No. 8-177','Bocagrande','Bocagrande',NULL,'','Cartagena',1);
INSERT INTO `sirinet_sucursales` VALUES (2,1,'Base Naval, cerca de la entrada de Bocagrande','Base Naval','Bocagrande',NULL,NULL,'Cartagena',1);

#
# Table structure for table sirinet_telefonos
#

CREATE TABLE `sirinet_telefonos` (
  `id_telefonos` int(10) NOT NULL auto_increment,
  `id_sucursal` int(10) NOT NULL default '0',
  `id_telefono_tipo` int(10) default NULL,
  `nom_tabla` varchar(100) default NULL,
  `numero` varchar(16) default NULL,
  PRIMARY KEY  (`id_telefonos`,`id_sucursal`),
  KEY `IDX_sirinet_telefonos1` (`id_sucursal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_telefonos
#

INSERT INTO `sirinet_telefonos` VALUES (1,1,1,'sirinet_sucursales','6657703');
INSERT INTO `sirinet_telefonos` VALUES (2,1,1,'sirinet_sucursales','6656103');
INSERT INTO `sirinet_telefonos` VALUES (3,1,3,'sirinet_sucursales','3157522826');
INSERT INTO `sirinet_telefonos` VALUES (4,1,3,'sirinet_sucursales','3114131748');

#
# Table structure for table sirinet_telefonos_tipos
#

CREATE TABLE `sirinet_telefonos_tipos` (
  `id_telefono_tipo` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(100) default NULL,
  PRIMARY KEY  (`id_telefono_tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_telefonos_tipos
#

INSERT INTO `sirinet_telefonos_tipos` VALUES (1,'Casa');
INSERT INTO `sirinet_telefonos_tipos` VALUES (2,'Oficina');
INSERT INTO `sirinet_telefonos_tipos` VALUES (3,'Celular');
INSERT INTO `sirinet_telefonos_tipos` VALUES (4,'FAX');
INSERT INTO `sirinet_telefonos_tipos` VALUES (5,'Abuela');
INSERT INTO `sirinet_telefonos_tipos` VALUES (6,'Otros');

#
# Table structure for table sirinet_usuarios
#

CREATE TABLE `sirinet_usuarios` (
  `id_usuario` int(10) NOT NULL auto_increment,
  `id_sucursal` int(10) default NULL,
  `identificacion` varchar(16) default NULL,
  `id_pais_ciudad_identificacion` int(10) default NULL,
  `login` varchar(30) default NULL,
  `pass` varchar(20) default NULL,
  `id_usuario_tipo` int(10) NOT NULL default '0',
  `nombres` varchar(200) default NULL,
  `apellidos` varchar(200) default NULL,
  `f_nacimiento` date default '0000-00-00',
  `id_pais_ciudad_nacimiento` int(10) default NULL,
  `direccion` text,
  `email` varchar(200) default NULL,
  `sexo` tinyint(1) default NULL,
  `ocupacion` text,
  `fecha_creacion` date default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id_usuario`,`id_usuario_tipo`),
  UNIQUE KEY `IDX_sirinet_usuarios2` (`id_usuario`),
  KEY `IDX_sirinet_usuarios1` (`id_usuario_tipo`),
  KEY `IDX_sirinet_usuarios3` (`id_sucursal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_usuarios
#


#
# Table structure for table sirinet_usuarios_tipos
#

CREATE TABLE `sirinet_usuarios_tipos` (
  `id_usuario_tipo` int(10) NOT NULL auto_increment,
  `id_empresa` int(10) default NULL,
  `nombre` varchar(100) default NULL,
  `descripcion` text,
  `url_logo` text,
  `estado` tinyint(1) default NULL,
  PRIMARY KEY  (`id_usuario_tipo`),
  UNIQUE KEY `IDX_sirinet_tipousuarios1` (`id_usuario_tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_usuarios_tipos
#

INSERT INTO `sirinet_usuarios_tipos` VALUES (1,1,'Administrador','Es el usuario que se encarga de administrar los usuarios en el sistema.',NULL,1);
INSERT INTO `sirinet_usuarios_tipos` VALUES (2,1,'Auditor de la UCI','Realiza consultas en el sistema y se encarga de reponder a las glosas generadas.',NULL,1);
INSERT INTO `sirinet_usuarios_tipos` VALUES (3,1,'Auditor de los Centros Medicos','Realiza consultas en el sistema y se encarga de generar las glosas ante alguna inconsistencia.',NULL,1);
INSERT INTO `sirinet_usuarios_tipos` VALUES (4,1,'Familiar del Neonato','Realiza consultas que le informen sobre el estado de su bebe.',NULL,1);
INSERT INTO `sirinet_usuarios_tipos` VALUES (5,1,'Personal de Facturación','Son los usuarios que generan las facturas e ingresan los gastos.',NULL,1);
INSERT INTO `sirinet_usuarios_tipos` VALUES (6,1,'Personal de Farmacia','Se encargan de ingresar la lista de productos.',NULL,1);
INSERT INTO `sirinet_usuarios_tipos` VALUES (7,1,'Jefe de enfermera','Son los encargados de manipular la informacion del neonato.',NULL,1);
INSERT INTO `sirinet_usuarios_tipos` VALUES (8,1,'Neonatologo','Son los encargados de manipular la informacion del neonato, realizar el ingreso de las historias clinicas.',NULL,1);

#
# Table structure for table sirinet_usuarios_tipos_func
#

CREATE TABLE `sirinet_usuarios_tipos_func` (
  `id_tipo_funcionalidad` int(10) unsigned NOT NULL auto_increment,
  `id_usuario_tipo` int(10) default NULL,
  `id_funcionalidad` int(10) default NULL,
  `direccion` varchar(255) default NULL,
  PRIMARY KEY  (`id_tipo_funcionalidad`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table sirinet_usuarios_tipos_func
#


ALTER TABLE `sirinet_empresa`
  ADD FOREIGN KEY (`id_aplicacion`) REFERENCES `sirinet_aplicacion` (`id_aplicacion`);

