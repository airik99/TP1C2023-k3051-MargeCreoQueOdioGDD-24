USE GD1C2023
GO

/*son 34 drops*/
/*********************** Limpiar tablas ***********************/
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estado_mensajeria')
DROP TABLE MargeCreoQueOdioGDD.estado_mensajeria
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estadoxmensajeria')
DROP TABLE MargeCreoQueOdioGDD.estadoxmensajeria
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'envio_mensajeria')
DROP TABLE MargeCreoQueOdioGDD.envio_mensajeria
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'paquete')
DROP TABLE MargeCreoQueOdioGDD.paquete
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_paquete')
DROP TABLE MargeCreoQueOdioGDD.tipo_paquete
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'provincia')
DROP TABLE MargeCreoQueOdioGDD.provincia
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'localidad')
DROP TABLE MargeCreoQueOdioGDD.localidad
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'direccion')
DROP TABLE MargeCreoQueOdioGDD.direccion
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'envio')
DROP TABLE MargeCreoQueOdioGDD.envio
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'repartidor')
DROP TABLE MargeCreoQueOdioGDD.repartidor
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_movilidad')
DROP TABLE MargeCreoQueOdioGDD.tipo_movilidad
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'local')
DROP TABLE MargeCreoQueOdioGDD.local
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'categoria_local')
DROP TABLE MargeCreoQueOdioGDD.categoria_local
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_local')
DROP TABLE MargeCreoQueOdioGDD.tipo_local
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'horario_local')
DROP TABLE MargeCreoQueOdioGDD.horario_local
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'horarioxdia')
DROP TABLE MargeCreoQueOdioGDD.horarioxdia
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'dia')
DROP TABLE MargeCreoQueOdioGDD.dia
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'producto')
DROP TABLE MargeCreoQueOdioGDD.producto
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'productoxpedido')
DROP TABLE MargeCreoQueOdioGDD.productoxpedido
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estadoxpedido')
DROP TABLE MargeCreoQueOdioGDD.estadoxpedido
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estado_pedido')
DROP TABLE MargeCreoQueOdioGDD.estado_pedido
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuentoxpedido')
DROP TABLE MargeCreoQueOdioGDD.descuentoxpedido
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'pedido')
DROP TABLE MargeCreoQueOdioGDD.pedido
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'cupon_descuento')
DROP TABLE MargeCreoQueOdioGDD.cupon_descuento
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_cupon')
DROP TABLE MargeCreoQueOdioGDD.tipo_cupon
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'usuario')
DROP TABLE MargeCreoQueOdioGDD.usuario
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuentoxreclamo')
DROP TABLE MargeCreoQueOdioGDD.descuentoxreclamo
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'reclamo')
DROP TABLE MargeCreoQueOdioGDD.reclamo
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_reclamo')
DROP TABLE MargeCreoQueOdioGDD.tipo_reclamo
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estadoxreclamo')
DROP TABLE MargeCreoQueOdioGDD.estadoxreclamo
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'estado_reclamo')
DROP TABLE MargeCreoQueOdioGDD.estado_reclamo
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'operador')
DROP TABLE MargeCreoQueOdioGDD.operador
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'medio_de_pago')
DROP TABLE MargeCreoQueOdioGDD.medio_de_pago
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_medio_pago')
DROP TABLE MargeCreoQueOdioGDD.tipo_medio_pago

/*********************** Limpiar Schema ***********************/
IF EXISTS (SELECT name FROM sys.schemas WHERE name = 'MargeCreoQueOdioGDD')
DROP SCHEMA MargeCreoQueOdioGDD
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
NRO_PEDIDO INT IDENTITY(1,1), --PK
FECHA_HORA_PEDIDO DATETIME,
NOMBRE NVARCHAR(255),
ID_USUARIO INT NOT NULL, --FK
FECHA_HORA_ENTREGA DATETIME,
ID_DIRECCION_ORIGEN INT NOT NULL, --FK
ID_LOCAL INT NOT NULL, --FK
ID_MEDIO_DE_PAGO INT NOT NULL, --FK
ID_ENVIO INT NOT NULL, --FK
FECHA_HORA DATETIME,
TARIFA_SERVICIO FLOAT,
TOTAL_PRODUCTOS FLOAT,
TOTAL_CUPONES FLOAT,
TOTAL_SERVICIO FLOAT,
CALIFICACION DECIMAL(5,1),
OBSERVACIONES NVARCHAR(255),
TOTAL_PEDIDO FLOAT,
PRIMARY KEY (NRO_PEDIDO)
);

CREATE TABLE MargeCreoQueOdioGDD.prodcutoxpedido (
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

CREATE TABLE MargeCreoQueOdioGDD.estadoxpedido (
ID_PEDIDO INT NOT NULL, --FK
ID_ESTADO INT NOT NULL, --FK
);

CREATE TABLE MargeCreoQueOdioGDD.estado_pedido(
ID_ESTADO INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255) NOT NULL,
PRIMARY KEY (ID_ESTADO)
);

-------------------------- CUPON DE DESCUENTO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.cupon_descuento (
CODIGO INT IDENTITY(1,1), --PK
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
CALLE NVARCHAR(255),
NUMERO INT,
CODIGO_POSTAL NVARCHAR(255),
DEPTO NVARCHAR(255),
OBSERVACIONES NVARCHAR(255),
PRIMARY KEY (ID_DIRECCION)
);

CREATE TABLE MargeCreoQueOdioGDD.localidad (
ID_LOCALIDAD INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
ID_PROVINCIA INT NOT NULL, --FK
PRIMARY KEY (ID_LOCALIDAD)
);

CREATE TABLE MargeCreoQueOdioGDD.provincia (
ID_PROVINCIA INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255),
PRIMARY KEY (ID_PROVINCIA)
);

-------------------------- ENVIO MENSAJERIA --------------------------
CREATE TABLE MargeCreoQueOdioGDD.estado_mensajeria(
ID_ESTADO INT IDENTITY(1,1), --PK /*identity hace que se autoincremente*/
NOMBRE NVARCHAR(255) NOT NULL,
PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.envio_mensajeria(
NRO_ENVIO_MENSAJERIA INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255) NOT NULL,
ID_USUARIO INT NOT NULL, --FK
ID_DIRECCION_ORIGEN INT NOT NULL, --FK
ID_MEDIO_PAGO INT NOT NULL, --FK
ID_PAQUETE INT NOT NULL, --FK
ID_ENVIO INT NOT NULL, --FK
FECHA_HORA_PEDIDO DATETIME,
FECHA_HORA_ENTREGA DATETIME,
DISTANCIA_KMS INT,
CALIFICACION DECIMAL(5,1),
OBSERVACIONES NVARCHAR(255),
PRECIO_POR_SEGURO FLOAT,
TOTAL_SERVICIO_MENSAJERIA FLOAT,
PRIMARY KEY (NRO_ENVIO_MENSAJERIA)
);

CREATE TABLE MargeCreoQueOdioGDD.estadoxmensajeria (
ID_MENSAJERIA INT NOT NULL, --FK
ID_ESTADO INT NOT NULL, --FK
);

CREATE TABLE MargeCreoQueOdioGDD.paquete (
ID_PAQUETE INT IDENTITY(1,1), --PK
ID_TIPO_PAQUETE INT NOT NULL, --FK
VALOR_ASEGURADO FLOAT
);

CREATE TABLE MargeCreoQueOdioGDD.tipo_paquete (
ID_TIPO_PAQUETE INT IDENTITY(1,1), --PK
TIPO_PAQUETE NVARCHAR(255),
MEDIDA_ANCHO INT,
MEDIDA_LARGO INT,
MEDIDA_ALTO INT,
PESO_MAXIMO FLOAT
);

-------------------------- RECLAMO --------------------------
CREATE TABLE MargeCreoQueOdioGDD.reclamo (
NRO_RECLAMO INT IDENTITY(1,1), --PK
ID_USUARIO INT NOT NULL, --FK
ID_PEDIDO INT NOT NULL, --FK
ID_OPERADOR INT NOT NULL, --FK
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

CREATE TABLE MargeCreoQueOdioGDD.estadoxreclamo (
ID_ESTADO INT NOT NULL, --FK
ID_RECLAMO INT NOT NULL, --FK
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
-------------------------- local --------------------------
ALTER TABLE MargeCreoQueOdioGDD.local
ADD CONSTRAINT FK_DIRECCION_LOCAL
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.local
ADD CONSTRAINT FK_CATEGORIA_LOCAL
FOREIGN KEY (ID_CATEGORIA) REFERENCES MargeCreoQueOdioGDD.categoria

ALTER TABLE MargeCreoQueOdioGDD.categoria_local
ADD CONSTRAINT FK_TIPO_CATEGORIA_LOCAL
FOREIGN KEY (ID_TIPO) REFERENCES MargeCreoQueOdioGDD.tipo_local

-------------------------- horario local --------------------------
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
-------------------------- pedido --------------------------
ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_USUARIO_PEDIDO
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_DIRECCION_ORIGEN_PEDIDO
FOREIGN KEY (ID_DIRECCION_ORIGEN) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_LOCAL_PEDIDO
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.local

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_MEDIO_DE_PAGO_PEDIDO
FOREIGN KEY (ID_MEDIO_DE_PAGO) REFERENCES MargeCreoQueOdioGDD.medio_de_pago

ALTER TABLE MargeCreoQueOdioGDD.pedido
ADD CONSTRAINT FK_ENVIO_PEDIDO
FOREIGN KEY (ID_ENVIO) REFERENCES MargeCreoQueOdioGDD.envio

-------------------------- estadoxpedido --------------------------
ALTER TABLE MargeCreoQueOdioGDD.estadoxpedido
ADD CONSTRAINT FK_PEDIDO_ESTADOXPEDIDO 
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.pedido

ALTER TABLE MargeCreoQueOdioGDD.estadoxpedido
ADD CONSTRAINT FK_ESTADO_ESTADOXPEDIDO 
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado_pedido

-------------------------- productoxpedido --------------------------
ALTER TABLE MargeCreoQueOdioGDD.productoxpedido
ADD CONSTRAINT FK_PEDIDO_PRODUCTOXPEDIDO 
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.pedido

ALTER TABLE MargeCreoQueOdioGDD.productoxpedido
ADD CONSTRAINT FK_PRODUCTO_PRODUCTOXPEDIDO 
FOREIGN KEY (ID_PRODUCTO) REFERENCES MargeCreoQueOdioGDD.producto

-------------------------- producto --------------------------
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
-------------------------- direccion --------------------------
ALTER TABLE MargeCreoQueOdioGDD.direccion
ADD CONSTRAINT FK_LOCALIDAD_DIRECCION
FOREIGN KEY (ID_LOCALIDAD) REFERENCES MargeCreoQueOdioGDD.localidad

-------------------------- localidad --------------------------
ALTER TABLE MargeCreoQueOdioGDD.localidad
ADD CONSTRAINT FK_PROVINCIA_LOCALIDAD
FOREIGN KEY (ID_PROVINCIA) REFERENCES MargeCreoQueOdioGDD.provincia

-------------------------- ENVIO MENSAJERIA --------------------------
-------------------------- estadoxmensajeria --------------------------
ALTER TABLE MargeCreoQueOdioGDD.estadoxmensajeria
ADD CONSTRAINT FK_MENSAJERIA_ESTADOXMENSAJERIA 
FOREIGN KEY (ID_MENSAJERIA) REFERENCES MargeCreoQueOdioGDD.envio_mensajeria

ALTER TABLE MargeCreoQueOdioGDD.estadoxmensajeria
ADD CONSTRAINT FK_ESTADO_ESTADOXMENSAJERIA 
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado_mensajeria

-------------------------- paquete --------------------------
ALTER TABLE MargeCreoQueOdioGDD.paquete
ADD CONSTRAINT FK_TIPO_PAQUETE_PAQUETE
FOREIGN KEY (ID_TIPO_PAQUETE) REFERENCES MargeCreoQueOdioGDD.tipo_paquete

-------------------------- envio mensajeria --------------------------
ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_USUARIO_ENVIO_MENSAJERIA
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_DIRECCION_ENVIO_MENSAJERIA
FOREIGN KEY (ID_DIRECCION_ORIGEN) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_MEDIO_DE_PAGO_ENVIO_MENSAJERIA
FOREIGN KEY (ID_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.medio_de_pago

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_PAQUETE_ENVIO_MENSAJERIA
FOREIGN KEY (ID_PAQUETE) REFERENCES MargeCreoQueOdioGDD.paquete

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_ENVIO_ENVIO_MENSAJERIA
FOREIGN KEY (ID_ENVIO) REFERENCES MargeCreoQueOdioGDD.envio

-------------------------- RECLAMO --------------------------
-------------------------- reclamo --------------------------
ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_USUARIO_RECLAMO 
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario;

ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_PEDIDO_RECLAMO  
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.pedido;

ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_OPERADOR_RECLAMO  
FOREIGN KEY (ID_OPERADOR) REFERENCES MargeCreoQueOdioGDD.operador;

ALTER TABLE MargeCreoQueOdioGDD.reclamo
ADD CONSTRAINT FK_TIPO_RECLAMO_RECLAMO  
FOREIGN KEY (ID_TIPO_RECLAMO) REFERENCES MargeCreoQueOdioGDD.tipo_reclamo;

-------------------------- estadoxreclamo --------------------------
ALTER TABLE MargeCreoQueOdioGDD.estadoxreclamo
ADD CONSTRAINT FK_RECLAMO_ESTADOXRECLAMO
FOREIGN KEY (ID_RECLAMO) REFERENCES MargeCreoQueOdioGDD.reclamo

ALTER TABLE MargeCreoQueOdioGDD.estadoxreclamo
ADD CONSTRAINT FK_ESTADO_ESTADOXRECLAMO
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado_reclamo

-------------------------- operador --------------------------
ALTER TABLE MargeCreoQueOdioGDD.operador
ADD CONSTRAINT FK_DIRECCION_OPERADOR
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion

/*********************** Creamos los stores procedures ***********************/

/*********************** Realizamos la ejecución de los stores procedures ***********************/