-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Cempleado

	@nombre varchar(255) null,
	@direccion varchar(255) null,
	@fecha_nacimiento datetime null,
	@estado_civil int null,
	@grado_academico varchar(255) null


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	BEGIN
		INSERT INTO EMPLEADOS
		VALUES(@nombre,@direccion,@fecha_nacimiento,@estado_civil,@grado_academico)
	END
END
GO

