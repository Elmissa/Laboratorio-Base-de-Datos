create view JuntarTProducto AS
SELECT Producto.idProducto, Producto.Nombre, Producto.Descripcion, Producto.Precio, Categoria.Nombre as Categoria, Proveedores.Nombre as Provedor
From Producto	
Join Categoria ON Producto.IdCategoria = Categoria.idCategoria
join Proveedores on Producto.IdProveedor = Proveedores.idProvedor

select * From JuntarTProducto

--------------------------------------------------------------------------------------------------

create view JuntarTodosProducto AS
SELECT        
dbo.Producto.idProducto, dbo.Producto.Nombre, dbo.Producto.Descripcion, dbo.Producto.Precio, dbo.Producto.IdProveedor, dbo.Categoria.Nombre AS Categoria
FROM            
dbo.Producto 
INNER JOIN                         
dbo.Categoria ON dbo.Producto.IdCategoria = dbo.Categoria.idCategoria

select * From JuntarTodosProducto
--------------------------------------------------------------------------------------------------
create view EmpleadoTelefono AS
SELECT Empleado.idEmpleado, Empleado.Nombre, Empleado.ApPaterno, Empleado.ApMaterno,TipoTelefono.Tipo As TipoTel
From Empleado	
Join TipoTelefono ON Empleado.IdTelefono = TipoTelefono.idTipoTelefono

select * From 
--------------------------------------------------------------------------------------------------
create view AllEmpleado AS
SELECT Empleado.idEmpleado, Empleado.Nombre, Empleado.ApPaterno, Empleado.ApMaterno,TipoTelefono.Tipo As TipoTel, Direccion.Calle, Direccion.CodigoPostal, Direccion.Colonia
From Empleado	
Join TipoTelefono ON Empleado.IdTelefono = TipoTelefono.idTipoTelefono
join Direccion on Empleado.Nombre = Direccion.Nombre

select * From AllEmpleado 
--------------------------------------------------------------------------------------------------
create view AllDireccion AS
SELECT Direccion.Calle,Direccion.Numero,Direccion.Colonia, 
Direccion.CodigoPostal,Municipio.Nombre AS Municipio, Estado.Nombre AS Estado, Pais.Nombre AS Pais
From Direccion	
Join Municipio ON Direccion.IdMunicipio = Municipio.idMunicipio
join Estado on Direccion.IdEstado = Estado.idEstado
join Pais on Direccion.IdPais	 = Pais.idPais

select * From AllDireccion 
--------------------------------------------------------------------------------------------------
create view AllCliente AS
SELECT Cliente.idCliente,Cliente.Nombre,Cliente.ApPaterno,Cliente.ApMaterno,TipoTelefono.Tipo As TipoTel, Direccion.Calle, Direccion.CodigoPostal, Direccion.Colonia
From Cliente	
Join TipoTelefono ON Cliente.IdTelefono = TipoTelefono.idTipoTelefono
join Direccion on Cliente.Nombre = Direccion.Nombre

select * From AllCliente 
--------------------------------------------------------------------------------------------------
create view AllClienteSubConsulta AS
SELECT Cliente.idCliente,Cliente.Nombre,Cliente.ApPaterno,Cliente.ApMaterno,TipoTelefono.Tipo As TipoTel, Direccion.Calle, Direccion.CodigoPostal, Direccion.Colonia
From Cliente	
Join TipoTelefono ON Cliente.IdTelefono = TipoTelefono.idTipoTelefono
join Direccion on Cliente.Nombre = Direccion.Nombre
where Cliente.IdTelefono = (Select MIN(IdTelefono)From Cliente)

select * From AllClienteSubConsulta 
--------------------------------------------------------------------------------------------------
create view AllClienteWhere AS
SELECT Cliente.idCliente,Cliente.Nombre,Cliente.ApPaterno,Cliente.ApMaterno,TipoTelefono.Tipo As TipoTel, Direccion.Calle, Direccion.CodigoPostal, Direccion.Colonia
From Cliente	
Join TipoTelefono ON Cliente.IdTelefono = TipoTelefono.idTipoTelefono
join Direccion on Cliente.Nombre = Direccion.Nombre
where Cliente.IdTelefono = 1

select * From AllClienteWhere 


