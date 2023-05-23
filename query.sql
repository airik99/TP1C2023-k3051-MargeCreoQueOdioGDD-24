USE GD1C2023
GO

/*********************** Limpiar tablas ***********************/
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuentoxreclamo')
DROP TABLE MargeCreoQueOdioGDD.descuentoxreclamo;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuentoxpedido')
DROP TABLE MargeCreoQueOdioGDD.descuentoxpedido;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'productoxpedido')
DROP TABLE MargeCreoQueOdioGDD.productoxpedido;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'horarioxdia')
DROP TABLE MargeCreoQueOdioGDD.horarioxdia;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'reclamo')
DROP TABLE MargeCreoQueOdioGDD.reclamo;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'cupon_descuento')
DROP TABLE MargeCreoQueOdioGDD.cupon_descuento;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'pedido')
DROP TABLE MargeCreoQueOdioGDD.pedido;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'producto')
DROP TABLE MargeCreoQueOdioGDD.producto;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'horario_local')
DROP TABLE MargeCreoQueOdioGDD.horario_local;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'envio_mensajeria')
DROP TABLE MargeCreoQueOdioGDD.envio_mensajeria;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_paquete')
DROP TABLE MargeCreoQueOdioGDD.tipo_paquete

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'medio_de_pago')
DROP TABLE MargeCreoQueOdioGDD.medio_de_pago;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'envio')
DROP TABLE MargeCreoQueOdioGDD.envio;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'local')
DROP TABLE MargeCreoQueOdioGDD.local;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'operador')
DROP TABLE MargeCreoQueOdioGDD.operador;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'usuario')
DROP TABLE MargeCreoQueOdioGDD.usuario;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'repartidor')
DROP TABLE MargeCreoQueOdioGDD.repartidor;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'direccion')
DROP TABLE MargeCreoQueOdioGDD.direccion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'categoria_local')
DROP TABLE MargeCreoQueOdioGDD.categoria_local;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'localidad')
DROP TABLE MargeCreoQueOdioGDD.localidad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_movilidad')
DROP TABLE MargeCreoQueOdioGDD.tipo_movilidad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estado_mensajeria')
DROP TABLE MargeCreoQueOdioGDD.estado_mensajeria;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estado_pedido')
DROP TABLE MargeCreoQueOdioGDD.estado_pedido;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_cupon')
DROP TABLE MargeCreoQueOdioGDD.tipo_cupon;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_medio_pago')
DROP TABLE MargeCreoQueOdioGDD.tipo_medio_pago

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_reclamo')
DROP TABLE MargeCreoQueOdioGDD.tipo_reclamo

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estado_reclamo')
DROP TABLE MargeCreoQueOdioGDD.estado_reclamo

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'provincia')
DROP TABLE MargeCreoQueOdioGDD.provincia

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'dia')
DROP TABLE MargeCreoQueOdioGDD.dia

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_local')
DROP TABLE MargeCreoQueOdioGDD.tipo_local

/*********************** Limpiar Store Procedures ***********************/
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_medio_pagos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_medio_pagos;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_reclamos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_reclamos;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_paquetes')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_paquetes;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_local')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_local;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_cupon')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_cupon;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_movilidad')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_movilidad;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_provincias')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_provincias;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_localidades')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_localidades;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_direcciones')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_direcciones;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_estados_reclamos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_estados_reclamos;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_estados_mensajeria')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_estados_mensajeria;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_estados_pedido')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_estados_pedido;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dias')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_dias;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_usuarios')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_usuarios;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_repartidores')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_repartidores;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_operadores')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_operadores;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_medio_pagos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipo_medio_pagos;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_reclamos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipo_reclamos;
GO

/*********************** Limpiar Schema ***********************/
IF EXISTS (SELECT name FROM sys.schemas WHERE name = 'MargeCreoQueOdioGDD')
BEGIN
	DROP SCHEMA MargeCreoQueOdioGDD
END
GO

/*********************** Creacion de Schema ***********************/
CREATE SCHEMA MargeCreoQueOdioGDD;
GO

/*********************** Creacion de tablas ***********************/

-------------------------- USUARIO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.usuario (
ID_USUARIO INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
APELLIDO NVARCHAR(255),
DNI NVARCHAR(255),
FECHA_REGISTRO DATETIME,
TELEFONO NVARCHAR(255),
EMAIL NVARCHAR(255),
ID_DIRECCION INT NOT NULL, --FK
FECHA_NACIMIENTO DATE,
PRIMARY KEY (ID_USUARIO)
);

-------------------------- LOCAL --------------------------
CREATE TABLE MargeCreoQueOdioGDD.local (
ID_LOCAL INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
DESCRIPCION NVARCHAR(255),
ID_DIRECCION INT NOT NULL, --FK
ID_CATEGORIA INT NOT NULL, --FK
PRIMARY KEY (ID_LOCAL)
);

CREATE TABLE MargeCreoQueOdioGDD.categoria_local (
ID_CATEGORIA INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
ID_TIPO INT NOT NULL, --FK
PRIMARY KEY (ID_CATEGORIA)
);

CREATE TABLE MargeCreoQueOdioGDD.tipo_local (
ID_TIPO INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
PRIMARY KEY (ID_TIPO)
);

CREATE TABLE MargeCreoQueOdioGDD.horario_local (
ID_HORARIO_LOCAL INT IDENTITY(1,1), --PK
DIA NVARCHAR(255),
HORA_APERTURA TIME,
HORA_CIERRE TIME,
ID_LOCAL INT NOT NULL, --FK
PRIMARY KEY (ID_HORARIO_LOCAL)
);

CREATE TABLE MargeCreoQueOdioGDD.horarioxdia (
ID_DIA INT NOT NULL, --FK
ID_HORARIO_LOCAL INT NOT NULL, --FK
);

CREATE TABLE MargeCreoQueOdioGDD.dia (
ID_DIA INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
PRIMARY KEY (ID_DIA)
);

-------------------------- PEDIDO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.pedido (
NRO_PEDIDO INT NOT NULL, --PK
FECHA_HORA_PEDIDO DATETIME NOT NULL,
FECHA_HORA_ENTREGA DATETIME,
ID_USUARIO INT NOT NULL, --FK
ID_LOCAL INT NOT NULL, --FK
ID_MEDIO_DE_PAGO INT NOT NULL, --FK
ID_ENVIO INT NOT NULL, --FK
ID_ESTADO INT NOT NULL, --FK
TARIFA_SERVICIO FLOAT NOT NULL,
TOTAL_PRODUCTOS FLOAT NOT NULL,
TOTAL_CUPONES FLOAT NOT NULL,
TOTAL_SERVICIO FLOAT NOT NULL,
TOTAL_PEDIDO FLOAT NOT NULL,
CALIFICACION DECIMAL(5,1),
OBSERVACIONES NVARCHAR(255),
PRIMARY KEY (NRO_PEDIDO)
);

CREATE TABLE MargeCreoQueOdioGDD.productoxpedido (
ID_PEDIDO INT NOT NULL, --FK
ID_PRODUCTO INT NOT NULL, --FK
CANTIDAD INT,
PRECIO_UNITARIO FLOAT
);

CREATE TABLE MargeCreoQueOdioGDD.producto (
CODIGO_PRODUCTO INT IDENTITY(1,1), --PK
ID_LOCAL INT NOT NULL, --FK
NOMBRE NVARCHAR(255),
DESCRIPCION NVARCHAR(255),
PRECIO FLOAT,
PRIMARY KEY (CODIGO_PRODUCTO)
);

CREATE TABLE MargeCreoQueOdioGDD.estado_pedido(
ID_ESTADO INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255) NOT NULL,
PRIMARY KEY (ID_ESTADO)
);

-------------------------- CUPON DE DESCUENTO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.cupon_descuento (
CODIGO INT NOT NULL, --PK
ID_USUARIO INT NOT NULL, --FK
MONTO FLOAT,
ID_TIPO_CUPON INT NOT NULL, --FK
FECHA_ALTA DATETIME,
FECHA_VENCIMIENTO DATETIME,
PRIMARY KEY (CODIGO)
);

CREATE TABLE MargeCreoQueOdioGDD.descuentoxreclamo (
ID_RECLAMO INT NOT NULL, --FK
ID_CUPON INT NOT NULL, --FK
);

CREATE TABLE MargeCreoQueOdioGDD.tipo_cupon (
ID_TIPO INT IDENTITY(1,1), --PK
TIPO_CUPON NVARCHAR(255),
PRIMARY KEY (ID_TIPO)
);

CREATE TABLE MargeCreoQueOdioGDD.descuentoxpedido (
ID_PEDIDO INT NOT NULL, --FK
ID_CUPON INT NOT NULL, --FK
);

-------------------------- MEDIO DE PAGO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.medio_de_pago (
ID_MEDIO_PAGO INT IDENTITY(1,1), --PK
ID_TIPO_MEDIO_PAGO INT NOT NULL, --FK
NUMERO_TARJETA NVARCHAR(255),
ID_USUARIO INT NOT NULL, --FK
MARCA NVARCHAR(255),
PRIMARY KEY (ID_MEDIO_PAGO)
);

CREATE TABLE MargeCreoQueOdioGDD.tipo_medio_pago (
ID_TIPO INT IDENTITY(1,1), --PK
TIPO_PAGO NVARCHAR(255),
PRIMARY KEY (ID_TIPO)
);

-------------------------- ENVIO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.envio (
NRO_ENVIO INT IDENTITY(1,1), --PK
ID_DIRECCION_DESTINO INT NOT NULL, --FK
PRECIO_ENVIO FLOAT,
TIEMPO_ESTIMADO_ENTREGA TIME,
PROPINA FLOAT,
ID_REPARTIDOR INT NOT NULL, --FK
PRIMARY KEY (NRO_ENVIO)
);

-------------------------- REPARTIDOR --------------------------
CREATE TABLE MargeCreoQueOdioGDD.repartidor (
ID_REPARTIDOR INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
APELLIDO NVARCHAR(255),
DNI NVARCHAR(255),
TELEFONO NVARCHAR(255),
EMAIL NVARCHAR(255),
ID_DIRECCION INT NOT NULL, --FK
FECHA_NACIMIENTO DATE,
ID_LOCALIDAD INT NOT NULL, --FK
ID_TIPO_MOVILIDAD INT NOT NULL, --FK
PRIMARY KEY (ID_REPARTIDOR)
);

CREATE TABLE MargeCreoQueOdioGDD.tipo_movilidad (
ID_TIPO INT IDENTITY(1,1), --PK
TIPO_MOVILIDAD NVARCHAR(255),
PRIMARY KEY (ID_TIPO)
);

-------------------------- DIRECCION --------------------------
CREATE TABLE MargeCreoQueOdioGDD.direccion (
ID_DIRECCION INT IDENTITY(1,1), --PK
ID_LOCALIDAD INT NOT NULL, --FK
NOMBRE_DIRECCION NVARCHAR(255),
CALLE NVARCHAR(255) NOT NULL,
NUMERO INT NOT NULL,
PRIMARY KEY (ID_DIRECCION)
);

CREATE TABLE MargeCreoQueOdioGDD.localidad (
ID_LOCALIDAD INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255) NOT NULL,
ID_PROVINCIA INT NOT NULL, --FK
PRIMARY KEY (ID_LOCALIDAD)
);

CREATE TABLE MargeCreoQueOdioGDD.provincia (
ID_PROVINCIA INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255) NOT NULL,
PRIMARY KEY (ID_PROVINCIA)
);

-------------------------- ENVIO MENSAJERIA --------------------------
CREATE TABLE MargeCreoQueOdioGDD.envio_mensajeria(
NRO_ENVIO_MENSAJERIA INT NOT NULL, --PK
ID_USUARIO INT NOT NULL, --FK
ID_DIRECCION_ORIGEN INT NOT NULL, --FK
ID_MEDIO_PAGO INT NOT NULL, --FK
ID_TIPO_PAQUETE INT NOT NULL, --FK
ID_ENVIO INT NOT NULL, --FK
ID_ESTADO INT NOT NULL, --FK
FECHA_HORA_PEDIDO DATETIME,
FECHA_HORA_ENTREGA DATETIME,
DISTANCIA_KMS INT NOT NULL,
CALIFICACION DECIMAL(5,1),
OBSERVACIONES NVARCHAR(255),
PRECIO_POR_SEGURO FLOAT NOT NULL,
TOTAL_SERVICIO_MENSAJERIA FLOAT NOT NULL,
PRIMARY KEY (NRO_ENVIO_MENSAJERIA)
);

CREATE TABLE MargeCreoQueOdioGDD.estado_mensajeria(
ID_ESTADO INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255) NOT NULL,
PRIMARY KEY (ID_ESTADO)
);


CREATE TABLE MargeCreoQueOdioGDD.tipo_paquete (
ID_TIPO_PAQUETE INT IDENTITY(1,1), --PK
TIPO_PAQUETE NVARCHAR(255),
MEDIDA_ANCHO INT,
MEDIDA_LARGO INT,
MEDIDA_ALTO INT,
PESO_MAXIMO FLOAT,
VALOR_ASEGURADO FLOAT,
PRIMARY KEY(ID_TIPO_PAQUETE)
);


-------------------------- RECLAMO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.reclamo (
NRO_RECLAMO INT NOT NULL, --PK
ID_USUARIO INT NOT NULL, --FK
ID_PEDIDO INT NOT NULL, --FK
ID_OPERADOR INT NOT NULL, --FK
ID_ESTADO INT NOT NULL, --FK
DESCRIPCION NVARCHAR(255),
SOLUCION NVARCHAR(255),
ID_TIPO_RECLAMO INT NOT NULL, --FK
CALIFICACION DECIMAL(5,1),
FECHA_HORA_INICIO DATETIME,
FECHA_HORA_SOLUCION DATETIME,
PRIMARY KEY (NRO_RECLAMO)
);

CREATE TABLE MargeCreoQueOdioGDD.tipo_reclamo (
ID_TIPO_RECLAMO INT IDENTITY(1,1), --PK
TIPO_RECLAMO NVARCHAR(255),
PRIMARY KEY (ID_TIPO_RECLAMO)
);

CREATE TABLE MargeCreoQueOdioGDD.estado_reclamo (
ID_ESTADO INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.operador (
ID_OPERADOR INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
APELLIDO NVARCHAR(255),
DNI NVARCHAR(255),
FECHA_NACIMIENTO DATE,
EMAIL NVARCHAR(255),
ID_DIRECCION INT NOT NULL, --FK
TELEFONO NVARCHAR(255),
PRIMARY KEY (ID_OPERADOR)
);

/*********************** Agregamos las FKs ***********************/

-------------------------- USUARIO --------------------------
ALTER TABLE MargeCreoQueOdioGDD.usuario
ADD CONSTRAINT FK_DIRECCION_USUARIO
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion

-------------------------- LOCAL --------------------------
ALTER TABLE MargeCreoQueOdioGDD.local
ADD CONSTRAINT FK_DIRECCION_LOCAL
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.local
ADD CONSTRAINT FK_CATEGORIA_LOCAL
FOREIGN KEY (ID_CATEGORIA) REFERENCES MargeCreoQueOdioGDD.categoria_local

ALTER TABLE MargeCreoQueOdioGDD.categoria_local
ADD CONSTRAINT FK_TIPO_CATEGORIA_LOCAL
FOREIGN KEY (ID_TIPO) REFERENCES MargeCreoQueOdioGDD.tipo_local

-------------------------- HORARIO LOCAL --------------------------
ALTER TABLE MargeCreoQueOdioGDD.horario_local
ADD CONSTRAINT FK_LOCAL_HORARIO_LOCAL
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.local

ALTER TABLE MargeCreoQueOdioGDD.horarioxdia
ADD CONSTRAINT FK_DIA_HORARIOXDIA
FOREIGN KEY (ID_DIA) REFERENCES MargeCreoQueOdioGDD.dia

ALTER TABLE MargeCreoQueOdioGDD.horarioxdia
ADD CONSTRAINT FK_HORARIO_HORARIOXDIA
FOREIGN KEY (ID_HORARIO_LOCAL) REFERENCES MargeCreoQueOdioGDD.horario_local

-------------------------- PEDIDO --------------------------
ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_USUARIO_PEDIDO
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_ESTADO_PEDIDO
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado_pedido

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_LOCAL_PEDIDO
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.local

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_MEDIO_DE_PAGO_PEDIDO
FOREIGN KEY (ID_MEDIO_DE_PAGO) REFERENCES MargeCreoQueOdioGDD.medio_de_pago

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_ENVIO_PEDIDO
FOREIGN KEY (ID_ENVIO) REFERENCES MargeCreoQueOdioGDD.envio

-------------------------- ProductoXPedido --------------------------
ALTER TABLE MargeCreoQueOdioGDD.productoxpedido
ADD CONSTRAINT FK_PEDIDO_PRODUCTOXPEDIDO 
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.pedido 

ALTER TABLE MargeCreoQueOdioGDD.productoxpedido
ADD CONSTRAINT FK_PRODUCTO_PRODUCTOXPEDIDO 
FOREIGN KEY (ID_PRODUCTO) REFERENCES MargeCreoQueOdioGDD.producto

-------------------------- PRODUCTO --------------------------
ALTER TABLE MargeCreoQueOdioGDD.producto
ADD CONSTRAINT FK_LOCAL_PRODUCTO
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.local

-------------------------- CUPON DE DESCUENTO --------------------------
ALTER TABLE MargeCreoQueOdioGDD.cupon_descuento
ADD CONSTRAINT FK_USUARIO_CUPON_DESCUENTO
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

ALTER TABLE MargeCreoQueOdioGDD.cupon_descuento
ADD CONSTRAINT FK_TIPO_CUPON_CUPON_DESCUENTO
FOREIGN KEY (ID_TIPO_CUPON) REFERENCES MargeCreoQueOdioGDD.tipo_cupon

ALTER TABLE MargeCreoQueOdioGDD.descuentoxreclamo
ADD CONSTRAINT FK_RECLAMO_DESCUENTOXRECLAMO
FOREIGN KEY (ID_RECLAMO) REFERENCES MargeCreoQueOdioGDD.reclamo

ALTER TABLE MargeCreoQueOdioGDD.descuentoxreclamo
ADD CONSTRAINT FK_CUPON_DESCUENTOXRECLAMO
FOREIGN KEY (ID_CUPON) REFERENCES MargeCreoQueOdioGDD.cupon_descuento

ALTER TABLE MargeCreoQueOdioGDD.descuentoxpedido
ADD CONSTRAINT FK_PEDIDO_DESCUENTOXPEDIDO
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.pedido

ALTER TABLE MargeCreoQueOdioGDD.descuentoxpedido
ADD CONSTRAINT FK_CUPON_DESCUENTOXPEDIDO
FOREIGN KEY (ID_CUPON) REFERENCES MargeCreoQueOdioGDD.cupon_descuento

-------------------------- MEDIO DE PAGO --------------------------
ALTER TABLE MargeCreoQueOdioGDD.medio_de_pago
ADD CONSTRAINT FK_TIPO_MEDIO_PAGO_MEDIO_DE_PAGO
FOREIGN KEY (ID_TIPO_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.tipo_medio_pago

ALTER TABLE MargeCreoQueOdioGDD.medio_de_pago
ADD CONSTRAINT FK_USUARIO_MEDIO_DE_PAGO
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

-------------------------- ENVIO --------------------------
ALTER TABLE MargeCreoQueOdioGDD.envio
ADD CONSTRAINT FK_DIRECCION_ENVIO
FOREIGN KEY (ID_DIRECCION_DESTINO) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.envio
ADD CONSTRAINT FK_REPARTIDOR_ENVIO
FOREIGN KEY (ID_REPARTIDOR) REFERENCES MargeCreoQueOdioGDD.repartidor

-------------------------- REPARTIDOR --------------------------
ALTER TABLE MargeCreoQueOdioGDD.repartidor
ADD CONSTRAINT FK_DIRECCION_REPARTIDOR
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.repartidor
ADD CONSTRAINT FK_LOCALIDAD_REPARTIDOR
FOREIGN KEY (ID_LOCALIDAD) REFERENCES MargeCreoQueOdioGDD.localidad

ALTER TABLE MargeCreoQueOdioGDD.repartidor
ADD CONSTRAINT FK_MOVILIDAD_REPARTIDOR
FOREIGN KEY (ID_TIPO_MOVILIDAD) REFERENCES MargeCreoQueOdioGDD.tipo_movilidad

-------------------------- DIRECCION --------------------------
ALTER TABLE MargeCreoQueOdioGDD.direccion
ADD CONSTRAINT FK_LOCALIDAD_DIRECCION
FOREIGN KEY (ID_LOCALIDAD) REFERENCES MargeCreoQueOdioGDD.localidad

-------------------------- LOCALIDAD --------------------------
ALTER TABLE MargeCreoQueOdioGDD.localidad
ADD CONSTRAINT FK_PROVINCIA_LOCALIDAD
FOREIGN KEY (ID_PROVINCIA) REFERENCES MargeCreoQueOdioGDD.provincia

-------------------------- ENVIO MENSAJERIA --------------------------
ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_USUARIO_ENVIO_MENSAJERIA
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_ESTADO_SERVICIO_MENSAJERIA
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado_mensajeria

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_DIRECCION_ENVIO_MENSAJERIA
FOREIGN KEY (ID_DIRECCION_ORIGEN) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_MEDIO_DE_PAGO_ENVIO_MENSAJERIA
FOREIGN KEY (ID_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.medio_de_pago

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_TIPO_PAQUETE_ENVIO_MENSAJERIA
FOREIGN KEY (ID_TIPO_PAQUETE) REFERENCES MargeCreoQueOdioGDD.tipo_paquete

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_ENVIO_ENVIO_MENSAJERIA
FOREIGN KEY (ID_ENVIO) REFERENCES MargeCreoQueOdioGDD.envio
-------------------------- RECLAMO --------------------------
ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_USUARIO_RECLAMO 
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario;

ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_ESTADO_RECLAMO
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado_reclamo

ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_PEDIDO_RECLAMO  
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.pedido;

ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_OPERADOR_RECLAMO  
FOREIGN KEY (ID_OPERADOR) REFERENCES MargeCreoQueOdioGDD.operador;

ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_TIPO_RECLAMO_RECLAMO  
FOREIGN KEY (ID_TIPO_RECLAMO) REFERENCES MargeCreoQueOdioGDD.tipo_reclamo;

-------------------------- OPERADOR --------------------------
ALTER TABLE MargeCreoQueOdioGDD.operador
ADD CONSTRAINT FK_DIRECCION_OPERADOR
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion
GO

/*********************** Creamos los stores procedures ***********************/

---------------------------- Tipo Medio Pago ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_medio_pagos
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los tipos de medios de pagos...'
    INSERT INTO tipo_medio_pago(TIPO_PAGO)
		SELECT DISTINCT Maestra.MEDIO_PAGO_TIPO
		FROM gd_esquema.Maestra
		WHERE MEDIO_PAGO_TIPO IS NOT NULL
  END
GO

--select * from MargeCreoQueOdioGDD.tipo_medio_pago; -- para ver lo que se migró
---------------------------- Tipo Reclamo ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_reclamos
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los tipos de reclamos...'
    INSERT INTO tipo_reclamo(TIPO_RECLAMO)
		SELECT DISTINCT Maestra.RECLAMO_TIPO 
		FROM gd_esquema.Maestra 
		WHERE RECLAMO_TIPO IS NOT NULL
  END
GO

--select * from MargeCreoQueOdioGDD.tipo_reclamo;
---------------------------- Estado Reclamo ----------------------------

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_estados_reclamos
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los estados de los reclamos...'
    INSERT INTO estado_reclamo(NOMBRE)
		SELECT DISTINCT Maestra.RECLAMO_ESTADO
		FROM gd_esquema.Maestra 
		WHERE RECLAMO_ESTADO IS NOT NULL
  END
GO

--select * from MargeCreoQueOdioGDD.estado_reclamo;
---------------------------- Tipo Paquete ----------------------------

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_paquetes
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los tipos de los paquetes...'
    INSERT INTO tipo_paquete(TIPO_PAQUETE, MEDIDA_ANCHO, MEDIDA_LARGO, MEDIDA_ALTO, PESO_MAXIMO, VALOR_ASEGURADO)
		SELECT DISTINCT PAQUETE_TIPO, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX,PAQUETE_ALTO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO
		FROM gd_esquema.Maestra 
		WHERE PAQUETE_TIPO IS NOT NULL
  END
GO

--select * from MargeCreoQueOdioGDD.tipo_paquete;
---------------------------- Estado Mensajeria ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_estados_mensajeria
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los estados de los envios mensajeria...'
    INSERT INTO estado_mensajeria(NOMBRE)
		SELECT DISTINCT ENVIO_MENSAJERIA_ESTADO
		FROM gd_esquema.Maestra 
		WHERE ENVIO_MENSAJERIA_ESTADO IS NOT NULL
  END
GO

--select * from MargeCreoQueOdioGDD.estado_mensajeria;
---------------------------- Dia ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_dias
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los estados de los dias...'
    INSERT INTO dia(NOMBRE)
		SELECT DISTINCT HORARIO_LOCAL_DIA
		FROM gd_esquema.Maestra 
		WHERE HORARIO_LOCAL_DIA IS NOT NULL
  END
GO

--select * from MargeCreoQueOdioGDD.dia;
---------------------------- Tipo Local ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_local
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los estados de los tipos de los locales...'
    INSERT INTO tipo_local(NOMBRE)
		SELECT DISTINCT LOCAL_TIPO
		FROM gd_esquema.Maestra 
		WHERE LOCAL_TIPO IS NOT NULL
  END
GO

--select * from MargeCreoQueOdioGDD.tipo_local;
---------------------------- Tipo Cupon ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_cupon
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los tipos de los cupones...'
		INSERT INTO tipo_cupon(TIPO_CUPON)
		SELECT TIPO_CUPON
		FROM
		(
		 SELECT CUPON_TIPO AS TIPO_CUPON
		 FROM gd_esquema.Maestra
			WHERE CUPON_TIPO IS NOT NULL
		 UNION
		 SELECT CUPON_RECLAMO_TIPO AS TIPO_CUPON
		 FROM gd_esquema.Maestra
			WHERE CUPON_RECLAMO_TIPO IS NOT NULL
		) AS subquery
		WHERE TIPO_CUPON NOT IN (SELECT TIPO_CUPON FROM MargeCreoQueOdioGDD.tipo_cupon);
	END;
GO

--select * from MargeCreoQueOdioGDD.tipo_cupon;
---------------------------- Estado Pedido ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_estados_pedido
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los estados de los pedidos...'
		INSERT INTO estado_pedido(NOMBRE)
		SELECT DISTINCT PEDIDO_ESTADO
		FROM gd_esquema.Maestra 
		WHERE PEDIDO_ESTADO IS NOT NULL -- esto es raro o es un error, porque los datos que hay del estado del pedido dicen "envio mensajeria entregado", cuando es un pedido, no un envio mensajeria
	END;
GO

--select * from MargeCreoQueOdioGDD.estado_pedido;
---------------------------- Tipo Movilidad ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_movilidad
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los tipos de movilidad de los repartidores...'
		INSERT INTO tipo_movilidad(TIPO_MOVILIDAD)
		SELECT DISTINCT REPARTIDOR_TIPO_MOVILIDAD
		FROM gd_esquema.Maestra 
		WHERE REPARTIDOR_TIPO_MOVILIDAD IS NOT NULL 
	END;
GO

--select * from MargeCreoQueOdioGDD.tipo_movilidad;
---------------------------- Provincia ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_provincias
AS
	BEGIN
		PRINT 'Se comienzan a migrar las provincias...'
		INSERT INTO MargeCreoQueOdioGDD.provincia (NOMBRE)
		SELECT NOMBRE
		FROM
		(
		 SELECT ENVIO_MENSAJERIA_PROVINCIA AS NOMBRE
		 FROM gd_esquema.Maestra
			WHERE ENVIO_MENSAJERIA_PROVINCIA IS NOT NULL
		 UNION
		 SELECT DIRECCION_USUARIO_PROVINCIA AS NOMBRE
		 FROM gd_esquema.Maestra
			WHERE DIRECCION_USUARIO_PROVINCIA IS NOT NULL
		 UNION
		 SELECT LOCAL_PROVINCIA AS NOMBRE
		 FROM gd_esquema.Maestra
			 WHERE LOCAL_PROVINCIA IS NOT NULL
		) AS subquery
		WHERE NOMBRE NOT IN (SELECT NOMBRE FROM MargeCreoQueOdioGDD.provincia);
	END;
GO

--select * from MargeCreoQueOdioGDD.provincia;
---------------------------- Localidad ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_localidades
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las localidades...'
    INSERT INTO localidad (NOMBRE, ID_PROVINCIA)

		SELECT NOMBRE, ID_PROVINCIA
		FROM
		(SELECT DISTINCT(ENVIO_MENSAJERIA_LOCALIDAD) AS NOMBRE,
				(SELECT provincia.ID_PROVINCIA FROM provincia WHERE provincia.NOMBRE = Maestra.ENVIO_MENSAJERIA_PROVINCIA) AS ID_PROVINCIA
		 FROM gd_esquema.Maestra
		 WHERE ENVIO_MENSAJERIA_LOCALIDAD IS NOT NULL
		 UNION
		 SELECT DISTINCT(DIRECCION_USUARIO_LOCALIDAD) AS NOMBRE,
				(SELECT provincia.ID_PROVINCIA FROM provincia WHERE provincia.NOMBRE = Maestra.DIRECCION_USUARIO_PROVINCIA) AS ID_PROVINCIA
		 FROM gd_esquema.Maestra
		 WHERE DIRECCION_USUARIO_LOCALIDAD IS NOT NULL
		 UNION
		 SELECT DISTINCT(LOCAL_LOCALIDAD) AS NOMBRE,
				(SELECT provincia.ID_PROVINCIA FROM provincia WHERE provincia.NOMBRE = Maestra.LOCAL_PROVINCIA) AS ID_PROVINCIA
		 FROM gd_esquema.Maestra
		 WHERE LOCAL_LOCALIDAD IS NOT NULL) AS subquery
		 WHERE NOMBRE NOT IN (SELECT NOMBRE FROM MargeCreoQueOdioGDD.localidad);

		PRINT '¡La migracion de LOCALIDADES finalizó con éxito!'
  END
GO

--select * from MargeCreoQueOdioGDD.localidad join MargeCreoQueOdioGDD.provincia on (localidad.ID_PROVINCIA = provincia.ID_PROVINCIA)
---------------------------- Direccion ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_direcciones
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las direcciones...'

    INSERT INTO direccion (ID_LOCALIDAD, NOMBRE_DIRECCION, CALLE, NUMERO)

		SELECT ID_LOCALIDAD, NOMBRE_DIRECCION, CALLE, NUMERO
		FROM (SELECT (SELECT localidad.ID_LOCALIDAD FROM localidad WHERE localidad.NOMBRE = DIRECCION_USUARIO_LOCALIDAD) AS ID_LOCALIDAD,
					  DIRECCION_USUARIO_NOMBRE AS NOMBRE_DIRECCION,
					  RTRIM(SUBSTRING(DIRECCION_USUARIO_DIRECCION, 1, (LEN(DIRECCION_USUARIO_DIRECCION) - 4))) AS CALLE, 
					  LTRIM(RIGHT(DIRECCION_USUARIO_DIRECCION, 4)) AS NUMERO
			  FROM gd_esquema.Maestra
			  WHERE DIRECCION_USUARIO_DIRECCION IS NOT NULL
			  UNION
			  SELECT (SELECT localidad.ID_LOCALIDAD FROM localidad WHERE localidad.NOMBRE = ENVIO_MENSAJERIA_LOCALIDAD) AS ID_LOCALIDAD,
					  '' AS NOMBRE_DIRECCION,
					  RTRIM(SUBSTRING(ENVIO_MENSAJERIA_DIR_ORIG, 1, (LEN(ENVIO_MENSAJERIA_DIR_ORIG) - 4))) AS CALLE, 
					  LTRIM(RIGHT(ENVIO_MENSAJERIA_DIR_ORIG, 4)) AS NUMERO
			  FROM gd_esquema.Maestra
			  WHERE ENVIO_MENSAJERIA_DIR_ORIG IS NOT NULL
			  UNION
			  SELECT (SELECT localidad.ID_LOCALIDAD FROM localidad WHERE localidad.NOMBRE = ENVIO_MENSAJERIA_LOCALIDAD) AS ID_LOCALIDAD,
					  '' AS NOMBRE_DIRECCION,
					  RTRIM(SUBSTRING(ENVIO_MENSAJERIA_DIR_DEST, 1, (LEN(ENVIO_MENSAJERIA_DIR_DEST) - 4))) AS CALLE, 
					  LTRIM(RIGHT(ENVIO_MENSAJERIA_DIR_DEST, 4)) AS NUMERO
			  FROM gd_esquema.Maestra
			  WHERE ENVIO_MENSAJERIA_DIR_DEST IS NOT NULL
			  UNION
			  SELECT (SELECT localidad.ID_LOCALIDAD FROM localidad WHERE localidad.NOMBRE = LOCAL_LOCALIDAD) AS ID_LOCALIDAD,
					 '' AS NOMBRE_DIRECCION,
					 RTRIM(SUBSTRING(OPERADOR_RECLAMO_DIRECCION, 1, (LEN(OPERADOR_RECLAMO_DIRECCION) - 4))) AS CALLE, 
					 LTRIM(RIGHT(OPERADOR_RECLAMO_DIRECCION, 4)) AS NUMERO
			  FROM gd_esquema.Maestra
			  WHERE OPERADOR_RECLAMO_DIRECCION IS NOT NULL
			  UNION
			  SELECT (SELECT localidad.ID_LOCALIDAD FROM localidad
					  WHERE localidad.NOMBRE = (SELECT CASE WHEN ENVIO_MENSAJERIA_LOCALIDAD IS NOT NULL THEN ENVIO_MENSAJERIA_LOCALIDAD
															WHEN LOCAL_LOCALIDAD IS NOT NULL THEN LOCAL_LOCALIDAD
													   END AS REPARTIDOR_LOCALIDAD)) AS ID_LOCALIDAD,
					 '' AS NOMBRE_DIRECCION,
					 RTRIM(SUBSTRING(REPARTIDOR_DIRECION, 1, (LEN(REPARTIDOR_DIRECION) - 4))) AS CALLE, 
					 LTRIM(RIGHT(REPARTIDOR_DIRECION, 4)) AS NUMERO
			  FROM gd_esquema.Maestra
			  WHERE OPERADOR_RECLAMO_DIRECCION IS NOT NULL) AS subquery
		WHERE CONCAT(CALLE, ' ', NUMERO) NOT IN (SELECT CONCAT(CALLE, ' ', NUMERO) FROM MargeCreoQueOdioGDD.direccion)
		
		PRINT '¡La migracion de DIRECCIONES finalizó con éxito!'

  END
GO

--select * from MargeCreoQueOdioGDD.direccion
---------------------------- Usuario ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_usuarios
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los usuarios...'
    INSERT INTO usuario (NOMBRE, APELLIDO, DNI, FECHA_REGISTRO, TELEFONO, EMAIL, FECHA_NACIMIENTO, ID_DIRECCION)
		SELECT USUARIO_NOMBRE AS NOMBRE, 
		USUARIO_APELLIDO AS APELLIDO,
		USUARIO_DNI AS DNI,
		USUARIO_FECHA_REGISTRO AS FECHA_REGISTRO,
		USUARIO_TELEFONO AS TELEFONO, 
		USUARIO_MAIL AS EMAIL,
		USUARIO_FECHA_NAC AS FECHA_NACIMIENTO,
		(SELECT direccion.ID_DIRECCION FROM direccion 
		WHERE direccion.NOMBRE_DIRECCION = DIRECCION_USUARIO_NOMBRE AND
			  direccion.CALLE = RTRIM(SUBSTRING(DIRECCION_USUARIO_DIRECCION, 1, (LEN(DIRECCION_USUARIO_DIRECCION) - 4))) AND
			  direccion.NUMERO = LTRIM(RIGHT(DIRECCION_USUARIO_DIRECCION, 4)) AND
			  direccion.ID_LOCALIDAD = (SELECT localidad.ID_LOCALIDAD FROM MargeCreoQueOdioGDD.localidad WHERE localidad.NOMBRE = DIRECCION_USUARIO_LOCALIDAD)) AS ID_DIRECCION
		FROM gd_esquema.Maestra
		WHERE USUARIO_MAIL NOT IN (SELECT EMAIL FROM MargeCreoQueOdioGDD.usuario)

		PRINT '¡La migracion de USUARIOS finalizó con éxito!'
  END
GO

--SELECT * FROM MargeCreoQueOdioGDD.usuario
---------------------------- Repartidor ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_repartidores
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los repartidores...'
    INSERT INTO repartidor (NOMBRE, APELLIDO, DNI, TELEFONO, EMAIL, ID_DIRECCION, FECHA_NACIMIENTO, ID_LOCALIDAD, ID_TIPO_MOVILIDAD)

		SELECT REPARTIDOR_NOMBRE AS NOMBRE,
			   REPARTIDOR_APELLIDO AS APELLIDO,
			   REPARTIDOR_DNI AS DNI,
			   REPARTIDOR_TELEFONO AS TELEFONO,
			   REPARTIDOR_EMAIL AS EMAIL,
			   (SELECT direccion.ID_DIRECCION FROM direccion 
			   WHERE direccion.CALLE = RTRIM(SUBSTRING(REPARTIDOR_DIRECION, 1, (LEN(REPARTIDOR_DIRECION) - 4))) AND
					 direccion.NUMERO = LTRIM(RIGHT(REPARTIDOR_DIRECION, 4))) AS ID_DIRECCION,
			   REPARTIDOR_FECHA_NAC AS FECHA_NACIMIENTO,
			   (SELECT localidad.ID_LOCALIDAD FROM localidad
				WHERE localidad.NOMBRE = (SELECT CASE WHEN ENVIO_MENSAJERIA_LOCALIDAD IS NOT NULL THEN ENVIO_MENSAJERIA_LOCALIDAD
													  WHEN LOCAL_LOCALIDAD IS NOT NULL THEN LOCAL_LOCALIDAD
												 END AS REPARTIDOR_LOCALIDAD)) AS ID_LOCALIDAD,
			   (SELECT tipo_movilidad.ID_TIPO FROM tipo_movilidad WHERE tipo_movilidad.TIPO_MOVILIDAD = REPARTIDOR_TIPO_MOVILIDAD) AS ID_TIPO_MOVIMIENTO
		FROM gd_esquema.Maestra
		WHERE REPARTIDOR_EMAIL NOT IN (SELECT EMAIL FROM MargeCreoQueOdioGDD.repartidor)

		PRINT '¡La migracion de REPARTIDORES finalizó con éxito!'
  END
GO

--select * from MargeCreoQueOdioGDD.repartidor
---------------------------- Operador ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_operadores
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los operadores...'
    INSERT INTO operador (NOMBRE, APELLIDO, DNI, FECHA_NACIMIENTO, EMAIL, ID_DIRECCION, TELEFONO)

		SELECT OPERADOR_RECLAMO_NOMBRE AS NOMBRE,
			   OPERADOR_RECLAMO_APELLIDO AS APELLIDO,
			   OPERADOR_RECLAMO_DNI AS DNI,
			   OPERADOR_RECLAMO_FECHA_NAC AS FECHA_NACIMIENTO,
			   OPERADOR_RECLAMO_MAIL AS EMAIL,
			   (SELECT direccion.ID_DIRECCION FROM direccion 
			   WHERE direccion.CALLE = RTRIM(SUBSTRING(OPERADOR_RECLAMO_DIRECCION, 1, (LEN(REPARTIDOR_DIRECION) - 4))) AND
					 direccion.NUMERO = LTRIM(RIGHT(OPERADOR_RECLAMO_DIRECCION, 4))) AS ID_DIRECCION,
			   OPERADOR_RECLAMO_TELEFONO AS TELEFONO
		FROM gd_esquema.Maestra
		WHERE OPERADOR_RECLAMO_MAIL NOT IN (SELECT EMAIL FROM MargeCreoQueOdioGDD.operador)

		PRINT '¡La migracion de OPERADORES finalizó con éxito!'
  END
GO

--select * from MargeCreoQueOdioGDD.operador
/*********************** Realizamos la ejecución de los stores procedures ***********************/

EXEC MargeCreoQueOdioGDD.migrar_tipos_medio_pagos;
EXEC MargeCreoQueOdioGDD.migrar_tipos_reclamos;
EXEC MargeCreoQueOdioGDD.migrar_tipos_paquetes;
EXEC MargeCreoQueOdioGDD.migrar_tipos_local;
EXEC MargeCreoQueOdioGDD.migrar_tipos_cupon;
EXEC MargeCreoQueOdioGDD.migrar_tipos_movilidad;
EXEC MargeCreoQueOdioGDD.migrar_provincias;
EXEC MargeCreoQueOdioGDD.migrar_localidades;
EXEC MargeCreoQueOdioGDD.migrar_direcciones;
EXEC MargeCreoQueOdioGDD.migrar_estados_pedido;
EXEC MargeCreoQueOdioGDD.migrar_estados_reclamos;
EXEC MargeCreoQueOdioGDD.migrar_estados_mensajeria;
EXEC MargeCreoQueOdioGDD.migrar_dias;
EXEC MargeCreoQueOdioGDD.migrar_usuarios;
EXEC MargeCreoQueOdioGDD.migrar_repartidores;
EXEC MargeCreoQueOdioGDD.migrar_operadores;
