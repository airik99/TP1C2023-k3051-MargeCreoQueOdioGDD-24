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
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuento_por_pedido')
DROP TABLE MargeCreoQueOdioGDD.descuento_por_pedido
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'pedido')
DROP TABLE MargeCreoQueOdioGDD.pedido
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'cupon_descuento')
DROP TABLE MargeCreoQueOdioGDD.cupon_descuento
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'tipo_cupon')
DROP TABLE MargeCreoQueOdioGDD.tipo_cupon
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'usuario')
DROP TABLE MargeCreoQueOdioGDD.usuario
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'descuento_por_reclamo')
DROP TABLE MargeCreoQueOdioGDD.descuento_por_reclamo
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

/***********************DROP PREVENTIVO DE VISTAS***********************/
/*IF EXISTS (SELECT name FROM sys.objects WHERE name = 'v_Sucursales')
DROP VIEW DROP_TABLE.v_Sucursales
GO*/
/*ESTO DE ACA ARRIBA ESTA COPIADO, HAY QUE MODIFICARLO SI ES QUE LO NECESITAMOS*/

/*********************** Limpiar Schema ***********************/
IF EXISTS (SELECT name FROM sys.schemas WHERE name = 'MargeCreoQueOdioGDD')
DROP SCHEMA MargeCreoQueOdioGDD
GO

/*********************** Creacion de Schema ***********************/
CREATE SCHEMA MargeCreoQueOdioGDD;
GO

/*********************** Creacion de tablas ***********************/

-------------------------- USUARIO --------------------------

-------------------------- LOCAL --------------------------

-------------------------- PEDIDO --------------------------

-------------------------- CUPON DE DESCUENTO --------------------------

-------------------------- MEDIO DE PAGO --------------------------

-------------------------- ENVIO --------------------------

-------------------------- REPARTIDOR --------------------------

-------------------------- DIRECCION --------------------------

-------------------------- ENVIO MENSAJERIA --------------------------
CREATE TABLE MargeCreoQueOdioGDD.estado_mensajeria(
ID INT IDENTITY(1,1), --PK /*identity hace que se autoincremente*/
NOMBRE NVARCHAR(255) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE MargeCreoQueOdioGDD.envio_mensajeria(
NRO_ENVIO_MENSAJERIA INT IDENTITY(1,1), --PK
NOMBRE NVARCHAR(255) NOT NULL,
ID_USUARIO INT NOT NULL, --FK
ID_DIRECCION_ORIGEN INT NOT NULL, --FK
ID_MEDIO_PAGO INT NOT NULL, --FK
ID_PAQUETE INT NOT NULL, --FK
FECHA_HORA_PEDIDO NVARCHAR(255),
FECHA_HORA_ENTREGA NVARCHAR(255),
ID_ESTADO INT NOT NULL, --FK
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

/*********************** Agregamos las FKs ***********************/

-------------------------- ENVIO MENSAJERIA --------------------------
ALTER TABLE MargeCreoQueOdioGDD.estadoxmensajeria
ADD CONSTRAINT FK_MENSAJERIA_ESTADOXMENSAJERIA 
FOREIGN KEY (ID_MENSAJERIA) REFERENCES MargeCreoQueOdioGDD.envio_mensajeria

ALTER TABLE MargeCreoQueOdioGDD.estadoxmensajeria
ADD CONSTRAINT FK_ESTADO_ESTADOXMENSAJERIA 
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado_mensajeria

ALTER TABLE MargeCreoQueOdioGDD.paquete
ADD CONSTRAINT FK_TIPO_PAQUETE
FOREIGN KEY (ID_TIPO_PAQUETE) REFERENCES MargeCreoQueOdioGDD.tipo_paquete

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_USUARIO
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.usuario

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_DIRECCION
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_MEDIO_DE_PAGO
FOREIGN KEY (ID_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.medio_de_pago

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_PAQUETE
FOREIGN KEY (ID_PAQUETE) REFERENCES MargeCreoQueOdioGDD.paquete

ALTER TABLE MargeCreoQueOdioGDD.envio_mensajeria
ADD CONSTRAINT FK_ESTADO
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.estado