USE GD1C2023
GO

/* --------------------------------------------- Limpiar funciones --------------------------------------------- */

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'obtenerHora')
DROP FUNCTION MargeCreoQueOdioGDD.obtenerHora

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'rangoHorario')
DROP FUNCTION MargeCreoQueOdioGDD.rangoHorario

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'rangoEtario')
DROP FUNCTION MargeCreoQueOdioGDD.rangoEtario

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'edadActual')
DROP FUNCTION MargeCreoQueOdioGDD.edadActual

/* --------------------------------------------- Limpiar tablas --------------------------------------------- */

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Reclamo')
DROP TABLE MargeCreoQueOdioGDD.BI_Reclamo;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Pedido')
DROP TABLE MargeCreoQueOdioGDD.BI_Pedido;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Cupon_Descuento')
DROP TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Envio_Mensajeria')
DROP TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Envio')
DROP TABLE MargeCreoQueOdioGDD.BI_Envio;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Local')
DROP TABLE MargeCreoQueOdioGDD.BI_Local;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Localidad')
DROP TABLE MargeCreoQueOdioGDD.BI_Localidad;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Operador')
DROP TABLE MargeCreoQueOdioGDD.BI_Operador;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Usuario')
DROP TABLE MargeCreoQueOdioGDD.BI_Usuario;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Repartidor')
DROP TABLE MargeCreoQueOdioGDD.BI_Repartidor;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Categoria_Local')
DROP TABLE MargeCreoQueOdioGDD.BI_Categoria_Local;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Tipo_Paquete')
DROP TABLE MargeCreoQueOdioGDD.BI_Tipo_Paquete;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Provincia')
DROP TABLE MargeCreoQueOdioGDD.BI_Provincia;
GO

/* --------------------------------------------- Creacion de funciones --------------------------------------------- */

CREATE FUNCTION MargeCreoQueOdioGDD.edadActual(@fecha_nacimiento datetime2(3)) RETURNS int AS -- te devuelve la edad segun una fecha de nacimiento
BEGIN DECLARE @edad int;
      DECLARE @fecha_actual datetime2(3) = GETDATE();
      SET @edad = DATEDIFF(YEAR, @fecha_nacimiento, @fecha_actual);
      IF (MONTH(@fecha_nacimiento) > MONTH(@fecha_actual) OR (MONTH(@fecha_nacimiento) = MONTH(@fecha_actual) AND DAY(@fecha_nacimiento) > DAY(@fecha_actual)))
        SET @edad = @edad - 1;
    RETURN @edad;
END;
GO

CREATE FUNCTION MargeCreoQueOdioGDD.rangoEtario (@edad int) RETURNS varchar(20) AS -- te devuelve el rango etario al que pertenece
BEGIN DECLARE @valor varchar(10);
    IF (@edad < 25) BEGIN SET @valor = '-25' END
    ELSE IF (@edad >= 25 AND @edad < 35) BEGIN SET @valor = '[25 - 35]' END
    ELSE IF (@edad >= 35 AND @edad < 55) BEGIN SET @valor = '[35 - 55]' END
    ELSE IF(@edad >= 55) BEGIN SET @valor = '+55' END
	RETURN @valor;
END
GO

CREATE FUNCTION MargeCreoQueOdioGDD.obtenerHora(@fechaHora datetime) RETURNS int AS -- recibe un datetime y devuelve solo la hora como int
BEGIN DECLARE @hora int;
    SET @hora = DATEPART(HOUR, @fechaHora);
    RETURN @hora;
END
GO

CREATE FUNCTION MargeCreoQueOdioGDD.rangoHorario (@hora int) RETURNS varchar(20) AS -- te devuelve el rango horario al que pertenece
BEGIN DECLARE @rango varchar(20);
    IF (@hora >= 8 AND @hora < 10) BEGIN SET @rango = '08:00 - 10:00' END
    ELSE IF (@hora >= 10 AND @hora < 12) BEGIN SET @rango = '10:00 - 12:00' END
    ELSE IF (@hora >= 12 AND @hora < 14) BEGIN SET @rango = '12:00 - 14:00' END
    ELSE IF (@hora >= 14 AND @hora < 16) BEGIN SET @rango = '14:00 - 16:00' END
    ELSE IF (@hora >= 16 AND @hora < 18) BEGIN SET @rango = '16:00 - 18:00' END
    ELSE IF (@hora >= 18 AND @hora < 20) BEGIN SET @rango = '18:00 - 20:00' END
    ELSE IF (@hora >= 20 AND @hora < 22) BEGIN SET @rango = '20:00 - 22:00' END
    ELSE IF (@hora >= 22 OR @hora = 0) BEGIN SET @rango = '22:00 - 00:00' END
    RETURN @rango;
END
GO

/* --------------------------------------------- Creacion de tablas dimensionales --------------------------------------------- */

CREATE TABLE MargeCreoQueOdioGDD.BI_Provincia (
	ID_PROVINCIA INT,
	PROVINCIA NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_PROVINCIA)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Localidad (
	ID_LOCALIDAD INT,
	LOCALIDAD NVARCHAR(255) NOT NULL,
	ID_PROVINCIA INT NOT NULL, -- FK
	PRIMARY KEY (ID_LOCALIDAD)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Categoria_Local (
	ID_CATEGORIA_LOCAL INT IDENTITY(1,1),
	CATEGORIA NVARCHAR(255),
	TIPO_LOCAL NVARCHAR(255),
	PRIMARY KEY (ID_CATEGORIA_LOCAL)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Local (
	ID_LOCAL INT IDENTITY(1,1),
	NOMBRE NVARCHAR(255),
	DESCRIPCION NVARCHAR(255),
	ID_CATEGORIA INT NOT NULL, -- FK
	ID_LOCALIDAD INT NOT NULL, -- FK
	PRIMARY KEY (ID_LOCAL)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Repartidor (
	ID_REPARTIDOR INT IDENTITY(1,1),
	RANGO_ETARIO NVARCHAR(255),
	TIPO_MOVILIDAD NVARCHAR(255),
	PRIMARY KEY (ID_REPARTIDOR)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Usuario (
	ID_USUARIO INT IDENTITY(1,1),
	RANGO_ETARIO NVARCHAR(255),
	FECHA_NACIMIENTO DATE,
	PRIMARY KEY (ID_USUARIO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Operador (
	ID_OPERADOR INT IDENTITY(1,1),
	RANGO_ETARIO NVARCHAR(255),
	PRIMARY KEY (ID_OPERADOR)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Tipo_Paquete (
	ID_TIPO_PAQUETE INT IDENTITY(1,1),
	TIPO_PAQUETE NVARCHAR(255),
	VALOR_ASEGURADO FLOAT,
	PRIMARY KEY (ID_TIPO_PAQUETE)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Envio (
	NRO_ENVIO INT IDENTITY(1,1),
	ID_LOCALIDAD_DESTINO INT NOT NULL, -- FK
	ID_REPARTIDOR INT NOT NULL, -- FK
	PRECIO_ENVIO FLOAT,
	TIEMPO_ESTIMADO_ENTREGA DECIMAL,
	PRIMARY KEY (NRO_ENVIO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Reclamo (
	NRO_RECLAMO INT NOT NULL,
	ID_OPERADOR INT NOT NULL, -- FK
	ESTADO NVARCHAR(255),
	TIPO_RECLAMO NVARCHAR(255),
	ANIO_INICIO INT NOT NULL,
	MES_INICIO INT NOT NULL,
	ID_PEDIDO INT NOT NULL, --FK -- POR AHI PODEMOS CAMBIARLO POR LOCAL
	DIA_INICIO NVARCHAR(50),
	RANGO_HORARIO_APERTURA NVARCHAR(255),
	ANIO_SOLUCION INT NOT NULL,
	MES_SOLUCION INT NOT NULL,
	DIA_SOLUCION NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_SOLUCION NVARCHAR(255),
	TIEMPO_RESOLUCION FLOAT NOT NULL, -- Tiempo que tardo en resolverse el reclamo (metrica)
	PRIMARY KEY (NRO_RECLAMO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento (
	CODIGO INT NOT NULL,
	ID_USUARIO INT NOT NULL, -- FK
	TIPO_CUPON NVARCHAR(255),
	ANIO_ALTA INT NOT NULL,
	MES_ALTA INT NOT NULL,
	DIA_ALTA INT NOT NULL,
	RANGO_HORARIO_ALTA NVARCHAR(255),
	ANIO_VENCIMIENTO INT NOT NULL,
	MES_VENCIMIENTO INT NOT NULL,
	DIA_VENCIMIENTO INT NOT NULL,
	RANGO_HORARIO_VENCIMIENTO NVARCHAR(255),
	MONTO FLOAT,
	PRIMARY KEY (CODIGO)
);

/* --------------------------------------------- Tablas de hechos --------------------------------------------- */

CREATE TABLE MargeCreoQueOdioGDD.BI_Pedido (
	NRO_PEDIDO INT NOT NULL,
	ANIO_PEDIDO INT NOT NULL,
	MES_PEDIDO INT NOT NULL,
	DIA_PEDIDO NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_PEDIDO NVARCHAR(255) NOT NULL,
	ANIO_ENTREGA INT NOT NULL,
	MES_ENTREGA INT NOT NULL,
	DIA_ENTREGA NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_ENTREGA NVARCHAR(255) NOT NULL,
	ID_LOCAL INT NOT NULL, -- FK
	ID_ENVIO INT NOT NULL, -- FK
	TIPO_MEDIO_PAGO NVARCHAR(255),
	ESTADO NVARCHAR(255),
	ID_USUARIO INT NOT NULL, -- FK
	TIEMPO_TOTAL_ENTREGA FLOAT NOT NULL, -- Esta es la diferencia entre la fecha en que se realizó el pedido y la fecha en que se entregó
	TARIFA_SERVICIO FLOAT NOT NULL,
	TOTAL_PRODUCTOS FLOAT NOT NULL,
	TOTAL_CUPONES FLOAT NOT NULL,
	TOTAL_SERVICIO FLOAT NOT NULL,
	TOTAL_PEDIDO FLOAT NOT NULL,
	CALIFICACION DECIMAL(5,1),
	PRIMARY KEY (NRO_PEDIDO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria (
	NRO_ENVIO_MENSAJERIA INT NOT NULL,
	ID_LOCALIDAD_ORIGEN INT NOT NULL, -- FK
	ID_TIPO_PAQUETE INT NOT NULL, -- FK
	ID_ENVIO INT NOT NULL, -- FK
	TIPO_MEDIO_PAGO NVARCHAR(255),
	ANIO_PEDIDO INT NOT NULL,
	MES_PEDIDO INT NOT NULL,
	DIA_PEDIDO NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_PEDIDO NVARCHAR(255),
	ANIO_ENTREGA INT NOT NULL,
	MES_ENTREGA INT NOT NULL,
	DIA_ENTREGA NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_ENTREGA NVARCHAR(255),
	TIEMPO_TOTAL_ENTREGA FLOAT NOT NULL, -- Esta es la diferencia entre la fecha en que se realizó el pedido y la fecha en que se entregó
	ESTADO NVARCHAR(255),
	TOTAL_SERVICIO_MENSAJERIA FLOAT NOT NULL,
	PRIMARY KEY (NRO_ENVIO_MENSAJERIA)
);

/* --------------------------------------------- Alter tables de las tablas dimensionales --------------------------------------------- */

-- Localidad
ALTER TABLE MargeCreoQueOdioGDD.BI_Localidad
ADD CONSTRAINT FK_BI_PROVINCIA_ID
FOREIGN KEY (ID_PROVINCIA) REFERENCES MargeCreoQueOdioGDD.BI_Provincia

-- Local
ALTER TABLE MargeCreoQueOdioGDD.BI_Local
ADD CONSTRAINT FK_BI_CATEGORIA_LOCAL_ID
FOREIGN KEY (ID_CATEGORIA) REFERENCES MargeCreoQueOdioGDD.BI_Categoria_Local

ALTER TABLE MargeCreoQueOdioGDD.BI_Local
ADD CONSTRAINT FK_BI_LOCALIDAD_LOCAL_ID
FOREIGN KEY (ID_LOCALIDAD) REFERENCES MargeCreoQueOdioGDD.BI_Localidad

-- Envio
ALTER TABLE MargeCreoQueOdioGDD.BI_Envio
ADD CONSTRAINT FK_BI_LOCALIDAD_DESTINO_ENVIO_ID
FOREIGN KEY (ID_LOCALIDAD_DESTINO) REFERENCES MargeCreoQueOdioGDD.BI_Localidad

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio
ADD CONSTRAINT FK_BI_REPARTIDOR_ENVIO_ID
FOREIGN KEY (ID_REPARTIDOR) REFERENCES MargeCreoQueOdioGDD.BI_Repartidor

-- Reclamo
ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_OPERADOR_RECLAMO_ID
FOREIGN KEY (ID_OPERADOR) REFERENCES MargeCreoQueOdioGDD.BI_Operador

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_PEDIDO_RECLAMO_ID
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Pedido

-- Cupones
ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_USUARIO_CUPON_ID
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.BI_Usuario

/* --------------------------------------------- Alter tables de las tablas de hechos --------------------------------------------- */

-- Pedido
ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_LOCAL_PEDIDO_ID
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.BI_Local

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_ENVIO_PEDIDO_ID
FOREIGN KEY (ID_ENVIO) REFERENCES MargeCreoQueOdioGDD.BI_Envio

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_USUARIO_PEDIDO_ID
FOREIGN KEY (ID_USUARIO) REFERENCES MargeCreoQueOdioGDD.BI_Usuario

-- Servicio de mensajeria
ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_LOCALIDAD_ORIGEN_MENSAJERIA_ID
FOREIGN KEY (ID_LOCALIDAD_ORIGEN) REFERENCES MargeCreoQueOdioGDD.BI_Localidad

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIPO_PAQUETE_MENSAJERIA_ID
FOREIGN KEY (ID_TIPO_PAQUETE) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Paquete

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_ENVIO_MENSAJERIA_ID
FOREIGN KEY (ID_ENVIO) REFERENCES MargeCreoQueOdioGDD.BI_Envio
GO

/* Creacion de procedures para cargar todas las tablas utilizando los datos ya migrados al modelo de datos transaccional */

-- Provincias
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_provincia')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_provincia
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_provincia
AS
BEGIN
	PRINT 'Se comienzan a migrar las pronvicias...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Provincia(ID_PROVINCIA, PROVINCIA)
	SELECT ID_PROVINCIA, NOMBRE
	FROM MargeCreoQueOdioGDD.provincia
END
GO

-- Localidades
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_localidad')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_localidad
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_localidad
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las localidades...'
    INSERT INTO MargeCreoQueOdioGDD.BI_Localidad (ID_LOCALIDAD, LOCALIDAD, ID_PROVINCIA)
		SELECT ID_LOCALIDAD, NOMBRE, ID_PROVINCIA
		FROM MargeCreoQueOdioGDD.localidad
  END
GO

-- Categorias
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_categoria_local')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_categoria_local
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_categoria_local
AS
BEGIN
    PRINT 'Se comienzan a migrar las categorias de los locales...'
    DECLARE @CategoriaID INT
    DECLARE curCategoria CURSOR FOR
    SELECT ID_CATEGORIA, NOMBRE, ID_TIPO
    FROM MargeCreoQueOdioGDD.categoria_local
    DECLARE @Nombre VARCHAR(100);
    DECLARE @TipoLocalID INT;
    OPEN curCategoria;
    FETCH NEXT FROM curCategoria INTO @CategoriaID, @Nombre, @TipoLocalID;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @TipoLocalNombre VARCHAR(100);
        SELECT @TipoLocalNombre = NOMBRE
        FROM MargeCreoQueOdioGDD.tipo_local
        WHERE ID_TIPO = @TipoLocalID;
        INSERT INTO MargeCreoQueOdioGDD.BI_Categoria_Local (CATEGORIA, TIPO_LOCAL)
        VALUES (@Nombre, @TipoLocalNombre);
        FETCH NEXT FROM curCategoria INTO @CategoriaID, @Nombre, @TipoLocalID;
    END
    CLOSE curCategoria
    DEALLOCATE curCategoria
END
GO

-- Local
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_local')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_local
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_local
AS
BEGIN
    PRINT 'Se comienzan a migrar los locales...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Local (NOMBRE, DESCRIPCION, ID_CATEGORIA, ID_LOCALIDAD)
    SELECT L.NOMBRE, L.DESCRIPCION, L.ID_CATEGORIA, D.ID_LOCALIDAD
    FROM MargeCreoQueOdioGDD.local L
    INNER JOIN MargeCreoQueOdioGDD.direccion D ON L.ID_DIRECCION = D.ID_DIRECCION
    INNER JOIN MargeCreoQueOdioGDD.BI_Localidad LD ON D.ID_LOCALIDAD = LD.ID_LOCALIDAD;
END
GO

-- Repartidor
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_repartidor')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_repartidor
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_repartidor
AS
BEGIN
    PRINT 'Se comienzan a migrar los repartidores...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Repartidor(RANGO_ETARIO, TIPO_MOVILIDAD)
    SELECT MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(FECHA_NACIMIENTO)), T.TIPO_MOVILIDAD
    FROM MargeCreoQueOdioGDD.repartidor R
    INNER JOIN MargeCreoQueOdioGDD.tipo_movilidad T ON T.ID_TIPO = R.ID_TIPO_MOVILIDAD
END
GO

-- Usuario
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_usuario')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_usuario
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_usuario
AS
BEGIN
    PRINT 'Se comienzan a migrar los usuarios...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Usuario(RANGO_ETARIO, FECHA_NACIMIENTO)
    SELECT MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(FECHA_NACIMIENTO)), FECHA_NACIMIENTO
    FROM MargeCreoQueOdioGDD.usuario
END
GO

-- Operador
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_operador')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_operador
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_operador
AS
BEGIN
    PRINT 'Se comienzan a migrar los operadores...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Operador(RANGO_ETARIO)
    SELECT MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(FECHA_NACIMIENTO))
    FROM MargeCreoQueOdioGDD.operador
END
GO

-- Tipo Paquete
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_tipo_paquete')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_paquete
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_paquete
AS
BEGIN
    PRINT 'Se comienzan a migrar los tipos paquete...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Tipo_Paquete(TIPO_PAQUETE, VALOR_ASEGURADO)
    SELECT TIPO_PAQUETE, VALOR_ASEGURADO
    FROM MargeCreoQueOdioGDD.tipo_paquete
END
GO

-- Envio
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_envios')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_paquete
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envios
AS
BEGIN
    PRINT 'Se comienzan a migrar los envios...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Envio(ID_LOCALIDAD_DESTINO, ID_REPARTIDOR, PRECIO_ENVIO, TIEMPO_ESTIMADO_ENTREGA)
    SELECT localidad.ID_LOCALIDAD,
		   envio.ID_REPARTIDOR,
		   envio.PRECIO_ENVIO,
		   envio.TIEMPO_ESTIMADO_ENTREGA
    FROM MargeCreoQueOdioGDD.envio
	INNER JOIN MargeCreoQueOdioGDD.direccion ON envio.ID_DIRECCION_DESTINO = direccion.ID_DIRECCION
	INNER JOIN MargeCreoQueOdioGDD.localidad ON direccion.ID_LOCALIDAD = localidad.ID_LOCALIDAD
END
GO

-- Pedido
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_pedidos')
DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_pedidos
GO

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_pedidos
AS
BEGIN
    PRINT 'Se comienzan a migrar los pedidos...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Pedido(NRO_PEDIDO, ANIO_PEDIDO, MES_PEDIDO, DIA_PEDIDO, RANGO_HORARIO_PEDIDO, ANIO_ENTREGA, MES_ENTREGA,
											DIA_ENTREGA, RANGO_HORARIO_ENTREGA, ID_LOCAL, ID_ENVIO, TIPO_MEDIO_PAGO, ESTADO, ID_USUARIO, 
											TIEMPO_TOTAL_ENTREGA, TARIFA_SERVICIO, TOTAL_PRODUCTOS, TOTAL_CUPONES, TOTAL_SERVICIO, TOTAL_PEDIDO, CALIFICACION)
    SELECT pedido.NRO_PEDIDO,
		   YEAR(pedido.FECHA_HORA_PEDIDO) AS ANIO_PEDIDO,
		   MONTH(pedido.FECHA_HORA_PEDIDO) AS MES_PEDIDO,
		   DAY(pedido.FECHA_HORA_PEDIDO) AS DIA_PEDIDO,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(pedido.FECHA_HORA_PEDIDO)) AS RANGO_HORARIO_PEDIDO,
		   YEAR(pedido.FECHA_HORA_ENTREGA) AS ANIO_ENTREGA,
		   MONTH(pedido.FECHA_HORA_ENTREGA) AS MES_ENTREGA,
		   DAY(pedido.FECHA_HORA_ENTREGA) AS DIA_ENTREGA,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(pedido.FECHA_HORA_ENTREGA)) AS RANGO_HORARIO_ENTREGA,
		   pedido.ID_LOCAL,
		   pedido.ID_ENVIO,
		   tipo_medio_pago.TIPO_PAGO,
		   -- ESTADO
		   pedido.ID_USUARIO,
		   --(pedido.FECHA_HORA_ENTREGA - pedido.FECHA_HORA_PEDIDO) AS TIEMPO_TOTAL_ENTREGA,
		   pedido.TARIFA_SERVICIO,
		   pedido.TOTAL_PRODUCTOS,
		   pedido.TOTAL_CUPONES,
		   pedido.TOTAL_SERVICIO,
		   pedido.TOTAL_PEDIDO,
		   pedido.CALIFICACION
    FROM MargeCreoQueOdioGDD.pedido
	INNER JOIN MargeCreoQueOdioGDD.medio_de_pago ON pedido.ID_MEDIO_DE_PAGO = medio_de_pago.ID_MEDIO_PAGO
	INNER JOIN MargeCreoQueOdioGDD.tipo_medio_pago ON medio_de_pago.ID_TIPO_MEDIO_PAGO = tipo_medio_pago.ID_TIPO
END
GO

-- Envio Mensajeria


-- Reclamo


-- Cupon Descuento


/* Creacion de vistas */


/* Ejecución de la migración */

exec MargeCreoQueOdioGDD.migrar_BI_provincia;
exec MargeCreoQueOdioGDD.migrar_BI_localidad;
exec MargeCreoQueOdioGDD.migrar_BI_categoria_local;
exec MargeCreoQueOdioGDD.migrar_BI_local;
exec MargeCreoQueOdioGDD.migrar_BI_repartidor;
exec MargeCreoQueOdioGDD.migrar_BI_usuario;
exec MargeCreoQueOdioGDD.migrar_BI_operador;
exec MargeCreoQueOdioGDD.migrar_tipos_paquetes;
exec MargeCreoQueOdioGDD.migrar_BI_envios;