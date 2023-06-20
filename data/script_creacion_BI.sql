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

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'calcularDiferenciaMinutos')
DROP FUNCTION MargeCreoQueOdioGDD.calcularDiferenciaMinutos

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'diaSemana')
DROP FUNCTION MargeCreoQueOdioGDD.diaSemana

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'mesDelAnio')
DROP FUNCTION MargeCreoQueOdioGDD.mesDelAnio

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

/* --------------------------------------------- Limpiar vistas --------------------------------------------- */
IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_MayorCantidadPedidos')
    DROP VIEW MargeCreoQueOdioGDD.V_MayorCantidadPedidos;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_MontoTotalXPedidosCancelados')
    DROP VIEW MargeCreoQueOdioGDD.V_MontoTotalXPedidosCancelados;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_ValorEnvioPromedioMensualXLocalidad')
    DROP VIEW MargeCreoQueOdioGDD.V_ValorEnvioPromedioMensualXLocalidad;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_DesvioPromedioEnTiempoDeEntrega')
    DROP VIEW MargeCreoQueOdioGDD.V_DesvioPromedioEnTiempoDeEntrega;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_MontoTotalDeCuponesUsadosXMes')
    DROP VIEW MargeCreoQueOdioGDD.V_MontoTotalDeCuponesUsadosXMes;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_ValorAseguradoPromedioMensual')
    DROP VIEW MargeCreoQueOdioGDD.V_ValorAseguradoPromedioMensual;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_CantidadReclamosMensuales')
    DROP VIEW MargeCreoQueOdioGDD.V_CantidadReclamosMensuales;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_TiempoPromedioResolucion')
    DROP VIEW MargeCreoQueOdioGDD.V_TiempoPromedioResolucion;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_PorcentajeEntregasMensuales')
    DROP VIEW MargeCreoQueOdioGDD.V_PorcentajeEntregasMensuales;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_PromedioCalificacionMensual')
    DROP VIEW MargeCreoQueOdioGDD.V_PromedioCalificacionMensual;
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_MontoMensualGenerado')
    DROP VIEW MargeCreoQueOdioGDD.V_MontoMensualGenerado;
GO

/* --------------------------------------------- Limpiar procedures --------------------------------------------- */

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_provincia')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_provincia
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_localidad')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_localidad
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_categoria_local')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_categoria_local
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_local')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_local
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_repartidor')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_repartidor
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_usuario')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_usuario
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_operador')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_operador
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_tipo_paquete')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_paquete
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_envios')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envios
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_pedidos')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_pedidos
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_envio_mensajeria')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envio_mensajeria
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_reclamo')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_reclamo
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_cupon_descuento')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_cupon_descuento
GO

/* --------------------------------------------- Creacion de funciones --------------------------------------------- */

CREATE FUNCTION MargeCreoQueOdioGDD.calcularDiferenciaMinutos(@fecha_inicio DATETIME, @fecha_fin DATETIME) RETURNS FLOAT AS
BEGIN DECLARE @diferencia_minutos FLOAT;
  SET @diferencia_minutos = DATEDIFF(MINUTE, @fecha_inicio, @fecha_fin);
  RETURN @diferencia_minutos;
END;
GO

CREATE FUNCTION MargeCreoQueOdioGDD.edadActual(@fecha_nacimiento datetime2(3)) RETURNS int AS 
BEGIN DECLARE @edad int;
      DECLARE @fecha_actual datetime2(3) = GETDATE();
      SET @edad = DATEDIFF(YEAR, @fecha_nacimiento, @fecha_actual);
      IF (MONTH(@fecha_nacimiento) > MONTH(@fecha_actual) OR (MONTH(@fecha_nacimiento) = MONTH(@fecha_actual) AND DAY(@fecha_nacimiento) > DAY(@fecha_actual)))
        SET @edad = @edad - 1;
    RETURN @edad;
END;
GO

CREATE FUNCTION MargeCreoQueOdioGDD.rangoEtario (@edad int) RETURNS varchar(20) AS
BEGIN DECLARE @valor varchar(10);
    IF (@edad < 25) BEGIN SET @valor = '-25' END
    ELSE IF (@edad >= 25 AND @edad < 35) BEGIN SET @valor = '[25 - 35]' END
    ELSE IF (@edad >= 35 AND @edad < 55) BEGIN SET @valor = '[35 - 55]' END
    ELSE IF(@edad >= 55) BEGIN SET @valor = '+55' END
	RETURN @valor;
END
GO

CREATE FUNCTION MargeCreoQueOdioGDD.obtenerHora(@fechaHora datetime) RETURNS int AS 
BEGIN DECLARE @hora int;
    SET @hora = DATEPART(HOUR, @fechaHora);
    RETURN @hora;
END
GO

CREATE FUNCTION MargeCreoQueOdioGDD.rangoHorario (@hora int) RETURNS varchar(20) AS 
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

CREATE FUNCTION MargeCreoQueOdioGDD.diaSemana (@DiaSemanaIngles NVARCHAR(50)) RETURNS NVARCHAR(50) AS
BEGIN DECLARE @DiaSemanaEspanol NVARCHAR(50);
    SET @DiaSemanaEspanol = 
        CASE UPPER(@DiaSemanaIngles)
            WHEN 'MONDAY' THEN 'Lunes'
            WHEN 'TUESDAY' THEN 'Martes'
            WHEN 'WEDNESDAY' THEN 'Miercoles'
            WHEN 'THURSDAY' THEN 'Jueves'
            WHEN 'FRIDAY' THEN 'Viernes'
            WHEN 'SATURDAY' THEN 'Sabado'
            WHEN 'SUNDAY' THEN 'Domingo'
            ELSE @DiaSemanaIngles
        END;
    RETURN @DiaSemanaEspanol;
END;
GO

CREATE FUNCTION MargeCreoQueOdioGDD.mesDelAnio (@NumeroMes INT) RETURNS NVARCHAR(50) AS
BEGIN DECLARE @NombreMes NVARCHAR(50);
    SET @NombreMes = 
    	CASE @NumeroMes
            WHEN '1' THEN 'Enero'
            WHEN '2' THEN 'Febrero'
            WHEN '3' THEN 'Marzo'
            WHEN '4' THEN 'Abril'
            WHEN '5' THEN 'Mayo'
            WHEN '6' THEN 'Junio'
            WHEN '7' THEN 'Julio'
			WHEN '8' THEN 'Agosto'
			WHEN '9' THEN 'Septiembre'
			WHEN '10' THEN 'Octubre'
			WHEN '11' THEN 'Noviembre'
			WHEN '12' THEN 'Diciembre'
		END;
    RETURN @NombreMes;
END;
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
	NRO_ENVIO INT NOT NULL,
	ID_LOCALIDAD_DESTINO INT NOT NULL, -- FK
	ID_REPARTIDOR INT NOT NULL, -- FK
	PRECIO_ENVIO FLOAT,
	TIEMPO_ESTIMADO_ENTREGA DECIMAL,
	PRIMARY KEY (NRO_ENVIO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento (
	CODIGO INT NOT NULL,
	ID_USUARIO INT NOT NULL, -- FK
	TIPO_CUPON NVARCHAR(255),
	ANIO_ALTA INT NOT NULL,
	MES_ALTA NVARCHAR(50) NOT NULL,
	DIA_ALTA NVARCHAR(255) NOT NULL,
	RANGO_HORARIO_ALTA NVARCHAR(255),
	ANIO_VENCIMIENTO INT NOT NULL,
	MES_VENCIMIENTO NVARCHAR(50) NOT NULL,
	DIA_VENCIMIENTO NVARCHAR(255) NOT NULL,
	RANGO_HORARIO_VENCIMIENTO NVARCHAR(255),
	RECLAMO NVARCHAR(10),
	MONTO FLOAT,
	PRIMARY KEY (CODIGO)
);

/* --------------------------------------------- Tablas de hechos --------------------------------------------- */

CREATE TABLE MargeCreoQueOdioGDD.BI_Reclamo (
	NRO_RECLAMO INT NOT NULL,
	ID_OPERADOR INT NOT NULL, -- FK
	ID_PEDIDO INT NOT NULL, --FK -- POR AHI PODEMOS CAMBIARLO POR LOCAL
	ESTADO NVARCHAR(255),
	TIPO_RECLAMO NVARCHAR(255),
	ANIO_INICIO INT NOT NULL,
	MES_INICIO NVARCHAR(50) NOT NULL,
	DIA_INICIO NVARCHAR(50),
	RANGO_HORARIO_APERTURA NVARCHAR(255),
	ANIO_SOLUCION INT NOT NULL,
	MES_SOLUCION NVARCHAR(50) NOT NULL,
	DIA_SOLUCION NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_SOLUCION NVARCHAR(255),
	TIEMPO_TOTAL_RESOLUCION FLOAT NOT NULL, -- Tiempo que tardo en resolverse el reclamo (metrica)
	PRIMARY KEY (NRO_RECLAMO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Pedido (
	NRO_PEDIDO INT NOT NULL,
	ANIO_PEDIDO INT NOT NULL,
	MES_PEDIDO NVARCHAR(50) NOT NULL,
	DIA_PEDIDO NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_PEDIDO NVARCHAR(255) NOT NULL,
	ANIO_ENTREGA INT NOT NULL,
	MES_ENTREGA NVARCHAR(50) NOT NULL,
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
	MES_PEDIDO NVARCHAR(50) NOT NULL,
	DIA_PEDIDO NVARCHAR(50) NOT NULL,
	RANGO_HORARIO_PEDIDO NVARCHAR(255),
	ANIO_ENTREGA INT NOT NULL,
	MES_ENTREGA NVARCHAR(50) NOT NULL,
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

/* -------- Creacion de procedures para cargar todas las tablas utilizando los datos ya migrados al modelo de datos transaccional -------- */

-- Provincias
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_provincia
AS
BEGIN
	PRINT 'Se comienzan a migrar las provincias...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Provincia(ID_PROVINCIA, PROVINCIA)
	SELECT ID_PROVINCIA, NOMBRE
	FROM MargeCreoQueOdioGDD.provincia
END
GO

-- Localidades
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
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envios
AS
BEGIN
    PRINT 'Se comienzan a migrar los envios...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Envio(NRO_ENVIO, ID_LOCALIDAD_DESTINO, ID_REPARTIDOR, PRECIO_ENVIO, TIEMPO_ESTIMADO_ENTREGA)
    SELECT envio.NRO_ENVIO,
	       localidad.ID_LOCALIDAD,
		   envio.ID_REPARTIDOR,
		   envio.PRECIO_ENVIO,
		   envio.TIEMPO_ESTIMADO_ENTREGA
    FROM MargeCreoQueOdioGDD.envio
	INNER JOIN MargeCreoQueOdioGDD.direccion ON envio.ID_DIRECCION_DESTINO = direccion.ID_DIRECCION
	INNER JOIN MargeCreoQueOdioGDD.localidad ON direccion.ID_LOCALIDAD = localidad.ID_LOCALIDAD
END
GO

-- Pedido
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_pedidos
AS
BEGIN
    PRINT 'Se comienzan a migrar los pedidos...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Pedido(NRO_PEDIDO, ANIO_PEDIDO, MES_PEDIDO, DIA_PEDIDO, RANGO_HORARIO_PEDIDO, ANIO_ENTREGA, MES_ENTREGA,
											DIA_ENTREGA, RANGO_HORARIO_ENTREGA, ID_LOCAL, ID_ENVIO, TIPO_MEDIO_PAGO, ESTADO, ID_USUARIO, 
											TIEMPO_TOTAL_ENTREGA, TARIFA_SERVICIO, TOTAL_PRODUCTOS, TOTAL_CUPONES, TOTAL_SERVICIO, TOTAL_PEDIDO, CALIFICACION)
    SELECT pedido.NRO_PEDIDO,
		   YEAR(pedido.FECHA_HORA_PEDIDO) AS ANIO_PEDIDO,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(pedido.FECHA_HORA_PEDIDO)) AS MES_PEDIDO,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, pedido.FECHA_HORA_PEDIDO)) AS DIA_PEDIDO,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(pedido.FECHA_HORA_PEDIDO)) AS RANGO_HORARIO_PEDIDO,
		   YEAR(pedido.FECHA_HORA_ENTREGA) AS ANIO_ENTREGA,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(pedido.FECHA_HORA_ENTREGA)) AS MES_ENTREGA,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, pedido.FECHA_HORA_ENTREGA)) AS DIA_ENTREGA,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(pedido.FECHA_HORA_ENTREGA)) AS RANGO_HORARIO_ENTREGA,
		   pedido.ID_LOCAL,
		   pedido.ID_ENVIO,
		   tipo_medio_pago.TIPO_PAGO,
		   estado_pedido.NOMBRE,
		   pedido.ID_USUARIO,
		   MargeCreoQueOdioGDD.calcularDiferenciaMinutos(FECHA_HORA_PEDIDO, FECHA_HORA_ENTREGA) AS TIEMPO_TOTAL_ENTREGA, 
		   pedido.TARIFA_SERVICIO,
		   pedido.TOTAL_PRODUCTOS,
		   pedido.TOTAL_CUPONES,
		   pedido.TOTAL_SERVICIO,
		   pedido.TOTAL_PEDIDO,
		   pedido.CALIFICACION
    FROM MargeCreoQueOdioGDD.pedido
	INNER JOIN MargeCreoQueOdioGDD.estado_pedido ON pedido.ID_ESTADO = estado_pedido.ID_ESTADO
	INNER JOIN MargeCreoQueOdioGDD.medio_de_pago ON pedido.ID_MEDIO_DE_PAGO = medio_de_pago.ID_MEDIO_PAGO
	INNER JOIN MargeCreoQueOdioGDD.tipo_medio_pago ON medio_de_pago.ID_TIPO_MEDIO_PAGO = tipo_medio_pago.ID_TIPO
END
GO

-- Envio Mensajeria
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envio_mensajeria
AS
BEGIN
    PRINT 'Se comienzan a migrar los envios mensajeria...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Envio_Mensajeria(NRO_ENVIO_MENSAJERIA, ID_LOCALIDAD_ORIGEN, ID_TIPO_PAQUETE, TIPO_MEDIO_PAGO, ID_ENVIO, ANIO_PEDIDO, MES_PEDIDO, DIA_PEDIDO,
	                                                    RANGO_HORARIO_PEDIDO, ANIO_ENTREGA, MES_ENTREGA, DIA_ENTREGA, RANGO_HORARIO_ENTREGA, TIEMPO_TOTAL_ENTREGA, ESTADO, TOTAL_SERVICIO_MENSAJERIA)
    SELECT envio_mensajeria.NRO_ENVIO_MENSAJERIA,
		   direccion.ID_LOCALIDAD,
		   tipo_paquete.ID_TIPO_PAQUETE,
		   tipo_medio_pago.TIPO_PAGO,
		   envio_mensajeria.ID_ENVIO,
		   YEAR(envio_mensajeria.FECHA_HORA_PEDIDO) AS ANIO_PEDIDO,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(envio_mensajeria.FECHA_HORA_PEDIDO)) AS MES_PEDIDO,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, envio_mensajeria.FECHA_HORA_PEDIDO)) AS DIA_PEDIDO,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(envio_mensajeria.FECHA_HORA_PEDIDO)) AS RANGO_HORARIO_PEDIDO,
		   YEAR(envio_mensajeria.FECHA_HORA_ENTREGA) AS ANIO_ENTREGA,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(envio_mensajeria.FECHA_HORA_ENTREGA)) AS MES_ENTREGA,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, envio_mensajeria.FECHA_HORA_ENTREGA)) AS DIA_ENTREGA,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(envio_mensajeria.FECHA_HORA_ENTREGA)) AS RANGO_HORARIO_ENTREGA,
		   MargeCreoQueOdioGDD.calcularDiferenciaMinutos(FECHA_HORA_PEDIDO, FECHA_HORA_ENTREGA) AS TIEMPO_TOTAL_ENTREGA, 
		   estado_mensajeria.NOMBRE,
		   envio_mensajeria.TOTAL_SERVICIO_MENSAJERIA
    FROM MargeCreoQueOdioGDD.envio_mensajeria
	INNER JOIN MargeCreoQueOdioGDD.direccion ON envio_mensajeria.ID_DIRECCION_ORIGEN = direccion.ID_DIRECCION
	INNER JOIN MargeCreoQueOdioGDD.estado_mensajeria ON envio_mensajeria.ID_ESTADO = estado_mensajeria.ID_ESTADO
	INNER JOIN MargeCreoQueOdioGDD.tipo_paquete ON envio_mensajeria.ID_TIPO_PAQUETE = tipo_paquete.ID_TIPO_PAQUETE
	INNER JOIN MargeCreoQueOdioGDD.medio_de_pago ON envio_mensajeria.ID_MEDIO_PAGO = medio_de_pago.ID_MEDIO_PAGO
	INNER JOIN MargeCreoQueOdioGDD.tipo_medio_pago ON medio_de_pago.ID_TIPO_MEDIO_PAGO = tipo_medio_pago.ID_TIPO
END
GO

-- Reclamo
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_reclamo
AS
BEGIN
    PRINT 'Se comienzan a migrar los reclamos...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Reclamo(NRO_RECLAMO, ID_OPERADOR, ID_PEDIDO, ESTADO, TIPO_RECLAMO, ANIO_INICIO, MES_INICIO, DIA_INICIO,
											   RANGO_HORARIO_APERTURA, ANIO_SOLUCION, MES_SOLUCION, DIA_SOLUCION, RANGO_HORARIO_SOLUCION, TIEMPO_TOTAL_RESOLUCION)
    SELECT reclamo.NRO_RECLAMO,
		   reclamo.ID_OPERADOR,
		   reclamo.ID_PEDIDO,
		   estado_reclamo.NOMBRE,
		   tipo_reclamo.TIPO_RECLAMO,
		   YEAR(reclamo.FECHA_HORA_INICIO) AS ANIO_INICIO,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(reclamo.FECHA_HORA_INICIO)) AS MES_INICIO,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, reclamo.FECHA_HORA_INICIO)) AS DIA_INICIO,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(reclamo.FECHA_HORA_INICIO)) AS RANGO_HORARIO_APERTURA,
		   YEAR(reclamo.FECHA_HORA_SOLUCION) AS ANIO_SOLUCION,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(reclamo.FECHA_HORA_SOLUCION)) AS MES_SOLUCION,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, reclamo.FECHA_HORA_SOLUCION)) AS DIA_SOLUCION,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(reclamo.FECHA_HORA_SOLUCION)) AS RANGO_HORARIO_SOLUCION,
		   MargeCreoQueOdioGDD.calcularDiferenciaMinutos(FECHA_HORA_INICIO, FECHA_HORA_SOLUCION) AS TIEMPO_TOTAL_RESOLUCION
    FROM MargeCreoQueOdioGDD.reclamo
	INNER JOIN MargeCreoQueOdioGDD.estado_reclamo ON reclamo.ID_ESTADO = estado_reclamo.ID_ESTADO
	INNER JOIN MargeCreoQueOdioGDD.tipo_reclamo ON reclamo.ID_TIPO_RECLAMO = tipo_reclamo.ID_TIPO_RECLAMO
END
GO

-- Cupon Descuento
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_cupon_descuento
AS
BEGIN
    PRINT 'Se comienzan a migrar los cupones de descuento...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Cupon_Descuento(CODIGO, ID_USUARIO, TIPO_CUPON, ANIO_ALTA, MES_ALTA, DIA_ALTA, RANGO_HORARIO_ALTA, 
													   ANIO_VENCIMIENTO, MES_VENCIMIENTO, DIA_VENCIMIENTO, RANGO_HORARIO_VENCIMIENTO, RECLAMO, MONTO)
    SELECT cupon_descuento.CODIGO,
		   cupon_descuento.ID_USUARIO,
		   tipo_cupon.TIPO_CUPON,
		   YEAR(cupon_descuento.FECHA_ALTA) AS ANIO_ALTA,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(cupon_descuento.FECHA_ALTA)) AS MES_ALTA,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, cupon_descuento.FECHA_ALTA)) AS DIA_ALTA,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(cupon_descuento.FECHA_ALTA)) AS RANGO_HORARIO_ALTA,
		   YEAR(cupon_descuento.FECHA_VENCIMIENTO) AS ANIO_VENCIMIENTO,
		   MargeCreoQueOdioGDD.MesDelAnio(MONTH(cupon_descuento.FECHA_VENCIMIENTO)) AS MES_VENCIMIENTO,
		   MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, cupon_descuento.FECHA_VENCIMIENTO)) AS DIA_VENCIMIENTO,
		   MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(cupon_descuento.FECHA_VENCIMIENTO)) AS RANGO_HORARIO_VENCIMIENTO,
		   CASE WHEN descuentoxreclamo.ID_CUPON IS NOT NULL THEN 'Si' ELSE NULL END AS RECLAMO,
		   cupon_descuento.MONTO
    FROM MargeCreoQueOdioGDD.cupon_descuento
	INNER JOIN MargeCreoQueOdioGDD.tipo_cupon ON cupon_descuento.ID_TIPO_CUPON = tipo_cupon.ID_TIPO
	LEFT JOIN MargeCreoQueOdioGDD.descuentoxreclamo ON cupon_descuento.CODIGO = descuentoxreclamo.ID_CUPON;
END
GO

/* --------------------------------------------- Creacion de vistas --------------------------------------------- */
-- Día de la semana y franja horaria con mayor cantidad de pedidos según la localidad y categoría del local, para cada mes de cada año.
CREATE VIEW MargeCreoQueOdioGDD.V_MayorCantidadPedidos AS
WITH CTE AS (
    SELECT
        ANIO_PEDIDO,
        MES_PEDIDO,
        l.ID_LOCALIDAD,
        c.ID_CATEGORIA_LOCAL,
        DIA_PEDIDO,
        RANGO_HORARIO_PEDIDO,
        COUNT(*) AS CANTIDAD_PEDIDOS,
        ROW_NUMBER() OVER (PARTITION BY ANIO_PEDIDO, MES_PEDIDO, l.ID_LOCALIDAD, c.ID_CATEGORIA_LOCAL ORDER BY COUNT(*) DESC) AS RN
    FROM
        MargeCreoQueOdioGDD.BI_Pedido p
        INNER JOIN MargeCreoQueOdioGDD.BI_Local l ON p.ID_LOCAL = l.ID_LOCAL
        INNER JOIN MargeCreoQueOdioGDD.BI_Categoria_Local c ON l.ID_CATEGORIA = c.ID_CATEGORIA_LOCAL
    GROUP BY
        ANIO_PEDIDO,
        MES_PEDIDO,
        l.ID_LOCALIDAD,
        c.ID_CATEGORIA_LOCAL,
        DIA_PEDIDO,
        RANGO_HORARIO_PEDIDO)
SELECT
    ANIO_PEDIDO,
    MES_PEDIDO,
    ID_LOCALIDAD,
    ID_CATEGORIA_LOCAL,
    DIA_PEDIDO,
    RANGO_HORARIO_PEDIDO,
    CANTIDAD_PEDIDOS
FROM
    CTE
WHERE
    RN = 1;
GO

-- Monto total no cobrado por cada local en función de los pedidos cancelados según el día de la semana y la franja horaria (cuentan como
-- pedidos cancelados tanto los que cancela el usuario como el local)
CREATE VIEW MargeCreoQueOdioGDD.V_MontoTotalXPedidosCancelados AS
SELECT 
	l.ID_LOCAL, 
	p.DIA_PEDIDO AS DIA, 
	p.RANGO_HORARIO_PEDIDO AS FRANJA_HORARIA, 
	SUM(p.TOTAL_PRODUCTOS) AS MONTO_TOTAL  -- Asumo que lo que cobra el local es solo el costo total de los productos, el resto es de la app
FROM 
	MargeCreoQueOdioGDD.BI_Pedido p
	INNER JOIN MargeCreoQueOdioGDD.BI_Local l ON p.ID_LOCAL = l.ID_LOCAL
WHERE 
	p.ESTADO LIKE '%Cancelado%'
GROUP BY 
	l.ID_LOCAL, 
	p.DIA_PEDIDO, 
	p.RANGO_HORARIO_PEDIDO, 
	p.TOTAL_PRODUCTOS;
GO

-- Valor promedio mensual que tienen los envíos de pedidos en cada localidad.
CREATE VIEW MargeCreoQueOdioGDD.V_ValorEnvioPromedioMensualXLocalidad AS
SELECT
    MES_ENTREGA,
    e.ID_LOCALIDAD_DESTINO,
    AVG(e.PRECIO_ENVIO) AS PROMEDIO_MENSUAL
FROM
    MargeCreoQueOdioGDD.BI_Pedido p
	INNER JOIN MargeCreoQueOdioGDD.BI_Envio e ON p.ID_ENVIO = e.NRO_ENVIO
WHERE 
	ESTADO NOT LIKE '%Cancelado%'
GROUP BY
    MES_ENTREGA, 
	e.ID_LOCALIDAD_DESTINO;
GO

-- Desvío promedio en tiempo de entrega según el tipo de movilidad, el día de la semana y la franja horaria. El desvío debe calcularse en minutos 
-- y representa la diferencia entre la fecha/hora en que se realizó el pedido y la fecha/hora que se entregó en comparación con los minutos de 
-- tiempo estimados. Este indicador debe tener en cuenta todos los envíos, es decir, sumar tanto los envíos de pedidos como los de mensajería.
CREATE VIEW MargeCreoQueOdioGDD.V_DesvioPromedioEnTiempoDeEntrega AS
SELECT
	r.TIPO_MOVILIDAD,
	p.DIA_PEDIDO AS DIA_SEMANA,
	p.RANGO_HORARIO_PEDIDO AS FRANJA_HORARIA
	--(CASE WHEN p.TIEMPO_TOTAL_ENTREGA > e.TIEMPO_ESTIMADO_ENTREGA THEN AVG(p.TIEMPO_TOTAL_ENTREGA - e.TIEMPO_ESTIMADO_ENTREGA)
	--WHEN p.TIEMPO_TOTAL_ENTREGA < e.TIEMPO_ESTIMADO_ENTREGA THEN AVG(e.TIEMPO_ESTIMADO_ENTREGA - p.TIEMPO_TOTAL_ENTREGA)) AS DESVIO_PROMEDIO
FROM
	MargeCreoQueOdioGDD.BI_Pedido p
	INNER JOIN MargeCreoQueOdioGDD.BI_Envio e ON p.ID_ENVIO = e.NRO_ENVIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Repartidor r ON e.ID_REPARTIDOR = r.ID_REPARTIDOR
GROUP BY 
	r.TIPO_MOVILIDAD, 
	p.DIA_PEDIDO, 
	p.RANGO_HORARIO_PEDIDO
UNION
SELECT 
	r.TIPO_MOVILIDAD,
	em.DIA_PEDIDO AS DIA_SEMANA,
	em.RANGO_HORARIO_PEDIDO AS FRANJA_HORARIA
	--(CASE WHEN (em.TIEMPO_TOTAL_ENTREGA > e.TIEMPO_ESTIMADO_ENTREGA) THEN AVG(em.TIEMPO_TOTAL_ENTREGA - e.TIEMPO_ESTIMADO_ENTREGA)
	--WHEN (em.TIEMPO_TOTAL_ENTREGA < e.TIEMPO_ESTIMADO_ENTREGA) THEN AVG(e.TIEMPO_ESTIMADO_ENTREGA - em.TIEMPO_TOTAL_ENTREGA)) AS DESVIO_PROMEDIO
FROM 
	MargeCreoQueOdioGDD.BI_Envio_Mensajeria em
	INNER JOIN MargeCreoQueOdioGDD.BI_Envio e ON em.ID_ENVIO = e.NRO_ENVIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Repartidor r ON e.ID_REPARTIDOR = r.ID_REPARTIDOR
GROUP BY 
	r.TIPO_MOVILIDAD, 
	em.DIA_PEDIDO, 
	em.RANGO_HORARIO_PEDIDO;
GO

-- Monto total de los cupones utilizados por mes en función del rango etario de los usuarios.
CREATE VIEW MargeCreoQueOdioGDD.V_MontoTotalDeCuponesUsadosXMes AS
SELECT
	MES_PEDIDO AS MES,
	u.RANGO_ETARIO,
	SUM(p.TOTAL_CUPONES) AS MONTO_TOTAL_USADO
FROM
	MargeCreoQueOdioGDD.BI_Pedido p
	INNER JOIN MargeCreoQueOdioGDD.BI_Usuario u ON p.ID_USUARIO = u.ID_USUARIO
GROUP BY
	MES_PEDIDO,
	u.RANGO_ETARIO;
GO

-- Promedio mensual del valor asegurado (valor declarado por el usuario) de los paquetes enviados a través del servicio de mensajería en función del tipo de paquete
CREATE VIEW MargeCreoQueOdioGDD.V_ValorAseguradoPromedioMensual AS
SELECT
    MES_ENTREGA,
    tp.TIPO_PAQUETE,
    AVG(tp.VALOR_ASEGURADO) AS ValorAseguradoPromedio
FROM
    MargeCreoQueOdioGDD.BI_Envio_Mensajeria em
    INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Paquete tp ON em.ID_TIPO_PAQUETE = tp.ID_TIPO_PAQUETE
GROUP BY
    MES_ENTREGA,
    tp.TIPO_PAQUETE;
GO

-- Promedio de calificación mensual por local
CREATE VIEW MargeCreoQueOdioGDD.V_PromedioCalificacionMensual AS
SELECT
    ID_LOCAL,
    ANIO_ENTREGA,
    MES_ENTREGA,
    AVG(CALIFICACION) AS PromedioCalificacion
FROM
    MargeCreoQueOdioGDD.BI_Pedido
GROUP BY
    ID_LOCAL,
    ANIO_ENTREGA,
    MES_ENTREGA;
GO

-- Porcentaje de pedidos y mensajería entregados mensualmente según el rango etario de los repartidores y la localidad. Este indicador se debe tener en cuenta 
-- y sumar tanto los envíos de pedidos como los de mensajería. El porcentaje se calcula en función del total general de pedidos y envíos mensuales entregados.
CREATE VIEW MargeCreoQueOdioGDD.V_PorcentajeEntregasMensuales AS
WITH TotalEntregados AS (
    SELECT
        ANIO_ENTREGA,
		MES_ENTREGA,
        RANGO_ETARIO,
        ID_LOCALIDAD,
        COUNT(*) AS TOTAL_ENTREGADOS
    FROM
        (SELECT
                ANIO_ENTREGA,
				MES_ENTREGA,
                r.RANGO_ETARIO,
                l.ID_LOCALIDAD
            FROM
                MargeCreoQueOdioGDD.BI_Pedido p
                INNER JOIN MargeCreoQueOdioGDD.BI_Envio e ON p.ID_ENVIO = e.NRO_ENVIO
				INNER JOIN MargeCreoQueOdioGDD.BI_Repartidor r ON e.ID_REPARTIDOR = r.ID_REPARTIDOR
                INNER JOIN MargeCreoQueOdioGDD.BI_Localidad l ON e.ID_LOCALIDAD_DESTINO = l.ID_LOCALIDAD
            WHERE
                ESTADO LIKE '%Entregado%'
            UNION ALL
            SELECT
                ANIO_ENTREGA,
				MES_ENTREGA,
                r.RANGO_ETARIO,
                l.ID_LOCALIDAD
            FROM
                MargeCreoQueOdioGDD.BI_Envio_Mensajeria em
                INNER JOIN MargeCreoQueOdioGDD.BI_Envio e ON em.ID_ENVIO = e.NRO_ENVIO
				INNER JOIN MargeCreoQueOdioGDD.BI_Repartidor r ON e.ID_REPARTIDOR = r.ID_REPARTIDOR
                INNER JOIN MargeCreoQueOdioGDD.BI_Localidad l ON e.ID_LOCALIDAD_DESTINO = l.ID_LOCALIDAD
            WHERE
                em.ESTADO LIKE '%Entregado%') AS T
    GROUP BY
        ANIO_ENTREGA,
        MES_ENTREGA,
        RANGO_ETARIO,
        ID_LOCALIDAD),
PorcentajeEntregas AS (
    SELECT
        ANIO_ENTREGA,
        MES_ENTREGA,
        RANGO_ETARIO,
        ID_LOCALIDAD,
        (TOTAL_ENTREGADOS * 100.0) / SUM(TOTAL_ENTREGADOS) OVER (PARTITION BY ANIO_ENTREGA, MES_ENTREGA) AS PORCENTAJE_ENTREGAS
    FROM
        TotalEntregados)
SELECT
    ANIO_ENTREGA,
    MES_ENTREGA,
    RANGO_ETARIO,
    ID_LOCALIDAD,
    PORCENTAJE_ENTREGAS
FROM
    PorcentajeEntregas;
GO

-- Cantidad de reclamos mensuales recibidos por cada local en función del día de la semana y rango horario
CREATE VIEW MargeCreoQueOdioGDD.V_CantidadReclamosMensuales AS
SELECT
    ANIO_INICIO,
    MES_INICIO,
    p.ID_LOCAL,
    l.NOMBRE,
    DIA_INICIO,
    RANGO_HORARIO_APERTURA,
    COUNT(*) AS CantidadReclamos
FROM
    MargeCreoQueOdioGDD.BI_Reclamo r
    INNER JOIN MargeCreoQueOdioGDD.BI_Pedido p ON r.ID_PEDIDO = p.NRO_PEDIDO
    INNER JOIN MargeCreoQueOdioGDD.BI_Local l ON p.ID_LOCAL = l.ID_LOCAL
GROUP BY
    ANIO_INICIO,
    MES_INICIO,
    p.ID_LOCAL,
    l.NOMBRE,
    DIA_INICIO,
    RANGO_HORARIO_APERTURA;
GO

-- Tiempo promedio de resolución de reclamos mensual según cada tipo de reclamo y rango etario de los operadores. El tiempo de resolución debe calcularse en minutos 
-- y representa la diferencia entre la fecha/hora en que se realizó el reclamo y la fecha/hora que se resolvió
CREATE VIEW MargeCreoQueOdioGDD.V_TiempoPromedioResolucion AS
SELECT
    ANIO_SOLUCION,
    MES_SOLUCION,
    r.TIPO_RECLAMO,
    o.RANGO_ETARIO,
    AVG(TIEMPO_TOTAL_RESOLUCION) AS TiempoPromedioResolucion
FROM
    MargeCreoQueOdioGDD.BI_Reclamo r
    INNER JOIN MargeCreoQueOdioGDD.BI_Operador o ON r.ID_OPERADOR = o.ID_OPERADOR
GROUP BY
    ANIO_SOLUCION,
    MES_SOLUCION,
    r.TIPO_RECLAMO,
    o.RANGO_ETARIO;
GO

-- Monto mensual generado en cupones a partir de reclamos.
CREATE VIEW MargeCreoQueOdioGDD.V_MontoMensualGenerado AS
SELECT
    ANIO_ALTA,
    MES_ALTA,
    SUM(MONTO) AS MontoGenerado
FROM
    MargeCreoQueOdioGDD.BI_Cupon_Descuento
WHERE
    RECLAMO = 'Si'
GROUP BY
    ANIO_ALTA,
    MES_ALTA;
GO
/* --------------------------------------------- Ejecución de la migración --------------------------------------------- */

EXEC MargeCreoQueOdioGDD.migrar_BI_provincia;
EXEC MargeCreoQueOdioGDD.migrar_BI_localidad;
EXEC MargeCreoQueOdioGDD.migrar_BI_categoria_local;
EXEC MargeCreoQueOdioGDD.migrar_BI_local;
EXEC MargeCreoQueOdioGDD.migrar_BI_repartidor;
EXEC MargeCreoQueOdioGDD.migrar_BI_usuario;
EXEC MargeCreoQueOdioGDD.migrar_BI_operador;
EXEC MargeCreoQueOdioGDD.migrar_BI_tipo_paquete;
EXEC MargeCreoQueOdioGDD.migrar_BI_envios;
EXEC MargeCreoQueOdioGDD.migrar_BI_pedidos;
EXEC MargeCreoQueOdioGDD.migrar_BI_envio_mensajeria;
EXEC MargeCreoQueOdioGDD.migrar_BI_reclamo;
EXEC MargeCreoQueOdioGDD.migrar_BI_cupon_descuento;

/* --------------------------------------------- Ejecución de las vistas --------------------------------------------- */

SELECT * FROM MargeCreoQueOdioGDD.V_MayorCantidadPedidos;
SELECT * FROM MargeCreoQueOdioGDD.V_MontoTotalXPedidosCancelados;
SELECT * FROM MargeCreoQueOdioGDD.V_ValorEnvioPromedioMensualXLocalidad;
SELECT * FROM MargeCreoQueOdioGDD.V_DesvioPromedioEnTiempoDeEntrega;
SELECT * FROM MargeCreoQueOdioGDD.V_MontoTotalDeCuponesUsadosXMes; --ORDER BY MES, RANGO_ETARIO;
SELECT * FROM MargeCreoQueOdioGDD.V_PorcentajeEntregasMensuales; 
SELECT * FROM MargeCreoQueOdioGDD.V_ValorAseguradoPromedioMensual;
SELECT * FROM MargeCreoQueOdioGDD.V_PromedioCalificacionMensual;
SELECT * FROM MargeCreoQueOdioGDD.V_CantidadReclamosMensuales;
SELECT * FROM MargeCreoQueOdioGDD.V_TiempoPromedioResolucion;
SELECT * FROM MargeCreoQueOdioGDD.V_MontoMensualGenerado;