USE [Cocoa]
GO

DECLARE	@return_value int,
		@id_cliente int

EXEC	@return_value = [dbo].[sp_insertar_cliente]
		@id_cliente = @id_cliente OUTPUT,
		@correo = N'carlos.astorgagomez@ucr.ac.cr',
		@nombre_cliente = N'Carlos',
		@apellidos_cliente = N'Astorga Gómez',
		@cod_direccion = NULL,
		@contrasena = N'lenguajes'

SELECT	@id_cliente as N'@id_cliente'

SELECT	'Return Value' = @return_value

GO
