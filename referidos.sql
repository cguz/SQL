-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 08-04-2007 a las 17:36:45
-- Versión del servidor: 4.1.20
-- Versión de PHP: 4.4.2
-- 
-- Base de datos: `ref2`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `lideres`
-- 

CREATE TABLE `lideres` (
  `id_lead` tinyint(4) NOT NULL auto_increment,
  `nombres` varchar(90) NOT NULL default '',
  `doc_id` varchar(8) NOT NULL default '',
  `fecha_nac` date NOT NULL default '0000-00-00',
  `ocupacion` varchar(25) default NULL,
  `institucion` varchar(25) default NULL,
  `barrio` varchar(20) NOT NULL default '',
  `direccion` varchar(30) NOT NULL default '',
  `telefono` varchar(10) default NULL,
  `celular` varchar(10) default NULL,
  `email` varchar(30) default NULL,
  PRIMARY KEY  (`id_lead`),
  UNIQUE KEY `doc_id` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `lideres`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `referidos`
-- 

CREATE TABLE `referidos` (
  `id_ref` tinyint(4) NOT NULL auto_increment,
  `nombres` varchar(60) NOT NULL default '',
  `doc_id` varchar(8) NOT NULL default '',
  `ocupacion` varchar(25) NOT NULL default '',
  `direccion` varchar(30) NOT NULL default '',
  `telefono` varchar(10) default NULL,
  `celular` varchar(10) default NULL,
  `email` varchar(30) NOT NULL default '',
  `registro_cc` varchar(30) NOT NULL default '',
  `pto_votacion` varchar(30) NOT NULL default '',
  `lead_id` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id_ref`),
  UNIQUE KEY `doc_id` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `referidos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `users`
-- 

CREATE TABLE `users` (
  `id_user` tinyint(4) NOT NULL auto_increment,
  `nombres` varchar(30) NOT NULL default '',
  `apellidos` varchar(30) NOT NULL default '',
  `nickname` varchar(30) NOT NULL default '',
  `passwd` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id_user`),
  UNIQUE KEY `nickname` (`nickname`),
  UNIQUE KEY `passwd` (`passwd`),
  UNIQUE KEY `passwd_2` (`passwd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `users`
-- 

INSERT INTO `users` VALUES (1, 'Administrador', '', 'admin', 'admin');
