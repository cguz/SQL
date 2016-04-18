#========================================================================== #
# Project Filename:    D:\Trabajos\SiriNet\Diseño de Tablas\sirinet2.dez    #
# Project Name:                                                             #
# Author:                                                                   #
# DBMS:                MySQL 4                                              #
# Copyright:                                                                #
# Generated on:        28/01/2006 19:15:50                                  #
#========================================================================== #

#========================================================================== #
#  Tables                                                                   #
#========================================================================== #

CREATE TABLE sirinet_aplicacion (
    id_aplicacion INTEGER(10) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(200),
    descripcion TEXT,
    url VARCHAR(200),
    logo VARCHAR(100),
    id_usuarios INTEGER(10),
    fecha_creacion DATE,
    PRIMARY KEY (id_aplicacion),
    UNIQUE KEY IDX_sirinet_aplicacion1(id_aplicacion)
);

CREATE TABLE sirinet_empresa (
    id_empresa INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_aplicacion INTEGER(10),
    nombre VARCHAR(80),
    logo VARCHAR(200),
    id_usuarios INTEGER(10),
    fecha_creacion DATE,
    pais VARCHAR(100),
    PRIMARY KEY (id_empresa),
    KEY IDX_sirinet_empresa1(id_aplicacion),
    UNIQUE KEY IDX_sirinet_empresa2(id_empresa)
);

CREATE TABLE sirinet_sucursales (
    id_sucursal INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_empresa INTEGER(10) NOT NULL,
    lugar TEXT,
    sede TEXT,
    barrio VARCHAR(100),
    edificio VARCHAR(100),
    apartamento VARCHAR(10),
    ciudad VARCHAR(100),
    PRIMARY KEY (id_sucursal, id_empresa),
    KEY IDX_sirinet_sucursales1(id_empresa),
    UNIQUE KEY IDX_sirinet_sucursales2(id_sucursal)
);

CREATE TABLE sirinet_telefonos (
    id_telefonos INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_sucursal INTEGER(10) NOT NULL,
    numero VARCHAR(16),
    tipo INTEGER(1),
    PRIMARY KEY (id_telefonos, id_sucursal),
    KEY IDX_sirinet_telefonos1(id_sucursal)
);

CREATE TABLE sirinet_usuarios (
    id_usuarios INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_sucursal INTEGER(10),
    cedula VARCHAR(16),
    login VARCHAR(30),
    pass VARCHAR(20),
    id_tipousuario INTEGER(10) NOT NULL,
    fecha_creacion DATE,
    estado INTEGER(1),
    PRIMARY KEY (id_usuarios, id_tipousuario),
    KEY IDX_sirinet_usuarios1(id_tipousuario),
    UNIQUE KEY IDX_sirinet_usuarios2(id_usuarios),
    KEY IDX_sirinet_usuarios3(id_sucursal)
);

CREATE TABLE sirinet_recursos_tipousuarios (
    id_recursos_tipousuarios INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_recursos INTEGER(10) NOT NULL,
    id_tipousuarios INTEGER(10) NOT NULL,
    PRIMARY KEY (id_recursos_tipousuarios, id_recursos, id_tipousuarios),
    KEY IDX_sirinet_recursos_tipousuarios1(id_recursos),
    KEY IDX_sirinet_recursos_tipousuarios2(id_tipousuarios),
    UNIQUE KEY IDX_sirinet_recursos_tipousuarios3(id_recursos_tipousuarios)
);

CREATE TABLE sirinet_recursos (
    id_recursos INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_aplicacion INTEGER(10),
    nombre VARCHAR(40),
    url VARCHAR(100),
    PRIMARY KEY (id_recursos),
    UNIQUE KEY IDX_sirinet_recursos1(id_recursos),
    KEY IDX_sirinet_recursos2(id_aplicacion)
);

CREATE TABLE sirinet_tipousuarios (
    id_tipousuarios INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_aplicacion INTEGER(10),
    nombre VARCHAR(60),
    descripcion TEXT,
    PRIMARY KEY (id_tipousuarios),
    UNIQUE KEY IDX_sirinet_tipousuarios1(id_tipousuarios),
    KEY IDX_sirinet_tipousuarios2(id_aplicacion)
);

CREATE TABLE sirinet_privilegios (
    id_privilegios INTEGER(10) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    PRIMARY KEY (id_privilegios),
    UNIQUE KEY IDX_sirinet_privilegios1(id_privilegios)
);

CREATE TABLE sirinet_usuarios_privilegios (
    id_usuarios_privilegios INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_usuarios INTEGER(10) NOT NULL,
    id_privilegios INTEGER(10) NOT NULL,
    PRIMARY KEY (id_usuarios_privilegios, id_usuarios, id_privilegios),
    KEY IDX_sirinet_usuarios_privilegios1(id_usuarios),
    KEY IDX_sirinet_usuarios_privilegios2(id_privilegios)
);

CREATE TABLE sirinet_recur_tipousu_privi (
    id_recur_tipousu_privi INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_privilegios INTEGER(10) NOT NULL,
    id_recursos_tipousuarios INTEGER(10) NOT NULL,
    PRIMARY KEY (id_recur_tipousu_privi, id_privilegios, id_recursos_tipousuarios),
    KEY IDX_sirinet_recur_tipousu_privi1(id_privilegios),
    KEY IDX_sirinet_recur_tipousu_privi2(id_recursos_tipousuarios)
);

CREATE TABLE sirinet_desa_usu_aplica (
    id_desa_usu_aplica INTEGER(10) NOT NULL AUTO_INCREMENT,
    id_usuarios INTEGER(10) NOT NULL,
    id_aplicacion INTEGER(10) NOT NULL,
    PRIMARY KEY (id_desa_usu_aplica, id_usuarios, id_aplicacion),
    KEY IDX_sirinet_desa_usu_aplica1(id_usuarios),
    KEY IDX_sirinet_desa_usu_aplica2(id_aplicacion)
);

#========================================================================== #
#  Foreign Keys                                                             #
#========================================================================== #

ALTER TABLE sirinet_empresa
    ADD FOREIGN KEY (id_aplicacion) REFERENCES sirinet_aplicacion (id_aplicacion);

ALTER TABLE sirinet_sucursales
    ADD FOREIGN KEY (id_empresa) REFERENCES sirinet_empresa (id_empresa);

ALTER TABLE sirinet_telefonos
    ADD FOREIGN KEY (id_sucursal) REFERENCES sirinet_sucursales (id_sucursal);

ALTER TABLE sirinet_usuarios
    ADD FOREIGN KEY (id_tipousuario) REFERENCES sirinet_tipousuarios (id_tipousuarios);

ALTER TABLE sirinet_usuarios
    ADD FOREIGN KEY (id_sucursal) REFERENCES sirinet_sucursales (id_sucursal);

ALTER TABLE sirinet_recursos_tipousuarios
    ADD FOREIGN KEY (id_recursos) REFERENCES sirinet_recursos (id_recursos);

ALTER TABLE sirinet_recursos_tipousuarios
    ADD FOREIGN KEY (id_tipousuarios) REFERENCES sirinet_tipousuarios (id_tipousuarios);

ALTER TABLE sirinet_recursos
    ADD FOREIGN KEY (id_aplicacion) REFERENCES sirinet_aplicacion (id_aplicacion);

ALTER TABLE sirinet_tipousuarios
    ADD FOREIGN KEY (id_aplicacion) REFERENCES sirinet_aplicacion (id_aplicacion);

ALTER TABLE sirinet_usuarios_privilegios
    ADD FOREIGN KEY (id_usuarios) REFERENCES sirinet_usuarios (id_usuarios);

ALTER TABLE sirinet_usuarios_privilegios
    ADD FOREIGN KEY (id_privilegios) REFERENCES sirinet_privilegios (id_privilegios);

ALTER TABLE sirinet_recur_tipousu_privi
    ADD FOREIGN KEY (id_privilegios) REFERENCES sirinet_privilegios (id_privilegios);

ALTER TABLE sirinet_recur_tipousu_privi
    ADD FOREIGN KEY (id_recursos_tipousuarios) REFERENCES sirinet_recursos_tipousuarios (id_recursos_tipousuarios);

ALTER TABLE sirinet_desa_usu_aplica
    ADD FOREIGN KEY (id_usuarios) REFERENCES sirinet_usuarios (id_usuarios);

ALTER TABLE sirinet_desa_usu_aplica
    ADD FOREIGN KEY (id_aplicacion) REFERENCES sirinet_aplicacion (id_aplicacion);
