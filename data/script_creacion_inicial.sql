USE GD1C2023
GO

/*********************** Limpiar tablas ***********************/
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'localidadxrepartidor')
DROP TABLE MargeCreoQueOdioGDD.localidadxrepartidor;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuentoxreclamo')
DROP TABLE MargeCreoQueOdioGDD.descuentoxreclamo;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuentoxpedido')
DROP TABLE MargeCreoQueOdioGDD.descuentoxpedido;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'productoxpedido')
DROP TABLE MargeCreoQueOdioGDD.productoxpedido;

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

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'direccionxusuario')
DROP TABLE MargeCreoQueOdioGDD.direccionxusuario;

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

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_locales')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_locales;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_medios_de_pago')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_medios_de_pago;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_horarios_local')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_horarios_local;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_envios')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_envios;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_productos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_productos;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_envios_mensajeria')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_envios_mensajeria;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_pedidos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_pedidos;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_envio_mensajeria')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_envio_mensajeria;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_reclamos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_reclamos;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_cupones_descuento')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_cupones_descuento;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_descuentos_x_pedido')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_descuentos_x_pedido;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_descuentos_x_reclamo')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_descuentos_x_reclamo;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_productos_x_pedido')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_productos_x_pedido;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_localidades_x_repartidor')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_localidades_x_repartidor;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'agregar_categorias')
    DROP PROCEDURE MargeCreoQueOdioGDD.agregar_categorias;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_direcciones_x_usuarios')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_direcciones_x_usuarios;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_localidades_activas')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_localidades_activas;
GO

/* --------------------------------------------- Limpiar funciones --------------------------------------------- */

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'obtenerFechaReciente')
DROP FUNCTION MargeCreoQueOdioGDD.obtenerFechaReciente
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
--ID_DIRECCION INT NOT NULL, --FK
FECHA_NACIMIENTO DATE,
PRIMARY KEY (ID_USUARIO)
);

-------------------------- LOCAL --------------------------
CREATE TABLE MargeCreoQueOdioGDD.local (
ID_LOCAL INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
DESCRIPCION NVARCHAR(255),
ID_DIRECCION INT NOT NULL, --FK
ID_CATEGORIA INT, --FK
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
HORA_APERTURA DECIMAL,
HORA_CIERRE DECIMAL,
ID_DIA INT NOT NULL, --FK
ID_LOCAL INT NOT NULL, --FK
PRIMARY KEY (ID_HORARIO_LOCAL)
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
ID_PRODUCTO INT IDENTITY(1,1), --PK
CODIGO_PRODUCTO NVARCHAR(255),
ID_LOCAL INT NOT NULL, --FK
NOMBRE NVARCHAR(255),
DESCRIPCION NVARCHAR(255),
PRECIO FLOAT,
PRIMARY KEY (ID_PRODUCTO)
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
TIEMPO_ESTIMADO_ENTREGA DECIMAL,
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
ID_TIPO_MOVILIDAD INT NOT NULL, --FK
PRIMARY KEY (ID_REPARTIDOR)
);

CREATE TABLE MargeCreoQueOdioGDD.tipo_movilidad (
ID_TIPO INT IDENTITY(1,1), --PK
TIPO_MOVILIDAD NVARCHAR(255),
PRIMARY KEY (ID_TIPO)
);

CREATE TABLE MargeCreoQueOdioGDD.localidadxrepartidor (
ID_LOCALIDAD INT NOT NULL, --FK
ID_REPARTIDOR INT NOT NULL, --FK
ACTIVO NVARCHAR(255) -- localidad en la que está activo el repartidor
);

-------------------------- DIRECCION --------------------------
CREATE TABLE MargeCreoQueOdioGDD.direccion (
ID_DIRECCION INT IDENTITY(1,1), --PK
ID_LOCALIDAD INT NOT NULL, --FK
NOMBRE_DIRECCION NVARCHAR(255),
CALLE_Y_NUMERO NVARCHAR(255) NOT NULL,
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

CREATE TABLE MargeCreoQueOdioGDD.direccionxusuario (
ID_DIRECCION INT NOT NULL, --FK
ID_USUARIO INT NOT NULL, --FK
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
ID_DIRECCION INT, --FK
TELEFONO NVARCHAR(255),
PRIMARY KEY (ID_OPERADOR)
);

/*********************** Agregamos las FKs ***********************/

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

ALTER TABLE MargeCreoQueOdioGDD.horario_local
ADD CONSTRAINT FK_DIA_HORARIO_LOCAL
FOREIGN KEY (ID_DIA) REFERENCES MargeCreoQueOdioGDD.dia

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
ADD CONSTRAINT FK_MOVILIDAD_REPARTIDOR
FOREIGN KEY (ID_TIPO_MOVILIDAD) REFERENCES MargeCreoQueOdioGDD.tipo_movilidad

ALTER TABLE MargeCreoQueOdioGDD.localidadxrepartidor
ADD CONSTRAINT FK_LOCALIDAD_PRODUCTOXPEDIDO 
FOREIGN KEY (ID_LOCALIDAD) REFERENCES MargeCreoQueOdioGDD.localidad

ALTER TABLE MargeCreoQueOdioGDD.localidadxrepartidor
ADD CONSTRAINT FK_REPARTIDOR_PRODUCTOXPEDIDO 
FOREIGN KEY (ID_REPARTIDOR) REFERENCES MargeCreoQueOdioGDD.repartidor

-------------------------- DIRECCION --------------------------
ALTER TABLE MargeCreoQueOdioGDD.direccion
ADD CONSTRAINT FK_LOCALIDAD_DIRECCION
FOREIGN KEY (ID_LOCALIDAD) REFERENCES MargeCreoQueOdioGDD.localidad

-------------------------- LOCALIDAD --------------------------
ALTER TABLE MargeCreoQueOdioGDD.localidad
ADD CONSTRAINT FK_PROVINCIA_LOCALIDAD
FOREIGN KEY (ID_PROVINCIA) REFERENCES MargeCreoQueOdioGDD.provincia

-------------------------- DireccionXUsuario --------------------------
ALTER TABLE MargeCreoQueOdioGDD.direccionxusuario
ADD CONSTRAINT FK_ID_DIRECCION_X_USUARIO
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.direccionxusuario
ADD CONSTRAINT FK_ID_USUARIO_X_DIRECCION
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

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

/* --------------------------------------------- Funciones --------------------------------------------- */

/*********************** Creamos los stores procedures ***********************/

---------------------------- Tipo Medio Pago ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_medio_pagos
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los tipos de medios de pagos...'
    INSERT INTO tipo_medio_pago(TIPO_PAGO)
		SELECT DISTINCT Maestra.MEDIO_PAGO_TIPO as TIPO_PAGO
		FROM gd_esquema.Maestra
		WHERE MEDIO_PAGO_TIPO IS NOT NULL
  END
GO

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

---------------------------- Horario Local ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_horarios_local
AS
  BEGIN
	PRINT 'Se comienzan a migrar los horarios de los locales...'
    INSERT INTO horario_local(HORA_APERTURA, HORA_CIERRE, ID_DIA, ID_LOCAL)
		SELECT DISTINCT HORARIO_LOCAL_HORA_APERTURA AS HORA_APERTURA,
		      HORARIO_LOCAL_HORA_CIERRE AS HORA_CIERRE,
			 (SELECT TOP 1 ID_DIA FROM MargeCreoQueOdioGDD.dia WHERE dia.NOMBRE = HORARIO_LOCAL_DIA) AS ID_DIA,
			 (SELECT TOP 1 ID_LOCAL FROM MargeCreoQueOdioGDD.local WHERE local.NOMBRE = LOCAL_NOMBRE) AS ID_LOCAL
		FROM gd_esquema.Maestra
		WHERE HORARIO_LOCAL_HORA_APERTURA IS NOT NULL AND HORARIO_LOCAL_HORA_CIERRE IS NOT NULL AND LOCAL_NOMBRE IS NOT NULL
  END
GO

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

---------------------------- Categoria Local ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.agregar_categorias
AS
BEGIN
    PRINT 'Se comienzan a agregar categorias...'
    INSERT INTO MargeCreoQueOdioGDD.categoria_local(NOMBRE, ID_TIPO)
    VALUES
        ('Parrilla', (SELECT ID_TIPO FROM MargeCreoQueOdioGDD.tipo_local WHERE NOMBRE = 'Tipo Local Restaurante')),
        ('Heladeria', (SELECT ID_TIPO FROM MargeCreoQueOdioGDD.tipo_local WHERE NOMBRE = 'Tipo Local Restaurante')),
        ('Comidas Rapidas', (SELECT ID_TIPO FROM MargeCreoQueOdioGDD.tipo_local WHERE NOMBRE = 'Tipo Local Restaurante')),
        ('Kiosko', (SELECT ID_TIPO FROM MargeCreoQueOdioGDD.tipo_local WHERE NOMBRE = 'Tipo Local Mercado')),
        ('Supermercado', (SELECT ID_TIPO FROM MargeCreoQueOdioGDD.tipo_local WHERE NOMBRE = 'Tipo Local Mercado'));
  END
GO

---------------------------- Tipo Cupon ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_cupon
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los tipos de los cupones...'
		INSERT INTO tipo_cupon(TIPO_CUPON)
		SELECT DISTINCT CUPON_TIPO AS TIPO_CUPON
		FROM gd_esquema.Maestra
		WHERE CUPON_TIPO IS NOT NULL
		SELECT DISTINCT CUPON_RECLAMO_TIPO AS TIPO_CUPON
		FROM gd_esquema.Maestra
		WHERE CUPON_RECLAMO_TIPO IS NOT NULL
	END
GO

---------------------------- Cupon de Descuento ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_cupones_descuento
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los cupones de descuento...'
		INSERT INTO cupon_descuento(CODIGO, ID_USUARIO, MONTO, ID_TIPO_CUPON, FECHA_ALTA, FECHA_VENCIMIENTO)
		SELECT DISTINCT CUPON_NRO AS CODIGO,
			   (SELECT TOP 1 ID_USUARIO FROM MargeCreoQueOdioGDD.usuario WHERE usuario.DNI = USUARIO_DNI) AS ID_USUARIO,
			   CUPON_MONTO AS MONTO,
			   (SELECT tipo_cupon.ID_TIPO FROM MargeCreoQueOdioGDD.tipo_cupon WHERE tipo_cupon.TIPO_CUPON = CUPON_TIPO) AS ID_TIPO_CUPON,
			   CUPON_FECHA_ALTA AS FECHA_ALTA,
			   CUPON_FECHA_VENCIMIENTO AS FECHA_VENCIMIENTO
		FROM gd_esquema.Maestra
        WHERE CUPON_NRO IS NOT NULL AND NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.cupon_descuento WHERE cupon_descuento.CODIGO = CUPON_NRO)
		INSERT INTO cupon_descuento(CODIGO, ID_USUARIO, MONTO, ID_TIPO_CUPON, FECHA_ALTA, FECHA_VENCIMIENTO)
		SELECT DISTINCT CUPON_RECLAMO_NRO AS CODIGO,
			   (SELECT TOP 1 ID_USUARIO FROM MargeCreoQueOdioGDD.usuario WHERE usuario.DNI = USUARIO_DNI) AS ID_USUARIO,
			   CUPON_RECLAMO_MONTO AS MONTO,
			   (SELECT tipo_cupon.ID_TIPO FROM MargeCreoQueOdioGDD.tipo_cupon WHERE tipo_cupon.TIPO_CUPON = CUPON_RECLAMO_TIPO) AS ID_TIPO_CUPON,
			   CUPON_RECLAMO_FECHA_ALTA AS FECHA_ALTA,
			   CUPON_RECLAMO_FECHA_VENCIMIENTO AS FECHA_VENCIMIENTO
		FROM gd_esquema.Maestra
		WHERE CUPON_RECLAMO_NRO IS NOT NULL AND NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.cupon_descuento WHERE cupon_descuento.CODIGO = CUPON_RECLAMO_NRO)
	END
GO

---------------------------- DescuentoXPedido ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_descuentos_x_pedido
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los descuentos por pedido...'
		INSERT INTO descuentoxpedido(ID_PEDIDO, ID_CUPON)
		SELECT DISTINCT (SELECT NRO_PEDIDO FROM MargeCreoQueOdioGDD.pedido WHERE pedido.NRO_PEDIDO = PEDIDO_NRO) AS ID_PEDIDO,
			            (SELECT CODIGO FROM MargeCreoQueOdioGDD.cupon_descuento WHERE cupon_descuento.CODIGO = CUPON_NRO) AS ID_CUPON
		FROM gd_esquema.Maestra
		WHERE CUPON_NRO IS NOT NULL AND PEDIDO_NRO IS NOT NULL
	END
GO

---------------------------- DescuentoXReclamo ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_descuentos_x_reclamo
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los descuentos por reclamo...'
		INSERT INTO descuentoxreclamo(ID_RECLAMO, ID_CUPON)
		SELECT DISTINCT (SELECT TOP 1 NRO_RECLAMO FROM MargeCreoQueOdioGDD.reclamo WHERE reclamo.NRO_RECLAMO = RECLAMO_NRO) AS ID_RECLAMO,
			            (SELECT TOP 1 CODIGO FROM MargeCreoQueOdioGDD.cupon_descuento WHERE cupon_descuento.CODIGO = CUPON_RECLAMO_NRO) AS ID_CUPON
		FROM gd_esquema.Maestra
		WHERE CUPON_RECLAMO_NRO IS NOT NULL AND RECLAMO_NRO IS NOT NULL
	END
GO

---------------------------- Estado Pedido ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_estados_pedido
 AS
  BEGIN
		PRINT 'Se comienzan a migrar los estados de los pedidos...'
		INSERT INTO estado_pedido(NOMBRE)
		SELECT DISTINCT PEDIDO_ESTADO
		FROM gd_esquema.Maestra 
		WHERE PEDIDO_ESTADO IS NOT NULL
	END;
GO

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

---------------------------- Provincia ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_provincias
AS
	BEGIN
		PRINT 'Se comienzan a migrar las provincias...'
		INSERT INTO MargeCreoQueOdioGDD.provincia (NOMBRE)
		SELECT DISTINCT ENVIO_MENSAJERIA_PROVINCIA AS NOMBRE FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_PROVINCIA IS NOT NULL
		SELECT DISTINCT DIRECCION_USUARIO_PROVINCIA AS NOMBRE FROM gd_esquema.Maestra WHERE DIRECCION_USUARIO_PROVINCIA IS NOT NULL
        SELECT DISTINCT LOCAL_PROVINCIA AS NOMBRE FROM gd_esquema.Maestra WHERE LOCAL_PROVINCIA IS NOT NULL 
	END;
GO

---------------------------- Localidad ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_localidades
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las localidades...'
    INSERT INTO localidad (NOMBRE, ID_PROVINCIA)
		SELECT DISTINCT ma.ENVIO_MENSAJERIA_LOCALIDAD AS NOMBRE,pro.ID_PROVINCIA
		FROM gd_esquema.Maestra AS ma
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = ma.ENVIO_MENSAJERIA_PROVINCIA
		WHERE ENVIO_MENSAJERIA_LOCALIDAD IS NOT NULL
		UNION
		SELECT DISTINCT ma.DIRECCION_USUARIO_LOCALIDAD AS NOMBRE, pro.ID_PROVINCIA FROM gd_esquema.Maestra as ma
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = ma.DIRECCION_USUARIO_LOCALIDAD
		WHERE DIRECCION_USUARIO_LOCALIDAD IS NOT NULL
		UNION
		SELECT DISTINCT ma.LOCAL_LOCALIDAD AS NOMBRE, pro.ID_PROVINCIA FROM gd_esquema.Maestra as ma
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = ma.LOCAL_LOCALIDAD
		WHERE DIRECCION_USUARIO_LOCALIDAD IS NOT NULL
  END
GO

---------------------------- Direccion ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_direcciones
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las direcciones...'
    INSERT INTO direccion (ID_LOCALIDAD, NOMBRE_DIRECCION, CALLE_Y_NUMERO)
		SELECT DISTINCT lo.ID_LOCALIDAD, ma.DIRECCION_USUARIO_NOMBRE, ma.DIRECCION_USUARIO_DIRECCION FROM gd_esquema.Maestra AS ma
		INNER JOIN MargeCreoQueOdioGDD.localidad AS lo ON lo.NOMBRE = ma.DIRECCION_USUARIO_LOCALIDAD
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = ma.DIRECCION_USUARIO_PROVINCIA
		WHERE DIRECCION_USUARIO_DIRECCION IS NOT NULL
		UNION
		SELECT DISTINCT lo.ID_LOCALIDAD, '' AS NOMBRE_DIRECCION, ma.ENVIO_MENSAJERIA_DIR_ORIG FROM gd_esquema.Maestra AS ma
		INNER JOIN MargeCreoQueOdioGDD.localidad AS lo ON lo.NOMBRE = ma.ENVIO_MENSAJERIA_LOCALIDAD
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = ma.ENVIO_MENSAJERIA_PROVINCIA
		WHERE ENVIO_MENSAJERIA_DIR_ORIG IS NOT NULL
		UNION
		SELECT DISTINCT lo.ID_LOCALIDAD, '' AS NOMBRE_DIRECCION, ma.ENVIO_MENSAJERIA_DIR_DEST FROM gd_esquema.Maestra AS ma
		INNER JOIN MargeCreoQueOdioGDD.localidad AS lo ON lo.NOMBRE = ma.ENVIO_MENSAJERIA_LOCALIDAD
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = ma.ENVIO_MENSAJERIA_PROVINCIA
		WHERE ENVIO_MENSAJERIA_DIR_DEST IS NOT NULL
		UNION
		SELECT DISTINCT lo.ID_LOCALIDAD, '' AS NOMBRE_DIRECCION, ma.OPERADOR_RECLAMO_DIRECCION FROM gd_esquema.Maestra AS ma
		INNER JOIN MargeCreoQueOdioGDD.localidad AS lo ON lo.NOMBRE = ma.LOCAL_LOCALIDAD
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = ma.LOCAL_PROVINCIA
		WHERE OPERADOR_RECLAMO_DIRECCION IS NOT NULL
		UNION
		SELECT DISTINCT lo.ID_LOCALIDAD, '' AS NOMBRE_DIRECCION, ma.REPARTIDOR_DIRECION FROM gd_esquema.Maestra AS ma
		INNER JOIN MargeCreoQueOdioGDD.localidad AS lo ON (lo.NOMBRE = isnull(ma.LOCAL_LOCALIDAD, ma.ENVIO_MENSAJERIA_LOCALIDAD))
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON (pro.NOMBRE = isnull(ma.LOCAL_PROVINCIA, ma.ENVIO_MENSAJERIA_PROVINCIA))
		WHERE REPARTIDOR_DIRECION IS NOT NULL
		UNION
		SELECT DISTINCT lo.ID_LOCALIDAD, '' AS NOMBRE_DIRECCION, ma.LOCAL_DIRECCION FROM gd_esquema.Maestra AS ma
		INNER JOIN MargeCreoQueOdioGDD.localidad AS lo ON lo.NOMBRE = LOCAL_LOCALIDAD
		INNER JOIN MargeCreoQueOdioGDD.provincia AS pro ON pro.NOMBRE = LOCAL_PROVINCIA
		WHERE LOCAL_DIRECCION IS NOT NULL
  END
GO

---------------------------- Usuario ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_usuarios
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los usuarios...'
    INSERT INTO usuario (NOMBRE, APELLIDO, DNI, FECHA_REGISTRO, TELEFONO, EMAIL, FECHA_NACIMIENTO)--, ID_DIRECCION)
		SELECT DISTINCT USUARIO_NOMBRE AS NOMBRE,
			   USUARIO_APELLIDO AS APELLIDO,
			   USUARIO_DNI AS DNI,
			   USUARIO_FECHA_REGISTRO AS FECHA_REGISTRO,
			   USUARIO_TELEFONO AS TELEFONO, 
			   USUARIO_MAIL AS EMAIL,
			   USUARIO_FECHA_NAC AS FECHA_NACIMIENTO
			   --(SELECT TOP 1 ID_DIRECCION FROM MargeCreoQueOdioGDD.direccion WHERE direccion.CALLE_Y_NUMERO = DIRECCION_USUARIO_DIRECCION) AS ID_DIRECCION
			   from gd_esquema.Maestra 
			   WHERE USUARIO_MAIL IS NOT NULL AND DIRECCION_USUARIO_DIRECCION IS NOT NULL
  END
GO

---------------------------- DireccionXUsuario ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_direcciones_x_usuarios
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las direcciones x usuarios...'
    INSERT INTO direccionxusuario(ID_DIRECCION, ID_USUARIO)
		SELECT DISTINCT direccion.ID_DIRECCION AS ID_DIRECCION,
			   (SELECT ID_USUARIO FROM MargeCreoQueOdioGDD.usuario WHERE usuario.DNI = USUARIO_DNI) AS ID_USUARIO
		FROM gd_esquema.Maestra
		INNER JOIN MargeCreoQueOdioGDD.direccion ON (direccion.CALLE_Y_NUMERO = DIRECCION_USUARIO_DIRECCION AND direccion.NOMBRE_DIRECCION = DIRECCION_USUARIO_NOMBRE)
		INNER JOIN MargeCreoQueOdioGDD.localidad ON (direccion.ID_LOCALIDAD = localidad.ID_LOCALIDAD)
		WHERE DIRECCION_USUARIO_DIRECCION IS NOT NULL AND USUARIO_DNI IS NOT NULL
  END
GO






--select * from MargeCreoQueOdioGDD.direccionxusuario
---------------------------- Repartidor ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_repartidores
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los repartidores...'
    INSERT INTO repartidor (NOMBRE, APELLIDO, DNI, TELEFONO, EMAIL, FECHA_NACIMIENTO, ID_TIPO_MOVILIDAD, ID_DIRECCION)
		SELECT DISTINCT REPARTIDOR_NOMBRE AS NOMBRE,
			   REPARTIDOR_APELLIDO AS APELLIDO,
			   REPARTIDOR_DNI AS DNI,
			   REPARTIDOR_TELEFONO AS TELEFONO,
			   REPARTIDOR_EMAIL AS EMAIL,
			   REPARTIDOR_FECHA_NAC AS FECHA_NACIMIENTO,
			   (SELECT TOP 1 ID_TIPO FROM MargeCreoQueOdioGDD.tipo_movilidad WHERE tipo_movilidad.TIPO_MOVILIDAD = REPARTIDOR_TIPO_MOVILIDAD) AS ID_TIPO_MOVILIDAD,
			   (SELECT TOP 1 ID_DIRECCION FROM MargeCreoQueOdioGDD.direccion WHERE direccion.CALLE_Y_NUMERO = REPARTIDOR_DIRECION) AS ID_DIRECCION
			   FROM gd_esquema.Maestra
		WHERE REPARTIDOR_EMAIL IS NOT NULL AND REPARTIDOR_DIRECION IS NOT NULL
  END
GO

---------------------------- LocalidadXRepartidor ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_localidades_x_repartidor
AS
BEGIN

    PRINT 'Se comienzan a migrar las localidades x repartidor...'
    INSERT INTO localidadxrepartidor(ID_REPARTIDOR, ID_LOCALIDAD, ACTIVO)
    SELECT DISTINCT r.ID_REPARTIDOR,
           lo.ID_LOCALIDAD AS ID_LOCALIDAD,
           ACTIVO = (CASE WHEN (CASE WHEN (SELECT MAX(COALESCE(PEDIDO_FECHA_ENTREGA, ENVIO_MENSAJERIA_FECHA_ENTREGA)) FROM gd_esquema.Maestra m1 WHERE m1.REPARTIDOR_DNI = m.REPARTIDOR_DNI GROUP BY REPARTIDOR_DNI) = PEDIDO_FECHA_ENTREGA AND LOCAL_LOCALIDAD = lo.NOMBRE THEN LOCAL_LOCALIDAD 
                               WHEN (SELECT MAX(COALESCE(PEDIDO_FECHA_ENTREGA, ENVIO_MENSAJERIA_FECHA_ENTREGA)) FROM gd_esquema.Maestra m1 WHERE m1.REPARTIDOR_DNI = m.REPARTIDOR_DNI GROUP BY REPARTIDOR_DNI) = ENVIO_MENSAJERIA_FECHA_ENTREGA AND ENVIO_MENSAJERIA_LOCALIDAD = lo.NOMBRE THEN ENVIO_MENSAJERIA_LOCALIDAD END) 
                    IS NOT NULL THEN 1 ELSE 0 END)
    FROM gd_esquema.Maestra m
    INNER JOIN MargeCreoQueOdioGDD.repartidor r ON r.DNI = m.REPARTIDOR_DNI AND r.EMAIL = m.REPARTIDOR_EMAIL
    INNER JOIN MargeCreoQueOdioGDD.localidad AS lo ON (lo.NOMBRE = ISNULL(m.LOCAL_LOCALIDAD, m.ENVIO_MENSAJERIA_LOCALIDAD))
    WHERE REPARTIDOR_DNI IS NOT NULL
    ORDER BY r.ID_REPARTIDOR

	DELETE FROM MargeCreoQueOdioGDD.localidadxrepartidor
    WHERE EXISTS (
    SELECT 1
    FROM MargeCreoQueOdioGDD.localidadxrepartidor AS t2
    WHERE t2.ID_LOCALIDAD = MargeCreoQueOdioGDD.localidadxrepartidor.ID_LOCALIDAD
      AND t2.ID_REPARTIDOR = MargeCreoQueOdioGDD.localidadxrepartidor.ID_REPARTIDOR
      AND t2.ACTIVO = 1
    )
    AND ACTIVO = 0;
END;
GO

/*
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_localidades_x_repartidor
AS
BEGIN

    PRINT 'Se comienzan a migrar las localidades x repartidor...'
    INSERT INTO localidadxrepartidor(ID_REPARTIDOR, ID_LOCALIDAD, ACTIVO)
    SELECT DISTINCT r.ID_REPARTIDOR,
           lo.ID_LOCALIDAD,
		   ACTIVO = (CASE WHEN (CASE WHEN (SELECT MAX(COALESCE(PEDIDO_FECHA_ENTREGA, ENVIO_MENSAJERIA_FECHA_ENTREGA)) FROM gd_esquema.Maestra m1 WHERE m1.REPARTIDOR_DNI = r.DNI GROUP BY REPARTIDOR_DNI) = PEDIDO_FECHA_ENTREGA AND LOCAL_LOCALIDAD = lo.NOMBRE THEN LOCAL_LOCALIDAD 
								WHEN (SELECT MAX(COALESCE(PEDIDO_FECHA_ENTREGA, ENVIO_MENSAJERIA_FECHA_ENTREGA)) FROM gd_esquema.Maestra m1 WHERE m1.REPARTIDOR_DNI = r.DNI GROUP BY REPARTIDOR_DNI) = ENVIO_MENSAJERIA_FECHA_ENTREGA AND ENVIO_MENSAJERIA_LOCALIDAD = lo.NOMBRE THEN ENVIO_MENSAJERIA_LOCALIDAD END) 
					IS NOT NULL THEN 1 ELSE 0 END)
	--CASE WHEN (SELECT MAX(COALESCE(PEDIDO_FECHA_ENTREGA, ENVIO_MENSAJERIA_FECHA_ENTREGA)) FROM gd_esquema.Maestra m1 WHERE m1.REPARTIDOR_DNI = m.REPARTIDOR_DNI GROUP BY m1.REPARTIDOR_DNI) = PEDIDO_FECHA_ENTREGA AND LOCAL_LOCALIDAD = lo.NOMBRE THEN LOCAL_LOCALIDAD 
	--WHEN (SELECT MAX(COALESCE(PEDIDO_FECHA_ENTREGA, ENVIO_MENSAJERIA_FECHA_ENTREGA)) FROM gd_esquema.Maestra m1 WHERE m1.REPARTIDOR_DNI = m.REPARTIDOR_DNI GROUP BY m1.REPARTIDOR_DNI) = ENVIO_MENSAJERIA_FECHA_ENTREGA AND ENVIO_MENSAJERIA_LOCALIDAD = lo.NOMBRE THEN ENVIO_MENSAJERIA_LOCALIDAD END
    FROM gd_esquema.Maestra m
    INNER JOIN MargeCreoQueOdioGDD.repartidor r ON r.DNI = m.REPARTIDOR_DNI AND r.EMAIL = m.REPARTIDOR_EMAIL
    INNER JOIN MargeCreoQueOdioGDD.localidad lo ON (lo.NOMBRE = ISNULL(m.LOCAL_LOCALIDAD, m.ENVIO_MENSAJERIA_LOCALIDAD))
    WHERE REPARTIDOR_DNI IS NOT NULL
	ORDER BY r.ID_REPARTIDOR
END;
GO

SELECT MAX(COALESCE(PEDIDO_FECHA_ENTREGA, ENVIO_MENSAJERIA_FECHA_ENTREGA)) FROM gd_esquema.Maestra m1
WHERE m1.REPARTIDOR_DNI = '31697060'
GROUP BY m1.REPARTIDOR_DNI

select repartidor.DNI from MargeCreoQueOdioGDD.repartidor where repartidor.ID_REPARTIDOR = '1'
*/

---------------------------- Operador ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_operadores
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los operadores...'
    INSERT INTO operador (NOMBRE, APELLIDO, DNI, FECHA_NACIMIENTO, EMAIL, ID_DIRECCION, TELEFONO)
		SELECT DISTINCT OPERADOR_RECLAMO_NOMBRE AS NOMBRE,
			   OPERADOR_RECLAMO_APELLIDO AS APELLIDO,
			   OPERADOR_RECLAMO_DNI AS DNI,
			   OPERADOR_RECLAMO_FECHA_NAC AS FECHA_NACIMIENTO,
			   OPERADOR_RECLAMO_MAIL AS EMAIL,
			   (SELECT TOP 1 ID_DIRECCION FROM MargeCreoQueOdioGDD.direccion WHERE direccion.CALLE_Y_NUMERO = OPERADOR_RECLAMO_DIRECCION) AS ID_DIRECCION,
			   OPERADOR_RECLAMO_TELEFONO AS TELEFONO
		FROM gd_esquema.Maestra
		WHERE OPERADOR_RECLAMO_NOMBRE IS NOT NULL AND OPERADOR_RECLAMO_DIRECCION IS NOT NULL
  END
GO

---------------------------- Local ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_locales
AS
  BEGIN
	PRINT 'Se comienzan a migrar los locales...'
    INSERT INTO local(NOMBRE, ID_CATEGORIA, DESCRIPCION, ID_DIRECCION)
		SELECT DISTINCT LOCAL_NOMBRE AS NOMBRE,
		       (SELECT TOP 1 ID_CATEGORIA FROM MargeCreoQueOdioGDD.categoria_local WHERE LOCAL_TIPO = (SELECT tipo_local.NOMBRE FROM MargeCreoQueOdioGDD.tipo_local WHERE categoria_local.ID_TIPO = tipo_local.ID_TIPO) AND LOCAL_TIPO is not null) AS ID_CATEGORIA,
			   LOCAL_DESCRIPCION AS DESCRIPCION,
			   (SELECT TOP 1 ID_DIRECCION FROM MargeCreoQueOdioGDD.direccion WHERE direccion.CALLE_Y_NUMERO = LOCAL_DIRECCION) AS ID_DIRECCION
		FROM gd_esquema.Maestra
		WHERE LOCAL_NOMBRE IS NOT NULL
  END
GO

---------------------------- Medio de Pago ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_medios_de_pago
AS
  BEGIN
	PRINT 'Se comienzan a migrar los medios_de_pago...'
    INSERT INTO medio_de_pago(NUMERO_TARJETA, MARCA, ID_TIPO_MEDIO_PAGO, ID_USUARIO)
		SELECT DISTINCT MEDIO_PAGO_NRO_TARJETA AS NUMERO_TARJETA,
			  MARCA_TARJETA AS MARCA,
			  (SELECT TOP 1 ID_TIPO FROM MargeCreoQueOdioGDD.tipo_medio_pago WHERE tipo_medio_pago.TIPO_PAGO = MEDIO_PAGO_TIPO) AS ID_TIPO_MEDIO_PAGO,
			  (SELECT TOP 1 ID_USUARIO FROM MargeCreoQueOdioGDD.usuario WHERE usuario.DNI = USUARIO_DNI) AS ID_USUARIO
		FROM gd_esquema.Maestra
	    WHERE MEDIO_PAGO_TIPO IS NOT NULL
  END
GO

---------------------------- Producto ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_productos 
AS
  BEGIN
	PRINT 'Se comienzan a migrar los productos...'
    INSERT INTO producto(CODIGO_PRODUCTO, ID_LOCAL, NOMBRE, DESCRIPCION, PRECIO)

		SELECT DISTINCT PRODUCTO_LOCAL_CODIGO AS CODIGO_PRODUCTO,
		       (SELECT TOP 1 ID_LOCAL FROM MargeCreoQueOdioGDD.local WHERE local.NOMBRE = LOCAL_NOMBRE) AS ID_LOCAL,
			   PRODUCTO_LOCAL_NOMBRE AS NOMBRE,
			   PRODUCTO_LOCAL_DESCRIPCION AS DESCRIPCION,
			   PRODUCTO_LOCAL_PRECIO AS PRECIO
		FROM gd_esquema.Maestra
		WHERE PRODUCTO_LOCAL_CODIGO IS NOT NULL AND NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.producto WHERE CODIGO_PRODUCTO = PRODUCTO_LOCAL_CODIGO) AND LOCAL_NOMBRE IS NOT NULL 
  END
GO

--select * from MargeCreoQueOdioGDD.producto
---------------------------- ProductoXPedido ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_productos_x_pedido
AS
  BEGIN
	PRINT 'Se comienzan a migrar los productos x pedido...'
    INSERT INTO productoxpedido(ID_PEDIDO, ID_PRODUCTO, CANTIDAD, PRECIO_UNITARIO)
		SELECT (SELECT TOP 1 pedido.NRO_PEDIDO FROM MargeCreoQueOdioGDD.pedido WHERE pedido.NRO_PEDIDO = PEDIDO_NRO) AS ID_PEDIDO,
			   (SELECT TOP 1 ID_PRODUCTO FROM MargeCreoQueOdioGDD.producto WHERE producto.CODIGO_PRODUCTO = CODIGO_PRODUCTO) AS ID_PRODUCTO,
			   PRODUCTO_CANTIDAD AS CANTIDAD,
			   PRODUCTO_LOCAL_PRECIO AS PRECIO_UNITARIO
		FROM gd_esquema.Maestra
		WHERE PEDIDO_NRO IS NOT NULL AND PRODUCTO_LOCAL_CODIGO IS NOT NULL
  END
GO

---------------------------- Envio ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_envios
AS
  BEGIN
	PRINT 'Se comienzan a migrar los envios...'
    INSERT INTO envio(ID_DIRECCION_DESTINO, PRECIO_ENVIO, TIEMPO_ESTIMADO_ENTREGA, PROPINA, ID_REPARTIDOR)
		SELECT DISTINCT (SELECT TOP 1 ID_DIRECCION FROM MargeCreoQueOdioGDD.direccion WHERE direccion.CALLE_Y_NUMERO = DIRECCION_USUARIO_DIRECCION) AS ID_DIRECCION_DESTINO,
			   ISNULL(PEDIDO_PRECIO_ENVIO, 0) AS PRECIO_ENVIO,
			   ISNULL(PEDIDO_TIEMPO_ESTIMADO_ENTREGA, 0) AS TIEMPO_ESTIMADO_ENTREGA,
			   ISNULL(PEDIDO_PROPINA, 0) AS PROPINA,
			  (SELECT TOP 1 ID_REPARTIDOR FROM MargeCreoQueOdioGDD.repartidor WHERE repartidor.DNI = REPARTIDOR_DNI) AS ID_REPARTIDOR
		FROM gd_esquema.Maestra
		WHERE PEDIDO_NRO IS NOT NULL
		UNION
		SELECT DISTINCT (SELECT TOP 1 ID_DIRECCION FROM MargeCreoQueOdioGDD.direccion WHERE direccion.CALLE_Y_NUMERO = ENVIO_MENSAJERIA_DIR_DEST) AS ID_DIRECCION_DESTINO,
			   ISNULL(ENVIO_MENSAJERIA_PRECIO_ENVIO, 0) AS PRECIO_ENVIO,
			   ISNULL(ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, 0) AS TIEMPO_ESTIMADO_ENTREGA,
			   ISNULL(ENVIO_MENSAJERIA_PROPINA, 0) AS PROPINA,
			  (SELECT TOP 1 ID_REPARTIDOR FROM MargeCreoQueOdioGDD.repartidor WHERE repartidor.DNI = REPARTIDOR_DNI) AS ID_REPARTIDOR
		FROM gd_esquema.Maestra
		WHERE ENVIO_MENSAJERIA_NRO IS NOT NULL
  END
GO

--SELECT * FROM MargeCreoQueOdioGdd.envio
---------------------------- Pedido ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_pedidos
AS
  BEGIN
	PRINT 'Se comienzan a migrar los pedidos...'
    INSERT INTO pedido(NRO_PEDIDO, FECHA_HORA_PEDIDO, FECHA_HORA_ENTREGA, ID_USUARIO, ID_LOCAL, ID_MEDIO_DE_PAGO, ID_ENVIO, ID_ESTADO, TARIFA_SERVICIO, 
	TOTAL_PRODUCTOS, TOTAL_CUPONES, TOTAL_SERVICIO, TOTAL_PEDIDO, CALIFICACION, OBSERVACIONES)
		SELECT DISTINCT PEDIDO_NRO AS NRO_PEDIDO,
			   PEDIDO_FECHA AS FECHA_HORA_PEDIDO,
			   PEDIDO_FECHA_ENTREGA AS FECHA_HORA_ENTREGA,
			   (SELECT TOP 1 ID_USUARIO FROM MargeCreoQueOdioGDD.usuario WHERE usuario.DNI = USUARIO_DNI) AS ID_USUARIO,
			   (SELECT local.ID_LOCAL FROM MargeCreoQueOdioGDD.local WHERE local.NOMBRE = LOCAL_NOMBRE AND local.DESCRIPCION = LOCAL_DESCRIPCION) AS ID_LOCAL,
	           (SELECT TOP 1 ID_MEDIO_PAGO FROM MargeCreoQueOdioGDD.medio_de_pago WHERE medio_de_pago.NUMERO_TARJETA = NUMERO_TARJETA AND medio_de_pago.MARCA = MARCA_TARJETA) AS ID_MEDIO_DE_PAGO,
			   (SELECT TOP 1 NRO_ENVIO FROM MargeCreoQueOdioGDD.envio
				INNER JOIN MargeCreoQueOdioGDD.direccion ON envio.ID_DIRECCION_DESTINO = direccion.ID_DIRECCION
				INNER JOIN MargeCreoQueOdioGDD.repartidor ON envio.ID_REPARTIDOR = repartidor.ID_REPARTIDOR
				WHERE envio.PRECIO_ENVIO = PEDIDO_PRECIO_ENVIO AND envio.PROPINA = PEDIDO_PROPINA AND 
				envio.TIEMPO_ESTIMADO_ENTREGA = PEDIDO_TIEMPO_ESTIMADO_ENTREGA AND repartidor.DNI = REPARTIDOR_DNI) AS ID_ENVIO,
			   (SELECT estado_pedido.ID_ESTADO FROM MargeCreoQueOdioGDD.estado_pedido WHERE estado_pedido.NOMBRE = PEDIDO_ESTADO) AS ID_ESTADO,
			   PEDIDO_TARIFA_SERVICIO AS TARIFA_SERVICIO,
			   PEDIDO_TOTAL_PRODUCTOS AS TOTAL_PRODUCTOS,
			   PEDIDO_TOTAL_CUPONES AS TOTAL_CUPONES,
			   PEDIDO_TOTAL_SERVICIO AS TOTAL_SERVICIO,
			   (PEDIDO_TOTAL_PRODUCTOS + PEDIDO_PRECIO_ENVIO + PEDIDO_PROPINA + PEDIDO_TARIFA_SERVICIO - PEDIDO_TOTAL_CUPONES) AS TOTAL_PEDIDO, -- PEDIDO_TOTAL_SERVICIO - PEDIDO_TOTAL_CUPONES
			   PEDIDO_CALIFICACION AS CALIFICACION,
			   PEDIDO_OBSERV AS OBSERVACIONES
		FROM gd_esquema.Maestra
		WHERE PEDIDO_NRO IS NOT NULL AND NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.pedido WHERE pedido.NRO_PEDIDO = PEDIDO_NRO)
	END
GO

--select * from MargeCreoQueOdioGDD.pedido -- 61257 pedidos
---------------------------- Reclamo ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_reclamos
AS
  BEGIN
	PRINT 'Se comienzan a migrar los reclamos...'
    INSERT INTO reclamo(NRO_RECLAMO, ID_USUARIO, ID_PEDIDO, ID_OPERADOR, ID_ESTADO, DESCRIPCION, SOLUCION, ID_TIPO_RECLAMO, CALIFICACION, FECHA_HORA_INICIO, FECHA_HORA_SOLUCION)
		SELECT DISTINCT RECLAMO_NRO AS NRO_RECLAMO,
			   (SELECT TOP 1 ID_USUARIO FROM MargeCreoQueOdioGDD.usuario WHERE usuario.DNI = USUARIO_DNI) AS ID_USUARIO,
			   (SELECT NRO_PEDIDO FROM MargeCreoQueOdioGDD.pedido INNER JOIN MargeCreoQueOdioGDD.usuario ON pedido.ID_USUARIO = usuario.ID_USUARIO
			   WHERE pedido.NRO_PEDIDO = Maestra.PEDIDO_NRO AND usuario.DNI = Maestra.USUARIO_DNI) AS ID_PEDIDO,
			   (SELECT TOP 1 ID_OPERADOR FROM MargeCreoQueOdioGDD.operador WHERE operador.DNI = OPERADOR_RECLAMO_DNI) AS ID_OPERADOR,
			   (SELECT estado_reclamo.ID_ESTADO FROM MargeCreoQueOdioGDD.estado_reclamo WHERE estado_reclamo.NOMBRE = RECLAMO_ESTADO) AS ID_ESTADO,
			   RECLAMO_DESCRIPCION AS DESCRIPCION,
			   RECLAMO_SOLUCION AS SOLUCION,
			   (SELECT tipo_reclamo.ID_TIPO_RECLAMO FROM MargeCreoQueOdioGDD.tipo_reclamo WHERE tipo_reclamo.TIPO_RECLAMO = RECLAMO_TIPO) AS ID_TIPO_RECLAMO,
			   RECLAMO_CALIFICACION AS CALIFICACION,
			   RECLAMO_FECHA AS FECHA_HORA_INICIO,
			   RECLAMO_FECHA_SOLUCION AS FECHA_HORA_SOLUCION
		FROM gd_esquema.Maestra
		WHERE RECLAMO_NRO IS NOT NULL
  END
GO

---------------------------- Envio Mensajeria ----------------------------
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_envios_mensajeria
AS
  BEGIN
	PRINT 'Se comienzan a migrar los envios de mensajeria...'
    INSERT INTO envio_mensajeria(NRO_ENVIO_MENSAJERIA, ID_USUARIO, ID_DIRECCION_ORIGEN, ID_MEDIO_PAGO, ID_TIPO_PAQUETE, ID_ENVIO, ID_ESTADO, FECHA_HORA_PEDIDO,
	FECHA_HORA_ENTREGA, DISTANCIA_KMS, CALIFICACION, OBSERVACIONES, PRECIO_POR_SEGURO, TOTAL_SERVICIO_MENSAJERIA)
		SELECT DISTINCT ENVIO_MENSAJERIA_NRO AS NRO_ENVIO_MENSAJERIA,
		       (SELECT TOP 1 ID_USUARIO FROM MargeCreoQueOdioGDD.usuario WHERE usuario.DNI = USUARIO_DNI) AS ID_USUARIO,
			   (SELECT TOP 1 ID_DIRECCION FROM MargeCreoQueOdioGDD.direccion WHERE direccion.CALLE_Y_NUMERO = ENVIO_MENSAJERIA_DIR_ORIG) AS ID_DIRECCION_ORIGEN,
			   (SELECT TOP 1 ID_MEDIO_PAGO FROM MargeCreoQueOdioGDD.medio_de_pago WHERE medio_de_pago.NUMERO_TARJETA = NUMERO_TARJETA AND medio_de_pago.MARCA = MARCA_TARJETA) AS ID_MEDIO_DE_PAGO,
			   (SELECT TOP 1 tipo_paquete.ID_TIPO_PAQUETE FROM MargeCreoQueOdioGDD.tipo_paquete WHERE tipo_paquete.TIPO_PAQUETE = PAQUETE_TIPO AND tipo_paquete.VALOR_ASEGURADO = PAQUETE_TIPO_PRECIO) AS ID_TIPO_PAQUETE,
			   (SELECT TOP 1 NRO_ENVIO FROM MargeCreoQueOdioGDD.envio
				INNER JOIN MargeCreoQueOdioGDD.direccion ON envio.ID_DIRECCION_DESTINO = direccion.ID_DIRECCION
				INNER JOIN MargeCreoQueOdioGDD.repartidor ON envio.ID_REPARTIDOR = repartidor.ID_REPARTIDOR
				WHERE envio.PRECIO_ENVIO = ENVIO_MENSAJERIA_PRECIO_ENVIO AND envio.PROPINA = ENVIO_MENSAJERIA_PROPINA AND 
				envio.TIEMPO_ESTIMADO_ENTREGA = ENVIO_MENSAJERIA_TIEMPO_ESTIMADO AND repartidor.DNI = REPARTIDOR_DNI) AS ID_ENVIO,
			   (SELECT estado_mensajeria.ID_ESTADO FROM MargeCreoQueOdioGDD.estado_mensajeria WHERE estado_mensajeria.NOMBRE = ENVIO_MENSAJERIA_ESTADO) AS ID_ESTADO,
			   ENVIO_MENSAJERIA_FECHA AS FECHA_HORA_PEDIDO,
			   ENVIO_MENSAJERIA_FECHA_ENTREGA AS FECHA_HORA_ENTREGA,
			   ENVIO_MENSAJERIA_KM AS DISTANCIA_KMS,
			   ENVIO_MENSAJERIA_CALIFICACION AS CALIFICACION,
			   ENVIO_MENSAJERIA_OBSERV AS OBSERVACIONES,
			   ENVIO_MENSAJERIA_PRECIO_SEGURO AS PRECIO_POR_SEGURO,
			   (ENVIO_MENSAJERIA_PRECIO_ENVIO + ENVIO_MENSAJERIA_PROPINA + ENVIO_MENSAJERIA_PRECIO_SEGURO) AS TOTAL_SERVICIO_MENSAJERIA -- total = precio_envio + propina + precio_por_seguro
		FROM gd_esquema.Maestra
		WHERE ENVIO_MENSAJERIA_NRO IS NOT NULL AND NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.envio_mensajeria WHERE envio_mensajeria.NRO_ENVIO_MENSAJERIA = ENVIO_MENSAJERIA_NRO)
  END
GO

--select * from MargeCreoQueOdioGDD.envio_mensajeria -- 37147
--98404 envios (61257 pedidos + 37147 mensajerias)

/*********************** Realizamos la ejecución de los stores procedures ***********************/

EXEC MargeCreoQueOdioGDD.migrar_tipos_medio_pagos;
EXEC MargeCreoQueOdioGDD.migrar_tipos_reclamos;
EXEC MargeCreoQueOdioGDD.migrar_tipos_paquetes;
EXEC MargeCreoQueOdioGDD.migrar_tipos_local;
EXEC MargeCreoQueOdioGDD.agregar_categorias;
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
EXEC MargeCreoQueOdioGDD.migrar_direcciones_x_usuarios;
EXEC MargeCreoQueOdioGDD.migrar_locales;
EXEC MargeCreoQueOdioGDD.migrar_medios_de_pago;
EXEC MargeCreoQueOdioGDD.migrar_horarios_local;
EXEC MargeCreoQueOdioGDD.migrar_envios;
EXEC MargeCreoQueOdioGDD.migrar_productos;
EXEC MargeCreoQueOdioGDD.migrar_cupones_descuento;
EXEC MargeCreoQueOdioGDD.migrar_pedidos;
EXEC MargeCreoQueOdioGDD.migrar_envios_mensajeria;
EXEC MargeCreoQueOdioGDD.migrar_reclamos;
EXEC MargeCreoQueOdioGDD.migrar_descuentos_x_pedido;
EXEC MargeCreoQueOdioGDD.migrar_productos_x_pedido;
EXEC MargeCreoQueOdioGDD.migrar_descuentos_x_reclamo;
EXEC MargeCreoQueOdioGDD.migrar_localidades_x_repartidor;
