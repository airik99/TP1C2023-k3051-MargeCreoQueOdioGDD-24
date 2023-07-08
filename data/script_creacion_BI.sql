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

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_tipo_local')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_local
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_categoria_local')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_categoria_local
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_tipo_movilidad')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_movilidad
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_rango_etario')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_rango_etario
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_envios')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envios
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_tipo_paquete')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_paquete
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_dia')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_dia
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_rango_horario')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_rango_horario
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Tiempo')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_Tiempo
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_tipo_medio_pago')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_medio_pago
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_estado_reclamo')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_estado_reclamo
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_estado_mensajeria')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_estado_mensajeria
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_estado_pedido')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_estado_pedido
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_local')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_local
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_pedidos')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_pedidos
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_envio_mensajeria')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envio_mensajeria
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_reclamos')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_reclamos
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_cupon_descuento')
	DROP PROCEDURE MargeCreoQueOdioGDD.migrar_BI_cupon_descuento
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
			WHEN @Valor1 >= @Valor2 THEN @Valor1 - @Valor2
			WHEN @Valor1 < @Valor2 THEN @Valor2 - @Valor1
		END;
    RETURN @Resultado;
END;
GO

/* --------------------------------------------- Creacion de tablas dimensionales --------------------------------------------- */
CREATE TABLE MargeCreoQueOdioGDD.BI_Estado_Reclamo (
	ID_ESTADO INT,
	ESTADO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Estado_Pedido (
	ID_ESTADO INT,
	ESTADO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Estado_Mensajeria (
	ID_ESTADO INT,
	ESTADO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_ESTADO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Tipo_Movilidad (
	ID_TIPO INT,
	TIPO_MOVILIDAD NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_TIPO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago (
	ID_TIPO INT,
	TIPO_MEDIO_PAGO NVARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_TIPO)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Provincia (
	ID_PROVINCIA INT,
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
	ID_TIPO_LOCAL INT,
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
	ID_TIPO_PAQUETE INT,
	TIPO_PAQUETE NVARCHAR(255),
	VALOR_ASEGURADO FLOAT,
	PRIMARY KEY (ID_TIPO_PAQUETE)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Envio (
	NRO_ENVIO INT IDENTITY(1,1) NOT NULL,
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
	ID_TIEMPO INT NOT NULL, -- FK
	ID_DIA INT NOT NULL, -- FK
	ID_RANGO_HORARIO_INICIO INT NOT NULL, -- FK
	ID_RANGO_HORARIO_SOLUCION INT NOT NULL, -- FK
	TIPO_RECLAMO NVARCHAR(255) NOT NULL, --FK
	ID_ESTADO INT NOT NULL, -- FK
	ID_RANGO_ETARIO_OPERADOR INT NOT NULL, -- FK
	ID_LOCAL INT NOT NULL, --FK
	TIEMPO_TOTAL_RESOLUCION FLOAT NOT NULL, -- Tiempo que tardo en resolverse el reclamo segun tipo de reclamo y rango etario operadores
	MONTO_CUPONES_GENERADOS FLOAT NOT NULL, -- Este es el monto total generado en cupones segun mes
	CANTIDAD_RECLAMOS INT NOT NULL, -- Esta es la cantidad de reclamos x local, dia y horario
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Pedido (
	ID_TIEMPO INT NOT NULL, -- FK
	ID_DIA INT NOT NULL, -- FK
	ID_RANGO_HORARIO_PEDIDO INT NOT NULL, -- FK
	ID_RANGO_HORARIO_ENTREGA INT NOT NULL, -- FK
	ID_ESTADO INT NOT NULL, -- FK
	ID_LOCAL INT NOT NULL, -- FK
	CATEGORIA_LOCAL NVARCHAR(255),
	ID_LOCALIDAD INT NOT NULL, -- FK
	ID_TIPO_MEDIO_PAGO INT NOT NULL, -- FK
	ID_RANGO_ETARIO_USUARIO INT NOT NULL, -- FK
	ID_RANGO_ETARIO_REPARTIDOR INT NOT NULL, -- FK
	ID_TIPO_MOVILIDAD_REPARTIDOR INT NOT NULL, -- FK
	DESVIO_TIEMPO_ENTREGA FLOAT, -- Este es el desvio promedio de entrega segun tipo de movilidad, dia y rango horario
	CANTIDAD_PEDIDOS INT, -- Esta es la cantidad de pedidos hechos segun dia, rango horario, localidad, categoria local, mes y año
	TOTAL_PRODUCTOS FLOAT NOT NULL,
	TOTAL_CUPONES FLOAT NOT NULL, -- Monto de cupones usados
	PRECIO_ENVIO FLOAT NOT NULL,
	CALIFICACION DECIMAL(5,1)
);

CREATE TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria (
	ID_TIEMPO INT NOT NULL, -- FK
	ID_DIA INT NOT NULL, -- FK
	ID_RANGO_HORARIO_PEDIDO INT NOT NULL, -- FK
	ID_RANGO_HORARIO_ENTREGA INT NOT NULL, -- FK
	ID_ESTADO INT NOT NULL, -- FK
	ID_LOCALIDAD_DESTINO INT NOT NULL, -- FK
	ID_RANGO_ETARIO_REPARTIDOR INT NOT NULL, -- FK
	ID_TIPO_MOVILIDAD_REPARTIDOR INT NOT NULL, -- FK
	ID_TIPO_MEDIO_PAGO INT NOT NULL, -- FK
	DESVIO_TIEMPO_ENTREGA FLOAT NOT NULL, -- Este es el desvio promedio de entrega segun tipo de movilidad, dia y rango horario
	ID_TIPO_PAQUETE INT NOT NULL, -- FK
	VALOR_ASEGURADO_PAQUETE FLOAT NOT NULL, -- Este es el valor asegurado segun tipo de paquete
	CANTIDAD_ENVIOS_MENSAJERIA INT NOT NULL, -- Esta es la cantidad de servicios de mensajeria segun mes, rango etario repartidores y localidad
	TOTAL_SERVICIO_MENSAJERIA FLOAT NOT NULL
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
ADD CONSTRAINT FK_BI_TIEMPO_RECLAMO_ID
FOREIGN KEY (ID_TIEMPO) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_DIA_RECLAMO_ID
FOREIGN KEY (ID_DIA) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_RANGO_HORARIO_INICIO_RECLAMO_ID
FOREIGN KEY (ID_RANGO_HORARIO_INICIO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_RANGO_HORARIO_SOLUCION_RECLAMO_ID
FOREIGN KEY (ID_RANGO_HORARIO_SOLUCION) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_ESTADO_RECLAMO_ID
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.BI_Estado_Reclamo

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_RANGO_ETARIO_RECLAMO_ID
FOREIGN KEY (ID_RANGO_ETARIO_OPERADOR) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

ALTER TABLE MargeCreoQueOdioGDD.BI_Reclamo
ADD CONSTRAINT FK_BI_LOCAL_RECLAMO_ID
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.BI_Local

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
ADD CONSTRAINT FK_BI_TIEMPO_PEDIDO_ID
FOREIGN KEY (ID_TIEMPO) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_DIA_PEDIDO_ID
FOREIGN KEY (ID_DIA) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_RANGO_HORARIO_PEDIDO_PEDIDO_ID
FOREIGN KEY (ID_RANGO_HORARIO_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_RANGO_HORARIO_ENTREGA_PEDIDO_ID
FOREIGN KEY (ID_RANGO_HORARIO_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_ESTADO_PEDIDO_ID
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.BI_Estado_Pedido

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_LOCAL_PEDIDO_ID
FOREIGN KEY (ID_LOCAL) REFERENCES MargeCreoQueOdioGDD.BI_Local

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_LOCALIDAD_LOCAL_PEDIDO_ID
FOREIGN KEY (ID_LOCALIDAD) REFERENCES MargeCreoQueOdioGDD.BI_Localidad

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_TIPO_MEDIO_PAGO_PEDIDO_ID
FOREIGN KEY (ID_TIPO_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_RANGO_ETARIO_USUARIO_PEDIDO_ID
FOREIGN KEY (ID_RANGO_ETARIO_USUARIO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_RANGO_ETARIO_REPARTIDOR_PEDIDO_ID
FOREIGN KEY (ID_RANGO_ETARIO_REPARTIDOR) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

ALTER TABLE MargeCreoQueOdioGDD.BI_Pedido
ADD CONSTRAINT FK_BI_TIPO_MOVILIDAD_PEDIDO_ID
FOREIGN KEY (ID_TIPO_MOVILIDAD_REPARTIDOR) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Movilidad

-- Servicio de mensajeria
ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIEMPO_MENSAJERIA_ID
FOREIGN KEY (ID_TIEMPO) REFERENCES MargeCreoQueOdioGDD.BI_Tiempo

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_DIA_MENSAJERIA_ID
FOREIGN KEY (ID_DIA) REFERENCES MargeCreoQueOdioGDD.BI_Dia

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_RANGO_HORARIO_PEDIDO_MENSAJERIA_ID
FOREIGN KEY (ID_RANGO_HORARIO_PEDIDO) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_RANGO_HORARIO_ENTREGA_MENSAJERIA_ID
FOREIGN KEY (ID_RANGO_HORARIO_ENTREGA) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Horario

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_ESTADO_MENSAJERIA_ID
FOREIGN KEY (ID_ESTADO) REFERENCES MargeCreoQueOdioGDD.BI_Estado_Mensajeria

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_LOCALIDAD_DESTINO_MENSAJERIA_ID
FOREIGN KEY (ID_LOCALIDAD_DESTINO) REFERENCES MargeCreoQueOdioGDD.BI_Localidad

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_RANGO_ETARIO_REPARTIDOR_MENSAJERIA_ID
FOREIGN KEY (ID_RANGO_ETARIO_REPARTIDOR) REFERENCES MargeCreoQueOdioGDD.BI_Rango_Etario

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIPO_MOVILIDAD_MENSAJERIA_ID
FOREIGN KEY (ID_TIPO_MOVILIDAD_REPARTIDOR) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Movilidad

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIPO_MEDIO_PAGO_MENSAJERIA_ID
FOREIGN KEY (ID_TIPO_MEDIO_PAGO) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago

ALTER TABLE MargeCreoQueOdioGDD.BI_Envio_Mensajeria
ADD CONSTRAINT FK_BI_TIPO_PAQUETE_MENSAJERIA_ID
FOREIGN KEY (ID_TIPO_PAQUETE) REFERENCES MargeCreoQueOdioGDD.BI_Tipo_Paquete

GO

/* -------- Creacion de procedures para cargar todas las tablas utilizando los datos ya migrados al modelo de datos transaccional -------- */
-- Estado Reclamo
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_estado_reclamo
AS
BEGIN
	PRINT 'Se comienzan a migrar los estados de los reclamos...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Estado_Reclamo(ID_ESTADO, ESTADO)
	SELECT ID_ESTADO, NOMBRE
	FROM MargeCreoQueOdioGDD.estado_reclamo
END
GO

-- Estado Pedido
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_estado_pedido
AS
BEGIN
	PRINT 'Se comienzan a migrar los estados de los pedidos...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Estado_Pedido(ID_ESTADO, ESTADO)
	SELECT ID_ESTADO, NOMBRE
	FROM MargeCreoQueOdioGDD.estado_pedido
END
GO

-- Estado Pedido
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_estado_mensajeria
AS
BEGIN
	PRINT 'Se comienzan a migrar los estados de los envios mensajeria...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Estado_Mensajeria(ID_ESTADO, ESTADO)
	SELECT ID_ESTADO, NOMBRE
	FROM MargeCreoQueOdioGDD.estado_mensajeria
END
GO

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
    INSERT INTO MargeCreoQueOdioGDD.BI_Localidad (LOCALIDAD, ID_PROVINCIA)
		SELECT l.NOMBRE, p.ID_PROVINCIA
		FROM MargeCreoQueOdioGDD.localidad l
		INNER JOIN MargeCreoQueOdioGDD.provincia p ON p.ID_PROVINCIA = l.ID_PROVINCIA
  END
GO

-- Tipo Local
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_local
AS
BEGIN
	PRINT 'Se comienzan a migrar los tipos de locales...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Tipo_Local(ID_TIPO_LOCAL, TIPO_LOCAL)
	SELECT ID_TIPO, NOMBRE
	FROM MargeCreoQueOdioGDD.tipo_local
END
GO

-- Categoria Local
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_categoria_local
 AS
  BEGIN
	PRINT 'Se comienzan a migrar las categorias de los locales...'
    INSERT INTO MargeCreoQueOdioGDD.BI_Categoria_Local(CATEGORIA, ID_TIPO_LOCAL)
		SELECT NOMBRE, t.ID_TIPO_LOCAL
		FROM MargeCreoQueOdioGDD.categoria_local c
		INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Local t ON t.ID_TIPO_LOCAL = c.ID_TIPO
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

-- Tipo Paquete
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_paquete
AS
BEGIN
    PRINT 'Se comienzan a migrar los tipos paquete...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Tipo_Paquete(ID_TIPO_PAQUETE, TIPO_PAQUETE, VALOR_ASEGURADO)
    SELECT ID_TIPO_PAQUETE, TIPO_PAQUETE, VALOR_ASEGURADO
    FROM MargeCreoQueOdioGDD.tipo_paquete
END
GO

-- Tipo Medio Pago
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_medio_pago
AS
BEGIN
    PRINT 'Se comienzan a migrar los tipos medios de pagos...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago(ID_TIPO, TIPO_MEDIO_PAGO)
    SELECT ID_TIPO, TIPO_PAGO
    FROM MargeCreoQueOdioGDD.tipo_medio_pago
END
GO

-- Tipo Movilidad
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_tipo_movilidad
AS
BEGIN
	PRINT 'Se comienzan a migrar los tipos de movilidad...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Tipo_Movilidad(ID_TIPO, TIPO_MOVILIDAD)
	SELECT ID_TIPO, TIPO_MOVILIDAD
	FROM MargeCreoQueOdioGDD.tipo_movilidad
END
GO

-- Rango Etario
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_rango_etario
AS
BEGIN
	PRINT 'Se comienzan a migrar los rangos etarios...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Rango_Etario (RANGO_ETARIO)
	VALUES ('-25'), ('[25 - 35]'), ('[35 - 55]'), ('+55')
END
GO

-- Rango Horario
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_rango_horario
AS
BEGIN
	PRINT 'Se comienzan a migrar los rangos horarios...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Rango_Horario (RANGO_HORARIO)
	VALUES ('08:00 - 10:00'), ('10:00 - 12:00'), ('12:00 - 14:00'), ('14:00 - 16:00'), ('16:00 - 18:00'), ('18:00 - 20:00'), ('20:00 - 22:00'), ('22:00 - 00:00')
END
GO

-- Dia
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_dia
AS
BEGIN
	PRINT 'Se comienzan a migrar los dias...'
	INSERT INTO MargeCreoQueOdioGDD.BI_Dia (DIA)
	VALUES ('Lunes'), ('Martes'), ('Miercoles'), ('Jueves'), ('Viernes'), ('Sabado'), ('Domingo')
END
GO

-- Tiempo
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_Tiempo
AS
BEGIN
    PRINT 'Se comienzan a migrar los tiempos...'
    -- Migrar los tiempos de la tabla pedido
    INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_HORA_PEDIDO), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_PEDIDO))
    FROM MargeCreoQueOdioGDD.pedido
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_HORA_PEDIDO) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_PEDIDO)));

	INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_HORA_ENTREGA), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_ENTREGA))
    FROM MargeCreoQueOdioGDD.pedido
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_HORA_ENTREGA) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_ENTREGA)));
    
    -- Migrar los tiempos de la tabla envio_mensajeria
    INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_HORA_PEDIDO), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_PEDIDO))
    FROM MargeCreoQueOdioGDD.envio_mensajeria
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_HORA_PEDIDO) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_PEDIDO)));

	INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_HORA_ENTREGA), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_ENTREGA))
    FROM MargeCreoQueOdioGDD.envio_mensajeria
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_HORA_ENTREGA) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_ENTREGA)));
    
    -- Migrar los tiempos de la tabla cupon_descuento
    INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_ALTA), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_ALTA))
    FROM MargeCreoQueOdioGDD.cupon_descuento
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_ALTA) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_ALTA)));
    
	INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_VENCIMIENTO), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_VENCIMIENTO))
    FROM MargeCreoQueOdioGDD.cupon_descuento
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_VENCIMIENTO) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_VENCIMIENTO)));

    -- Migrar los tiempos de la tabla reclamo
    INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_HORA_INICIO), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_INICIO))
    FROM MargeCreoQueOdioGDD.reclamo
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_HORA_INICIO) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_INICIO)));

	INSERT INTO MargeCreoQueOdioGDD.BI_Tiempo (ANIO, MES)
    SELECT DISTINCT YEAR(FECHA_HORA_SOLUCION), MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_SOLUCION))
    FROM MargeCreoQueOdioGDD.reclamo
	WHERE NOT EXISTS (SELECT 1 FROM MargeCreoQueOdioGDD.BI_Tiempo WHERE ANIO = YEAR(FECHA_HORA_SOLUCION) AND MES = MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_HORA_SOLUCION)));
END
GO

-- Envio
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envios
AS
BEGIN
    PRINT 'Se comienzan a migrar los envios...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Envio(ID_LOCALIDAD_DESTINO, ID_RANGO_ETARIO_REPARTIDORES, ID_TIPO_MOVILIDAD_REPARTIDORES, PRECIO_ENVIO, TIEMPO_ESTIMADO_ENTREGA)
    SELECT l.ID_LOCALIDAD,
	       rt.ID_ETARIO,
		   t.ID_TIPO,
		   e.PRECIO_ENVIO,
		   e.TIEMPO_ESTIMADO_ENTREGA
    FROM MargeCreoQueOdioGDD.envio e
	INNER JOIN MargeCreoQueOdioGDD.direccion d ON e.ID_DIRECCION_DESTINO = d.ID_DIRECCION
	INNER JOIN MargeCreoQueOdioGDD.BI_Localidad l ON d.ID_LOCALIDAD = l.ID_LOCALIDAD
	INNER JOIN MargeCreoQueOdioGDD.repartidor r ON r.ID_REPARTIDOR = e.ID_REPARTIDOR
	INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Movilidad t ON t.ID_TIPO = r.ID_TIPO_MOVILIDAD
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario rt ON rt.RANGO_ETARIO = MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(r.FECHA_NACIMIENTO))
END
GO

-- Pedido

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_pedidos
AS
BEGIN
    PRINT 'Se comienzan a migrar los pedidos...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Pedido(ID_TIEMPO, ID_DIA, ID_RANGO_HORARIO_PEDIDO, ID_RANGO_HORARIO_ENTREGA, ID_ESTADO, ID_LOCAL, CATEGORIA_LOCAL,
											  ID_LOCALIDAD, ID_TIPO_MEDIO_PAGO, ID_RANGO_ETARIO_USUARIO, ID_RANGO_ETARIO_REPARTIDOR, ID_TIPO_MOVILIDAD_REPARTIDOR, 
											  DESVIO_TIEMPO_ENTREGA, CANTIDAD_PEDIDOS, TOTAL_PRODUCTOS, TOTAL_CUPONES, PRECIO_ENVIO, CALIFICACION)
	SELECT t.ID_TIEMPO AS ID_TIEMPO,
		   d.ID_DIA AS ID_DIA,
		   r1.ID_HORARIO AS ID_RANGO_HORARIO_PEDIDO,
		   r2.ID_HORARIO AS ID_RANGO_HORARIO_ENTREGA,
		   p.ID_ESTADO,
		   p.ID_LOCAL,
		   (SELECT cl.CATEGORIA FROM MargeCreoQueOdioGDD.BI_Categoria_Local cl WHERE cl.ID_CATEGORIA_LOCAL = l.ID_CATEGORIA) AS CATEGORIA_LOCAL,
		   l.ID_LOCALIDAD,
		   tmp.ID_TIPO AS ID_TIPO_MEDIO_PAGO,
		   reu.ID_ETARIO AS ID_RANGO_ETARIO_USUARIO,
		   rer.ID_ETARIO AS ID_RANGO_ETARIO_REPARTIDOR,
		   tm.ID_TIPO AS ID_TIPO_MOVILIDAD_REPARTIDOR,
		   SUM(MargeCreoQueOdioGDD.restar(e.TIEMPO_ESTIMADO_ENTREGA, MargeCreoQueOdioGDD.calcularDiferenciaMinutos(p.FECHA_HORA_PEDIDO, p.FECHA_HORA_ENTREGA))) AS DESVIO_TIEMPO_ENTREGA,
		   COUNT(p.NRO_PEDIDO) AS CANTIDAD_PEDIDOS,
		   SUM(TOTAL_PRODUCTOS) AS TOTAL_PRODUCTOS, 
		   SUM(TOTAL_CUPONES) AS TOTAL_CUPONES,
		   SUM((e.PRECIO_ENVIO + e.PROPINA)) AS PRECIO_ENVIO,
		   SUM(CALIFICACION) AS CALIFICACION
	FROM MargeCreoQueOdioGDD.pedido p
	INNER JOIN MargeCreoQueOdioGDD.usuario u ON p.ID_USUARIO = u.ID_USUARIO
	INNER JOIN MargeCreoQueOdioGDD.envio e ON p.ID_ENVIO = e.NRO_ENVIO
	INNER JOIN MargeCreoQueOdioGDD.repartidor r ON e.ID_REPARTIDOR = r.ID_REPARTIDOR
	INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Movilidad tm ON r.ID_TIPO_MOVILIDAD = tm.ID_TIPO
	INNER JOIN MargeCreoQueOdioGDD.BI_Estado_Pedido ep ON p.ID_ESTADO = ep.ID_ESTADO
	INNER JOIN MargeCreoQueOdioGDD.BI_Local l ON p.ID_LOCAL = l.ID_LOCAL
	INNER JOIN MargeCreoQueOdioGDD.medio_de_pago mp ON p.ID_MEDIO_DE_PAGO = mp.ID_MEDIO_PAGO
	INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Medio_Pago tmp ON mp.ID_TIPO_MEDIO_PAGO = tmp.ID_TIPO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario reu ON reu.RANGO_ETARIO = MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(u.FECHA_NACIMIENTO))
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario rer ON rer.RANGO_ETARIO = MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(r.FECHA_NACIMIENTO))
	INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON YEAR(p.FECHA_HORA_PEDIDO) = t.ANIO AND MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, p.FECHA_HORA_PEDIDO)) = t.MES
	INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, p.FECHA_HORA_PEDIDO)) = d.DIA
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r1 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(p.FECHA_HORA_PEDIDO)) = r1.RANGO_HORARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r2 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(p.FECHA_HORA_ENTREGA)) = r2.RANGO_HORARIO
	GROUP BY t.ID_TIEMPO, 
			 d.ID_DIA, 
			 r1.ID_HORARIO, 
			 r2.ID_HORARIO, 
			 p.ID_LOCAL, 
			 p.ID_ESTADO,
			 reu.ID_ETARIO,
			 rer.ID_ETARIO,
			 l.ID_LOCALIDAD, 
			 l.ID_CATEGORIA,
			 tmp.ID_TIPO,
			 tm.ID_TIPO
END
GO

-- Envio Mensajeria

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_envio_mensajeria
AS
BEGIN
    PRINT 'Se comienzan a migrar los envios mensajeria...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Envio_Mensajeria(ID_TIEMPO, ID_DIA, ID_RANGO_HORARIO_PEDIDO, ID_RANGO_HORARIO_ENTREGA, ID_ESTADO, 
														ID_LOCALIDAD_DESTINO, ID_RANGO_ETARIO_REPARTIDOR, ID_TIPO_MOVILIDAD_REPARTIDOR, 
														ID_TIPO_MEDIO_PAGO, DESVIO_TIEMPO_ENTREGA, ID_TIPO_PAQUETE, VALOR_ASEGURADO_PAQUETE,
														CANTIDAD_ENVIOS_MENSAJERIA, TOTAL_SERVICIO_MENSAJERIA)													
    SELECT t.ID_TIEMPO,
		   d.ID_DIA,
		   r1.ID_HORARIO AS ID_RANGO_HORARIO_PEDIDO,
		   r2.ID_HORARIO AS ID_RANGO_HORARIO_ENTREGA,
		   em.ID_ESTADO,
		   lo.ID_LOCALIDAD AS ID_LOCALIDAD_DESTINO,
		   rer.ID_ETARIO AS ID_RANGO_ETARIO_REPARTIDOR,
		   tm.ID_TIPO AS ID_TIPO_MOVILIDAD_REPARTIDOR,
		   tmp.ID_TIPO AS ID_TIPO_MEDIO_PAGO,
		   SUM(MargeCreoQueOdioGDD.restar(e.TIEMPO_ESTIMADO_ENTREGA, MargeCreoQueOdioGDD.calcularDiferenciaMinutos(em.FECHA_HORA_PEDIDO, em.FECHA_HORA_ENTREGA))) AS DESVIO_TIEMPO_ENTREGA,
		   tp.ID_TIPO_PAQUETE,
		   SUM(tp.VALOR_ASEGURADO) AS VALOR_ASEGURADO_PAQUETE,
		   COUNT(em.NRO_ENVIO_MENSAJERIA) AS CANTIDAD_ENVIOS_MENSAJERIA,
		   SUM(em.TOTAL_SERVICIO_MENSAJERIA) AS TOTAL_SERVICIO_MENSAJERIA
    FROM MargeCreoQueOdioGDD.envio_mensajeria em
	INNER JOIN MargeCreoQueOdioGDD.envio e ON em.ID_ENVIO = e.NRO_ENVIO
	INNER JOIN MargeCreoQueOdioGDD.repartidor r ON e.ID_REPARTIDOR = r.ID_REPARTIDOR
	INNER JOIN MargeCreoQueOdioGDD.direccion di ON di.ID_DIRECCION = e.ID_DIRECCION_DESTINO
	INNER JOIN MargeCreoQueOdioGDD.localidad lo ON di.ID_LOCALIDAD = lo.ID_LOCALIDAD
	INNER JOIN MargeCreoQueOdioGDD.tipo_paquete tp ON em.ID_TIPO_PAQUETE = tp.ID_TIPO_PAQUETE
	INNER JOIN MargeCreoQueOdioGDD.medio_de_pago mp ON em.ID_MEDIO_PAGO = mp.ID_MEDIO_PAGO
	INNER JOIN MargeCreoQueOdioGDD.tipo_medio_pago tmp ON mp.ID_TIPO_MEDIO_PAGO = tmp.ID_TIPO
	INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Movilidad tm ON r.ID_TIPO_MOVILIDAD = tm.ID_TIPO
    INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON YEAR(em.FECHA_HORA_PEDIDO) = t.ANIO AND MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, em.FECHA_HORA_PEDIDO)) = t.MES 
    INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, FECHA_HORA_PEDIDO)) = d.DIA
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r1 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(em.FECHA_HORA_PEDIDO)) = r1.RANGO_HORARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r2 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(em.FECHA_HORA_ENTREGA)) = r2.RANGO_HORARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario rer ON rer.RANGO_ETARIO = MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(r.FECHA_NACIMIENTO))
	GROUP BY t.ID_TIEMPO,
		     d.ID_DIA,
		     r1.ID_HORARIO,
		     r2.ID_HORARIO,
		     em.ID_ESTADO,
		     lo.ID_LOCALIDAD,
			 tmp.ID_TIPO,
			 tp.ID_TIPO_PAQUETE,
			 rer.ID_ETARIO,
			 tm.ID_TIPO
END
GO

-- Reclamo

CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_reclamos
AS
BEGIN
    PRINT 'Se comienzan a migrar los reclamos...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Reclamo(ID_TIEMPO, ID_DIA, ID_RANGO_HORARIO_INICIO, ID_RANGO_HORARIO_SOLUCION, TIPO_RECLAMO, ID_ESTADO,
											   ID_RANGO_ETARIO_OPERADOR, ID_LOCAL, TIEMPO_TOTAL_RESOLUCION, MONTO_CUPONES_GENERADOS, CANTIDAD_RECLAMOS)
    SELECT t.ID_TIEMPO AS ID_TIEMPO,
		   d.ID_DIA AS ID_DIA,
		   r1.ID_HORARIO AS ID_RANGO_HORARIO_INICIO,
		   r2.ID_HORARIO AS ID_RANGO_HORARIO_SOLUCION,
		   tr.TIPO_RECLAMO,
		   r.ID_ESTADO,
		   ror.ID_ETARIO AS ID_RANGO_ETARIO_OPERADOR,
		   l.ID_LOCAL,
		   SUM(MargeCreoQueOdioGDD.calcularDiferenciaMinutos(FECHA_HORA_INICIO, FECHA_HORA_SOLUCION)) AS TIEMPO_TOTAL_RESOLUCION, 
		   SUM(cp.MONTO) AS MONTO_CUPONES_GENERADOS, 
		   COUNT(r.NRO_RECLAMO) AS CANTIDAD_RECLAMOS
    FROM MargeCreoQueOdioGDD.reclamo r
	INNER JOIN MargeCreoQueOdioGDD.operador o ON r.ID_OPERADOR = o.ID_OPERADOR
	INNER JOIN MargeCreoQueOdioGDD.tipo_reclamo tr ON tr.ID_TIPO_RECLAMO = r.ID_TIPO_RECLAMO
	INNER JOIN MargeCreoQueOdioGDD.descuentoxreclamo dxr ON r.NRO_RECLAMO = dxr.ID_RECLAMO
	INNER JOIN MargeCreoQueOdioGDD.pedido p ON p.NRO_PEDIDO = r.ID_PEDIDO
	INNER JOIN MargeCreoQueOdioGDD.BI_Cupon_Descuento cp ON cp.CODIGO = dxr.ID_CUPON
	INNER JOIN MargeCreoQueOdioGDD.BI_Local l ON l.ID_LOCAL = p.ID_LOCAL
    INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON YEAR(r.FECHA_HORA_INICIO) = t.ANIO AND MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, r.FECHA_HORA_INICIO)) = t.MES 
    INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, FECHA_HORA_PEDIDO)) = d.DIA
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r1 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(r.FECHA_HORA_INICIO)) = r1.RANGO_HORARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r2 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(r.FECHA_HORA_SOLUCION)) = r2.RANGO_HORARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario ror ON ror.RANGO_ETARIO = MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(o.FECHA_NACIMIENTO))
	WHERE cp.ES_RECLAMO LIKE '%Si%'
	GROUP BY t.ID_TIEMPO,
		     d.ID_DIA,
		     r1.ID_HORARIO,
		     r2.ID_HORARIO,
			 r.ID_ESTADO,
			 ror.ID_ETARIO,
			 tr.TIPO_RECLAMO,
			 l.ID_LOCAL
END
GO

-- Cupon Descuento
CREATE PROCEDURE MargeCreoQueOdioGDD.migrar_BI_cupon_descuento
AS
BEGIN
    PRINT 'Se comienzan a migrar los cupones de descuento...';
    INSERT INTO MargeCreoQueOdioGDD.BI_Cupon_Descuento(CODIGO, ID_RANGO_ETARIO_USUARIOS, TIPO_CUPON, ID_TIEMPO_ALTA, ID_DIA_ALTA, ID_RANGO_HORARIO_ALTA, 
													   ID_TIEMPO_VENCIMIENTO, ID_DIA_VENCIMIENTO, ID_RANGO_HORARIO_VENCIMIENTO, ES_RECLAMO, MONTO)
    SELECT c.CODIGO,
		   re.ID_ETARIO,
		   t.TIPO_CUPON,
		   t1.ID_TIEMPO,
		   d1.ID_DIA,
		   r1.ID_HORARIO,
		   t2.ID_TIEMPO,
		   d2.ID_DIA,
		   r2.ID_HORARIO,
		   CASE WHEN dxr.ID_CUPON IS NOT NULL THEN 'Si' ELSE NULL END AS RECLAMO,
		   c.MONTO
    FROM MargeCreoQueOdioGDD.cupon_descuento c
	INNER JOIN MargeCreoQueOdioGDD.usuario u ON u.ID_USUARIO = c.ID_USUARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario re ON MargeCreoQueOdioGDD.rangoEtario(MargeCreoQueOdioGDD.edadActual(u.FECHA_NACIMIENTO)) = re.RANGO_ETARIO
	INNER JOIN MargeCreoQueOdioGDD.tipo_cupon t ON c.ID_TIPO_CUPON = t.ID_TIPO
	INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t1 ON YEAR(FECHA_ALTA) = t1.ANIO AND MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_ALTA)) = t1.MES 
	INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t2 ON YEAR(FECHA_VENCIMIENTO) = t2.ANIO AND MargeCreoQueOdioGDD.mesDelAnio(DATEPART(MONTH, FECHA_VENCIMIENTO)) = t2.MES
    INNER JOIN MargeCreoQueOdioGDD.BI_Dia d1 ON MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, FECHA_ALTA)) = d1.DIA
	INNER JOIN MargeCreoQueOdioGDD.BI_Dia d2 ON MargeCreoQueOdioGDD.DiaSemana(DATENAME(WEEKDAY, FECHA_VENCIMIENTO)) = d2.DIA
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r1 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(FECHA_ALTA)) = r1.RANGO_HORARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario r2 ON MargeCreoQueOdioGDD.rangoHorario(MargeCreoQueOdioGDD.obtenerHora(FECHA_VENCIMIENTO)) = r2.RANGO_HORARIO
	LEFT JOIN MargeCreoQueOdioGDD.descuentoxreclamo dxr ON c.CODIGO = dxr.ID_CUPON;
END
GO

/* --------------------------------------------- Creacion de vistas --------------------------------------------- */

-- Día de la semana y franja horaria con mayor cantidad de pedidos según la localidad y categoría del local, para cada mes de cada año.
CREATE VIEW MargeCreoQueOdioGDD.V_MayorCantidadPedidos AS
SELECT DISTINCT
    t.ANIO,
    t.MES,
	(SELECT TOP 1 d1.DIA FROM MargeCreoQueOdioGDD.BI_Pedido p1 INNER JOIN MargeCreoQueOdioGDD.BI_Dia d1 ON p1.ID_DIA = d1.ID_DIA
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario rh1 ON p1.ID_RANGO_HORARIO_PEDIDO = rh1.ID_HORARIO 
	WHERE p1.ID_TIEMPO = t.ID_TIEMPO AND p1.ID_LOCALIDAD = p.ID_LOCALIDAD AND p1.CATEGORIA_LOCAL = p.CATEGORIA_LOCAL
	GROUP BY d1.DIA, rh1.RANGO_HORARIO ORDER BY SUM(p1.CANTIDAD_PEDIDOS) DESC) AS DIA_DE_MAS_PEDIDOS,
	(SELECT TOP 1 rh2.RANGO_HORARIO FROM MargeCreoQueOdioGDD.BI_Pedido p2 INNER JOIN MargeCreoQueOdioGDD.BI_Dia d2 ON p2.ID_DIA = d2.ID_DIA
	INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario rh2 ON p2.ID_RANGO_HORARIO_PEDIDO = rh2.ID_HORARIO
	WHERE p2.ID_TIEMPO = t.ID_TIEMPO AND p2.ID_LOCALIDAD = p.ID_LOCALIDAD AND p2.CATEGORIA_LOCAL = p.CATEGORIA_LOCAL
	GROUP BY d2.DIA, rh2.RANGO_HORARIO ORDER BY SUM(p2.CANTIDAD_PEDIDOS) DESC) AS HORARIO_DE_MAS_PEDIDOS,
	p.ID_LOCALIDAD,
	p.CATEGORIA_LOCAL
FROM
    MargeCreoQueOdioGDD.BI_Pedido p
    INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON p.ID_TIEMPO = t.ID_TIEMPO
    INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON p.ID_DIA = d.ID_DIA
    INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario rh ON p.ID_RANGO_HORARIO_PEDIDO = rh.ID_HORARIO
    INNER JOIN MargeCreoQueOdioGDD.BI_Local l ON p.ID_LOCAL = l.ID_LOCAL
GROUP BY
    t.ANIO,
    t.MES,
	t.ID_TIEMPO,
	p.ID_LOCALIDAD,
	p.CATEGORIA_LOCAL
GO

-- Monto total no cobrado por cada local en función de los pedidos cancelados según el día de la semana y la franja horaria (cuentan como
-- pedidos cancelados tanto los que cancela el usuario como el local)
CREATE VIEW MargeCreoQueOdioGDD.V_MontoTotalXPedidosCancelados AS
SELECT DISTINCT 
	p.ID_LOCAL, 
	d.DIA,
	h.RANGO_HORARIO,
	SUM(p.TOTAL_PRODUCTOS) AS MONTO_NO_COBRADO  -- Asumo que lo que cobra el local es solo el costo total de los productos, el resto es de la app
FROM 
	MargeCreoQueOdioGDD.BI_Pedido p
    INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON p.ID_DIA = d.ID_DIA
    INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario h ON p.ID_RANGO_HORARIO_PEDIDO = h.ID_HORARIO
	INNER JOIN MargeCreoQueOdioGDD.BI_Estado_Pedido e ON p.ID_ESTADO = e.ID_ESTADO
WHERE 
	e.ESTADO LIKE '%Cancelado%'
GROUP BY 
	p.ID_LOCAL, 
	d.DIA, 
	h.RANGO_HORARIO
GO

-- Valor promedio mensual que tienen los envíos de pedidos en cada localidad.
CREATE VIEW MargeCreoQueOdioGDD.V_ValorEnvioPromedioMensualXLocalidad AS
SELECT
    t.MES AS MES_ENTREGA,
    p.ID_LOCALIDAD,
	SUM(p.PRECIO_ENVIO) / SUM(p.CANTIDAD_PEDIDOS) AS VALOR_PROMEDIO_ENVIO
FROM
    MargeCreoQueOdioGDD.BI_Pedido p
    INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON p.ID_TIEMPO = t.ID_TIEMPO
	INNER JOIN MargeCreoQueOdioGDD.BI_Estado_Pedido es ON p.ID_ESTADO = es.ID_ESTADO
GROUP BY
    t.MES,
    p.ID_LOCALIDAD;
GO

-- Desvío promedio en tiempo de entrega según el tipo de movilidad, el día de la semana y la franja horaria. El desvío debe calcularse en minutos 
-- y representa la diferencia entre la fecha/hora en que se realizó el pedido y la fecha/hora que se entregó en comparación con los minutos de 
-- tiempo estimados. Este indicador debe tener en cuenta todos los envíos, es decir, sumar tanto los envíos de pedidos como los de mensajería.

CREATE VIEW MargeCreoQueOdioGDD.V_DesvioPromedioEnTiempoDeEntrega AS
SELECT
	epm.DIA_SEMANA,
	epm.RANGO_HORARIO,
	epm.TIPO_MOVILIDAD,
    SUM(epm.DESVIO_TIEMPO_ENTREGA) / SUM(epm.CANTIDAD) AS DESVIO_PROMEDIO_TIEMPO_ENTREGA
FROM 
	(SELECT d.DIA AS DIA_SEMANA,
			rh.RANGO_HORARIO AS RANGO_HORARIO,
			SUM(p.DESVIO_TIEMPO_ENTREGA) AS DESVIO_TIEMPO_ENTREGA,
			SUM(p.CANTIDAD_PEDIDOS) AS CANTIDAD,
			tm.TIPO_MOVILIDAD AS TIPO_MOVILIDAD
	FROM
		MargeCreoQueOdioGDD.BI_Pedido p
		INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON p.ID_DIA = d.ID_DIA
		INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario rh ON p.ID_RANGO_HORARIO_PEDIDO = rh.ID_HORARIO
		INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Movilidad tm ON p.ID_TIPO_MOVILIDAD_REPARTIDOR = tm.ID_TIPO
	GROUP BY
		d.DIA,
		rh.RANGO_HORARIO,
		tm.TIPO_MOVILIDAD
	UNION ALL
	SELECT d.DIA AS DIA_SEMANA,
		   rh.RANGO_HORARIO AS RANGO_HORARIO,
		   SUM(em.DESVIO_TIEMPO_ENTREGA) AS DESVIO_TIEMPO_ENTREGA,
		   SUM(em.CANTIDAD_ENVIOS_MENSAJERIA) AS CANTIDAD,
		   tm.TIPO_MOVILIDAD AS TIPO_MOVILIDAD
	FROM MargeCreoQueOdioGDD.BI_Envio_Mensajeria em
		INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON em.ID_DIA = d.ID_DIA
		INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario rh ON em.ID_RANGO_HORARIO_PEDIDO = rh.ID_HORARIO
		INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Movilidad tm ON em.ID_TIPO_MOVILIDAD_REPARTIDOR = tm.ID_TIPO
	GROUP BY
		d.DIA,
		rh.RANGO_HORARIO,
		tm.TIPO_MOVILIDAD) AS epm
GROUP BY
	epm.DIA_SEMANA,
	epm.RANGO_HORARIO,
	epm.TIPO_MOVILIDAD;
GO

-- Monto total de los cupones utilizados por mes en función del rango etario de los usuarios.
CREATE VIEW MargeCreoQueOdioGDD.V_MontoTotalDeCuponesUsadosXMes AS
SELECT
    t.MES,
    r.RANGO_ETARIO AS RANGO_ETARIO_USUARIO,
    SUM(p.TOTAL_CUPONES) AS MONTO_TOTAL_CUPONES
FROM
    MargeCreoQueOdioGDD.BI_Pedido p
    INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario r ON p.ID_RANGO_ETARIO_USUARIO = r.ID_ETARIO
    INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON p.ID_TIEMPO = t.ID_TIEMPO
GROUP BY
    t.MES,
    r.RANGO_ETARIO;
GO

-- Promedio mensual del valor asegurado (valor declarado por el usuario) de los paquetes enviados a través del servicio de mensajería en función del tipo de paquete
CREATE VIEW MargeCreoQueOdioGDD.V_ValorAseguradoPromedioMensual AS
SELECT
    t.MES,
    tp.TIPO_PAQUETE,
	SUM(em.VALOR_ASEGURADO_PAQUETE) / SUM(em.CANTIDAD_ENVIOS_MENSAJERIA) AS VALOR_ASEGURADO_PROMEDIO
FROM
    MargeCreoQueOdioGDD.BI_Envio_Mensajeria em
    INNER JOIN MargeCreoQueOdioGDD.BI_Tipo_Paquete tp ON em.ID_TIPO_PAQUETE = tp.ID_TIPO_PAQUETE
	INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON em.ID_TIEMPO = t.ID_TIEMPO
GROUP BY
    t.MES,
    tp.TIPO_PAQUETE;
GO

-- Promedio de calificación mensual por local
CREATE VIEW MargeCreoQueOdioGDD.V_PromedioCalificacionMensual AS
SELECT
    t.ANIO,
    t.MES,
	p.ID_LOCAL,
	SUM(p.CALIFICACION) / SUM(p.CANTIDAD_PEDIDOS) AS PROMEDIO_CALIFICACION
FROM
    MargeCreoQueOdioGDD.BI_Pedido p
	INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON p.ID_TIEMPO = t.ID_TIEMPO
GROUP BY
    t.ANIO,
    t.MES,
	p.ID_LOCAL
GO

-- Porcentaje de pedidos y mensajería entregados mensualmente según el rango etario de los repartidores y la localidad. Este indicador se debe tener en cuenta 
-- y sumar tanto los envíos de pedidos como los de mensajería. El porcentaje se calcula en función del total general de pedidos y envíos mensuales entregados.
CREATE VIEW MargeCreoQueOdioGDD.V_PorcentajeEntregasMensuales AS
WITH TotalEntregados AS (
    SELECT
        MES,
        RANGO_ETARIO,
        ID_LOCALIDAD,
        SUM(CANTIDAD_TOTAL) AS TOTAL_ENTREGADOS
    FROM
        (SELECT
            t.MES,
            re.RANGO_ETARIO,
            l.ID_LOCALIDAD,
            SUM(CANTIDAD_PEDIDOS) AS CANTIDAD_TOTAL
        FROM
            MargeCreoQueOdioGDD.BI_Pedido p
            INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario re ON p.ID_RANGO_ETARIO_REPARTIDOR = re.ID_ETARIO
            INNER JOIN MargeCreoQueOdioGDD.BI_Localidad l ON p.ID_LOCALIDAD = l.ID_LOCALIDAD
            INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON t.ID_TIEMPO = p.ID_TIEMPO
            INNER JOIN MargeCreoQueOdioGDD.BI_Estado_Pedido e ON e.ID_ESTADO = p.ID_ESTADO 
        WHERE
            e.ESTADO LIKE '%Entregado%'
        GROUP BY
            t.MES,
            re.RANGO_ETARIO,
            l.ID_LOCALIDAD
        UNION ALL
        SELECT
            t.MES,
            re.RANGO_ETARIO,
            l.ID_LOCALIDAD,
            SUM(CANTIDAD_ENVIOS_MENSAJERIA) AS CANTIDAD_TOTAL
        FROM
            MargeCreoQueOdioGDD.BI_Envio_Mensajeria em
            INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Etario re ON em.ID_RANGO_ETARIO_REPARTIDOR = re.ID_ETARIO
            INNER JOIN MargeCreoQueOdioGDD.BI_Localidad l ON em.ID_LOCALIDAD_DESTINO = l.ID_LOCALIDAD
            INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON t.ID_TIEMPO = em.ID_TIEMPO
            INNER JOIN MargeCreoQueOdioGDD.BI_Estado_Mensajeria e ON e.ID_ESTADO = em.ID_ESTADO 
        WHERE
            e.ESTADO LIKE '%Entregado%'
        GROUP BY
            t.MES,
            re.RANGO_ETARIO,
            l.ID_LOCALIDAD) AS t
    GROUP BY
        t.MES,
        RANGO_ETARIO,
        ID_LOCALIDAD
),
PorcentajeEntregas AS (
    SELECT
        MES,
        RANGO_ETARIO,
        ID_LOCALIDAD,
        FORMAT((TOTAL_ENTREGADOS * 100.0) / SUM(TOTAL_ENTREGADOS) OVER (PARTITION BY MES), 'P') AS PORCENTAJE_ENTREGAS
    FROM
        TotalEntregados
)
SELECT
    MES,
    RANGO_ETARIO,
    ID_LOCALIDAD,
    PORCENTAJE_ENTREGAS
FROM
    PorcentajeEntregas;
GO

-- Cantidad de reclamos mensuales recibidos por cada local en función del día de la semana y rango horario
CREATE VIEW MargeCreoQueOdioGDD.V_CantidadReclamosMensuales AS
SELECT
    l.NOMBRE,
    t.MES,
    d.DIA,
    h1.RANGO_HORARIO AS RANGO_HORARIO_INICIO,
    h2.RANGO_HORARIO AS RANGO_HORARIO_SOLUCION,
    SUM(CANTIDAD_RECLAMOS) AS CANTIDAD_RECLAMOS
FROM
    MargeCreoQueOdioGDD.BI_Reclamo r
    INNER JOIN MargeCreoQueOdioGDD.BI_Local l ON r.ID_LOCAL = l.ID_LOCAL
    INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON r.ID_TIEMPO = t.ID_TIEMPO
    INNER JOIN MargeCreoQueOdioGDD.BI_Dia d ON r.ID_DIA = d.ID_DIA
    INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario h1 ON r.ID_RANGO_HORARIO_INICIO = h1.ID_HORARIO
    INNER JOIN MargeCreoQueOdioGDD.BI_Rango_Horario h2 ON r.ID_RANGO_HORARIO_SOLUCION = h2.ID_HORARIO
GROUP BY
    l.NOMBRE,
    t.MES,
    d.DIA,
    h1.RANGO_HORARIO,
    h2.RANGO_HORARIO
GO

-- Tiempo promedio de resolución de reclamos mensual según cada tipo de reclamo y rango etario de los operadores. El tiempo de resolución debe calcularse en minutos 
-- y representa la diferencia entre la fecha/hora en que se realizó el reclamo y la fecha/hora que se resolvió
CREATE VIEW MargeCreoQueOdioGDD.V_TiempoPromedioResolucion AS
SELECT
    t.MES,
    r.TIPO_RECLAMO,
    re.RANGO_ETARIO,
    AVG(TIEMPO_TOTAL_RESOLUCION) AS TIEMPO_PROMEDIO_RESOLUCION
FROM
    MargeCreoQueOdioGDD.BI_Reclamo r
    JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON r.ID_TIEMPO = t.ID_TIEMPO
    JOIN MargeCreoQueOdioGDD.BI_Rango_Etario re ON r.ID_RANGO_ETARIO_OPERADOR = re.ID_ETARIO
GROUP BY
    t.MES,
    r.TIPO_RECLAMO,
    re.RANGO_ETARIO;
GO

-- Monto mensual generado en cupones a partir de reclamos.
CREATE VIEW MargeCreoQueOdioGDD.V_MontoMensualGenerado AS
SELECT
    t.MES,
    SUM(r.MONTO_CUPONES_GENERADOS) AS MONTO_CUPONES
FROM
    MargeCreoQueOdioGDD.BI_Reclamo r
	INNER JOIN MargeCreoQueOdioGDD.BI_Tiempo t ON r.ID_TIEMPO = t.ID_TIEMPO
GROUP BY
    t.MES
GO

/* --------------------------------------------- Ejecución de la migración --------------------------------------------- */

EXEC MargeCreoQueOdioGDD.migrar_BI_provincia;
EXEC MargeCreoQueOdioGDD.migrar_BI_localidad;
EXEC MargeCreoQueOdioGDD.migrar_BI_tipo_local;
EXEC MargeCreoQueOdioGDD.migrar_BI_categoria_local;
EXEC MargeCreoQueOdioGDD.migrar_BI_local;
EXEC MargeCreoQueOdioGDD.migrar_BI_tipo_paquete;
EXEC MargeCreoQueOdioGDD.migrar_BI_tipo_movilidad;
EXEC MargeCreoQueOdioGDD.migrar_BI_rango_etario;
EXEC MargeCreoQueOdioGDD.migrar_BI_envios;
EXEC MargeCreoQueOdioGDD.migrar_BI_dia;
EXEC MargeCreoQueOdioGDD.migrar_BI_tiempo;
EXEC MargeCreoQueOdioGDD.migrar_BI_rango_horario;
EXEC MargeCreoQueOdioGDD.migrar_BI_estado_mensajeria
EXEC MargeCreoQueOdioGDD.migrar_BI_estado_pedido;
EXEC MargeCreoQueOdioGDD.migrar_BI_estado_reclamo;
EXEC MargeCreoQueOdioGDD.migrar_BI_tipo_medio_pago;
EXEC MargeCreoQueOdioGDD.migrar_BI_pedidos;    
EXEC MargeCreoQueOdioGDD.migrar_BI_envio_mensajeria;
EXEC MargeCreoQueOdioGDD.migrar_BI_cupon_descuento;
EXEC MargeCreoQueOdioGDD.migrar_BI_reclamos;

/* --------------------------------------------- Ejecución de las vistas --------------------------------------------- */
/*
SELECT * FROM MargeCreoQueOdioGDD.V_MayorCantidadPedidos;
SELECT * FROM MargeCreoQueOdioGDD.V_MontoTotalXPedidosCancelados;
SELECT * FROM MargeCreoQueOdioGDD.V_ValorEnvioPromedioMensualXLocalidad;
SELECT * FROM MargeCreoQueOdioGDD.V_DesvioPromedioEnTiempoDeEntrega;
SELECT * FROM MargeCreoQueOdioGDD.V_MontoTotalDeCuponesUsadosXMes;
SELECT * FROM MargeCreoQueOdioGDD.V_PorcentajeEntregasMensuales; 
SELECT * FROM MargeCreoQueOdioGDD.V_ValorAseguradoPromedioMensual;
SELECT * FROM MargeCreoQueOdioGDD.V_PromedioCalificacionMensual;
SELECT * FROM MargeCreoQueOdioGDD.V_CantidadReclamosMensuales;
SELECT * FROM MargeCreoQueOdioGDD.V_TiempoPromedioResolucion;
SELECT * FROM MargeCreoQueOdioGDD.V_MontoMensualGenerado;
*/