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

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'restar')
DROP FUNCTION MargeCreoQueOdioGDD.restar

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

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Categoria_Local')
DROP TABLE MargeCreoQueOdioGDD.BI_Categoria_Local;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Tipo_Paquete')
DROP TABLE MargeCreoQueOdioGDD.BI_Tipo_Paquete;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Provincia')
DROP TABLE MargeCreoQueOdioGDD.BI_Provincia;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Tipo_Local')
DROP TABLE MargeCreoQueOdioGDD.BI_Tipo_Local;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Tipo_Movilidad')
DROP TABLE MargeCreoQueOdioGDD.BI_Tipo_Movilidad;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Tipo_Medio_Pago')
DROP TABLE MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Estado_Reclamo')
DROP TABLE MargeCreoQueOdioGDD.BI_Estado_Reclamo;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Estado_Pedido')
DROP TABLE MargeCreoQueOdioGDD.BI_Estado_Pedido;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Estado_Mensajeria')
DROP TABLE MargeCreoQueOdioGDD.BI_Estado_Mensajeria;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Tiempo')
DROP TABLE MargeCreoQueOdioGDD.BI_Tiempo;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dia')
DROP TABLE MargeCreoQueOdioGDD.BI_Dia;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Rango_Horario')
DROP TABLE MargeCreoQueOdioGDD.BI_Rango_Horario;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Rango_Etario')
DROP TABLE MargeCreoQueOdioGDD.BI_Rango_Etario;
GO

/* --------------------------------------------- Limpiar vistas --------------------------------------------- */

/* --------------------------------------------- Limpiar procedures --------------------------------------------- */
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_provincia')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_provincia
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_localidad')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_localidad
GO

/* --------------------------------------------- Creacion de funciones --------------------------------------------- */

CREATE FUNCTION MargeCreoQueOdioGDD.calcularDiferenciaMinutos(@fecha_inicio DATETIME, @fecha_fin DATETIME) RETURNS FLOAT AS
BEGIN DECLARE @diferencia_minutos FLOAT;
  SET @diferencia_minutos = 
	CASE 
		WHEN @fecha_inicio < @fecha_fin THEN DATEDIFF(MINUTE, @fecha_inicio, @fecha_fin)
		WHEN @fecha_inicio > @fecha_fin THEN DATEDIFF(MINUTE, @fecha_fin, @fecha_inicio)
		WHEN @fecha_inicio = @fecha_fin THEN DATEDIFF(MINUTE, @fecha_fin, @fecha_inicio)
	END;
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

CREATE FUNCTION MargeCreoQueOdioGDD.restar (@Valor1 FLOAT, @Valor2 FLOAT) RETURNS FLOAT AS
BEGIN DECLARE @Resultado FLOAT;
    SET @Resultado = 
    	CASE
			WHEN @Valor1 > @Valor2 THEN @Valor1 - @Valor2
			WHEN @Valor1 < @Valor2 THEN @Valor2 - @Valor1
		END;
    RETURN @Resultado;
END;
GO

/* --------------------------------------------- Creacion de tablas dimensionales --------------------------------------------- */
CREATE TABLE MargeCreoQueOdioGDD.BI_Estado_Reclamo (
	ID_ESTADO INT IDENTITY(1,1),
	ESTADO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Estado_Pedido (
	ID_ESTADO INT IDENTITY(1,1),
	ESTADO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Estado_Mensajeria (
	ID_ESTADO INT IDENTITY(1,1),
	ESTADO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Tipo_Movilidad (
	ID_TIPO INT IDENTITY(1,1),
	TIPO_MOVILIDAD NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_TIPO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago (
	ID_TIPO INT IDENTITY(1,1),
	TIPO_MEDIO_PAGO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_TIPO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Provincia (
	ID_PROVINCIA INT IDENTITY(1,1),
	PROVINCIA NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_PROVINCIA)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Localidad (
	ID_LOCALIDAD INT IDENTITY(1,1),
	LOCALIDAD NVARCHAR(255) NOT NULL,
	ID_PROVINCIA INT NOT NULL, -- FK
	PRIMARY KEY (ID_LOCALIDAD)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Tipo_Local (
	ID_TIPO_LOCAL INT IDENTITY(1,1),
	TIPO_LOCAL NVARCHAR(255), 
	PRIMARY KEY (ID_TIPO_LOCAL)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Categoria_Local (
	ID_CATEGORIA_LOCAL INT IDENTITY(1,1),
	CATEGORIA NVARCHAR(255),
	ID_TIPO_LOCAL INT NOT NULL, -- FK
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

CREATE TABLE MargeCreoQueOdioGDD.BI_Tipo_Paquete (
	ID_TIPO_PAQUETE INT IDENTITY(1,1),
	TIPO_PAQUETE NVARCHAR(255),
	VALOR_ASEGURADO FLOAT,
	PRIMARY KEY (ID_TIPO_PAQUETE)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Envio (
	NRO_ENVIO INT NOT NULL,
	ID_LOCALIDAD_DESTINO INT NOT NULL, -- FK
	ID_RANGO_ETARIO_REPARTIDORES INT NOT NULL, --FK
	ID_TIPO_MOVILIDAD_REPARTIDORES INT NOT NULL, -- FK
	PRECIO_ENVIO FLOAT,
	TIEMPO_ESTIMADO_ENTREGA DECIMAL,
	PRIMARY KEY (NRO_ENVIO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento (
	CODIGO INT NOT NULL,
	ID_RANGO_ETARIO_USUARIOS INT NOT NULL, -- FK
	TIPO_CUPON NVARCHAR(255),
	ID_TIEMPO_ALTA INT NOT NULL, --FK
	ID_DIA_ALTA INT NOT NULL, --FK
	ID_RANGO_HORARIO_ALTA INT NOT NULL, --FK
	ID_TIEMPO_VENCIMIENTO INT NOT NULL, --FK
	ID_RANGO_HORARIO_VENCIMIENTO INT NOT NULL, --FK
	ID_DIA_VENCIMIENTO INT NOT NULL, --FK
	ES_RECLAMO NVARCHAR(10),
	MONTO FLOAT,
	PRIMARY KEY (CODIGO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Tiempo (
	ID_TIEMPO INT IDENTITY(1,1),
	ANIO INT NOT NULL,
	MES NVARCHAR(255),
	PRIMARY KEY (ID_TIEMPO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Dia (
	ID_DIA INT IDENTITY(1,1),
	DIA NVARCHAR(255),
	PRIMARY KEY (ID_DIA)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Rango_Etario (
	ID_ETARIO INT IDENTITY(1,1),
	RANGO_ETARIO NVARCHAR(255),
	PRIMARY KEY (ID_ETARIO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Rango_Horario (
	ID_HORARIO INT IDENTITY(1,1),
	RANGO_HORARIO NVARCHAR(255),
	PRIMARY KEY (ID_HORARIO)
);

/* --------------------------------------------- Tablas de hechos --------------------------------------------- */

CREATE TABLE MargeCreoQueOdioGDD.BI_Reclamo (
	NRO_RECLAMO INT IDENTITY(1,1),
	ID_RANGO_ETARIO_OPERADORES INT NOT NULL, -- FK
	ID_ESTADO INT NOT NULL, -- FK
	TIPO_RECLAMO NVARCHAR(255),
	ID_TIEMPO_INICIO INT NOT NULL, -- FK
	ID_DIA_INICIO INT NOT NULL, -- FK
	ID_PEDIDO INT NOT NULL, --FK -- POR AHI PODEMOS CAMBIARLO POR LOCAL
	ID_RANGO_HORARIO_INICIO INT NOT NULL, -- FK
	ID_TIEMPO_SOLUCION INT NOT NULL, -- FK
	ID_DIA_SOLUCION INT NOT NULL, -- FK
	ID_RANGO_HORARIO_SOLUCION INT NOT NULL, -- FK
	TIEMPO_TOTAL_RESOLUCION FLOAT NOT NULL, -- Tiempo que tardo en resolverse el reclamo (metrica)
	PRIMARY KEY (NRO_RECLAMO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Pedido (
	NRO_PEDIDO INT IDENTITY(1,1),
	ID_TIEMPO_PEDIDO INT NOT NULL, -- FK
	ID_RANGO_HORARIO_PEDIDO INT NOT NULL, -- FK
	ID_DIA_PEDIDO INT NOT NULL, -- FK
	ID_TIEMPO_ENTREGA INT NOT NULL, -- FK
	ID_DIA_ENTREGA INT NOT NULL, -- FK
	ID_RANGO_HORARIO_ENTREGA INT NOT NULL, -- FK
	ID_LOCAL INT NOT NULL, -- FK
	ID_ENVIO INT NOT NULL, -- FK
	ID_TIPO_MEDIO_PAGO INT NOT NULL, -- FK
	ID_ESTADO INT NOT NULL, -- FK
	ID_RANGO_ETARIO_USUARIOS INT NOT NULL, -- FK
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
	NRO_ENVIO_MENSAJERIA INT IDENTITY(1,1),
	ID_LOCALIDAD_ORIGEN INT NOT NULL, -- FK
	ID_TIPO_PAQUETE INT NOT NULL, -- FK
	ID_ENVIO INT NOT NULL, -- FK
	ID_TIPO_MEDIO_PAGO INT NOT NULL, -- FK
	ID_TIEMPO_PEDIDO INT NOT NULL, -- FK
	ID_DIA_PEDIDO INT NOT NULL, -- FK
	ID_RANGO_HORARIO_PEDIDO INT NOT NULL, -- FK
	ID_TIEMPO_ENTREGA INT NOT NULL, -- FK
	ID_RANGO_HORARIO_ENTREGA INT NOT NULL, -- FK
	ID_DIA_ENTREGA INT NOT NULL, -- FK
	ID_ESTADO INT NOT NULL, -- FK
	TIEMPO_TOTAL_ENTREGA FLOAT NOT NULL, -- Esta es la diferencia entre la fecha en que se realizó el pedido y la fecha en que se entregó
	TOTAL_SERVICIO_MENSAJERIA FLOAT NOT NULL,
	PRIMARY KEY (NRO_ENVIO_MENSAJERIA)
);

/* --------------------------------------------- Alter tables --------------------------------------------- */

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

ALTER TABLE MargeCreoQueOdioGDD.BI_Categoria_Local
ADD CONSTRAINT FK_BI_CATEGORIA_TIPO_ID
FOREIGN KEY (ID_TIPO_LOCAL) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Local

-- Envio
ALTER TABLE MargeCreoQueOdioGDD.BI_Envio
ADD CONSTRAINT FK_BI_LOCALIDAD_DESTINO_ENVIO_ID
FOREIGN KEY (ID_LOCALIDAD_DESTINO) REFERENCES MargeCreoQueOdioGDD.BI_Localidad

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio
ADD CONSTRAINT FK_BI_RANGO_ETARIO_ENVIO_ID
FOREIGN KEY (ID_RANGO_ETARIO_REPARTIDORES) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio
ADD CONSTRAINT FK_BI_TIPO_MOVILIDAD_ENVIO_ID
FOREIGN KEY (ID_TIPO_MOVILIDAD_REPARTIDORES) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Movilidad

-- Reclamo
ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_RANGO_ETARIO_RECLAMO_ID
FOREIGN KEY (ID_RANGO_ETARIO_OPERADORES) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_ESTADO_RECLAMO_ID
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.BI_Estado_Reclamo

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_TIEMPO_INICIO_RECLAMO_ID
FOREIGN KEY (ID_TIEMPO_INICIO) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_DIA_INICIO_RECLAMO_ID
FOREIGN KEY (ID_DIA_INICIO) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_PEDIDO_RECLAMO_ID
FOREIGN KEY (ID_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Pedido

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_RANGO_HORARIO_INICIO_RECLAMO_ID
FOREIGN KEY (ID_RANGO_HORARIO_INICIO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_TIEMPO_SOLUCION_RECLAMO_ID
FOREIGN KEY (ID_TIEMPO_SOLUCION) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_DIA_SOLUCION_RECLAMO_ID
FOREIGN KEY (ID_DIA_SOLUCION) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_RANGO_HORARIO_SOLUCION_RECLAMO_ID
FOREIGN KEY (ID_RANGO_HORARIO_SOLUCION) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

-- Cupones
ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_RANGO_ETARIO_USUARIOS_CUPON_ID
FOREIGN KEY (ID_RANGO_ETARIO_USUARIOS) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_TIEMPO_ALTA_CUPON_ID
FOREIGN KEY (ID_TIEMPO_ALTA) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_DIA_ALTA_CUPON_ID
FOREIGN KEY (ID_DIA_ALTA) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_RANGO_HORARIO_ALTA_CUPON_ID
FOREIGN KEY (ID_RANGO_HORARIO_ALTA) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_TIEMPO_VENCIMIENTO_CUPON_ID
FOREIGN KEY (ID_TIEMPO_VENCIMIENTO) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_RANGO_HORARIO_VENCIMIENTO_CUPON_ID
FOREIGN KEY (ID_RANGO_HORARIO_VENCIMIENTO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Cupon_Descuento
ADD CONSTRAINT FK_BI_DIA_VENCIMIENTO_CUPON_ID
FOREIGN KEY (ID_DIA_VENCIMIENTO) REFERENCES MargeCreoQueOdioGDD.BI_Dia

-- Pedido
ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_TIEMPO_PEDIDO_PEDIDO_ID
FOREIGN KEY (ID_TIEMPO_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_RANGO_HORARIO_PEDIDO_PEDIDO_ID
FOREIGN KEY (ID_RANGO_HORARIO_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_DIA_PEDIDO_PEDIDO_ID
FOREIGN KEY (ID_DIA_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_TIEMPO_ENTREGA_PEDIDO_ID
FOREIGN KEY (ID_TIEMPO_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_RANGO_HORARIO_ENTREGA_PEDIDO_ID
FOREIGN KEY (ID_RANGO_HORARIO_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_DIA_ENTREGA_PEDIDO_ID
FOREIGN KEY (ID_DIA_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_LOCAL_PEDIDO_ID
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.BI_Local

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_ENVIO_PEDIDO_ID
FOREIGN KEY (ID_ENVIO) REFERENCES MargeCreoQueOdioGDD.BI_Envio

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_TIPO_MEDIO_PAGO_PEDIDO_ID
FOREIGN KEY (ID_TIPO_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_ESTADO_PEDIDO_ID
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.BI_Estado_Pedido

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_RANGO_ETARIO_USUARIOS_PEDIDO_ID
FOREIGN KEY (ID_RANGO_ETARIO_USUARIOS) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

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

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIPO_MEDIO_PAGO_MENSAJERIA_ID
FOREIGN KEY (ID_TIPO_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIEMPO_PEDIDO_MENSAJERIA_ID
FOREIGN KEY (ID_TIEMPO_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_RANGO_HORARIO_PEDIDO_MENSAJERIA_ID
FOREIGN KEY (ID_RANGO_HORARIO_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_DIA_PEDIDO_MENSAJERIA_ID
FOREIGN KEY (ID_DIA_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIEMPO_ENTREGA_MENSAJERIA_ID
FOREIGN KEY (ID_TIEMPO_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_RANGO_HORARIO_ENTREGA_MENSAJERIA_ID
FOREIGN KEY (ID_RANGO_HORARIO_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_DIA_ENTREGA_MENSAJERIA_ID
FOREIGN KEY (ID_DIA_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_ESTADO_MENSAJERIA_ID
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.BI_Estado_Mensajeria
GO

/* -------- Creacion de procedures para cargar todas las tablas utilizando los datos ya migrados al modelo de datos transaccional -------- */

-- Provincias
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_provincia
AS
BEGIN
	PRINT 'Se comienzan a migrar las provincias...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Provincia(PROVINCIA)
	SELECT NOMBRE
	FROM MargeCreoQueOdioGDD.provincia
END
GO

-- Localidades
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_localidad
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las localidades...'
    INSERT INTO MargeCreoQueOdioGDD.BI_Localidad (LOCALIDAD, ID_PROVINCIA)
		SELECT l.NOMBRE, p.ID_PROVINCIA
		FROM MargeCreoQueOdioGDD.localidad l
		INNER JOIN MargeCreoQueOdioGDD.provincia p ON p.ID_PROVINCIA = l.ID_PROVINCIA
  END
GO