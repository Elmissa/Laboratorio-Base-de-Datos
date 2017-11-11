Create Procedure AgregarClientes
@Nombre varchar(150), @ApPaterno varchar(150), @ApMaterno varchar(150), @IdTelefono int ,@IdDireccion int
AS
Insert Into Cliente(Nombre,ApPaterno,ApMaterno,IdTelefono,IdDireccion)
VALUES	(@Nombre, @ApPaterno, @ApMaterno, @IdTelefono, @IdDireccion)
Return
exec AgregarClientes menos,mas,division,1,1
----------------------------------------------------------------------------------
Create Procedure AgregarEmpleado
@Nombre varchar(150), @ApPaterno varchar(150), @ApMaterno varchar(150), @IdTelefono int ,@IdDireccion int
AS
Insert Into Empleado(Nombre,ApPaterno,ApMaterno,IdTelefono,IdDireccion)
VALUES	(@Nombre, @ApPaterno, @ApMaterno, @IdTelefono, @IdDireccion)
Return
exec AgregarEmpleado Empleado,Del,Mes,2,2
--------------------------------------------------------------------------------------
Create Procedure AgregarProducto
@Nombre varchar(150), @Descripcion varchar(150), @Precio money, @IdProveedor int ,@IdCategoria int
AS
Insert Into Producto(Nombre,Descripcion,Precio,IdProveedor,IdCategoria)
VALUES	(@Nombre, @Descripcion,@Precio,  @IdProveedor , @IdCategoria)
Return
exec AgregarProducto Chetos,'Chetos Puffet',5.50,2,1
----------------------------------------------------------------------------------------------
Create Procedure AgregarDireccion
@Nombre varchar(50), @calle varchar(50), @numero int,@colonia varchar(50),@CodPostal int,
 @IdMunicipio int,@IdEstado int ,@IdPais int
AS
Insert Into Direccion(Nombre,Calle,Numero,Colonia,CodigoPostal,IdMunicipio,IdEstado,IdPais)
VALUES	(@Nombre, @calle,@numero,@colonia,@CodPostal , @IdMunicipio,@IdEstado,@IdPais)
Return
exec AgregarDireccion Panfilo,'mision real',526.50,'San Miguel',66646,1,1,1
-------------------------------------------------------------------------------------------------------------
Create Procedure AgregarProveedoor
@Nombre varchar(50), @rfc varchar(50),@IdDireccion int ,@IdProducto int
AS
Insert Into Proveedores(Nombre,RFC,IdDireccion,IdProducto)
VALUES	(@Nombre, @rfc,@IdDireccion,@IdProducto)
Return
exec AgregarProveedoor 'Pepsico','gava169456asd',1,1
-------------------------------------------------------------------------------------------------------------------------------
create trigger Productos
on Producto
after update -- delete/*instead*/
as
begin
	select * 
	from INSERTED
	select *
	from DELETED
END

update Producto
Set Nombre='panfilo'
where Descripcion= 'Descripcion'
-----------------------------------------------------------------------------------------------

create trigger Productosi
on Producto
after delete -- delete/*instead*/
as
begin
	select * 
	from INSERTED
	select *
	from DELETED
END

delete 
from Producto
where Nombre = 'panfilo'

-----------------------------------------------------------------------------------------------

create trigger Clientez
on Cliente
instead of update -- delete/*instead*/
as
begin
	select * 
	from INSERTED
	select *
	from DELETED
END

update Cliente
Set Nombre='Missael'
where Nombre= 'ElLoko'

-----------------------------------------------------------------------------------------------

create trigger Clientes
on Cliente
instead of delete -- delete/*instead*/
as
begin
	select * 
	from INSERTED
	select *
	from DELETED
END



delete 
from Cliente
where Nombre = 'ElLoko'

------------------------------------------------------------------------------------------------------------
create function FnPrecioMaIva (@Precio float)
RETURNS INT
AS
BEGIN
	Declare @Iva float;
	Declare @Total float;
	Declare @Suma float;
	set @Iva = 0.16
	set @Suma = @Iva * @Precio
	set @Total = @Precio + @Suma
	Return @Total 
END

-------------------------------------------------------