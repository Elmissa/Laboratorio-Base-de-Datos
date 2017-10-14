select * from Direccion

insert into Direccion
values ('Alberto', 'San Isidro', 326, 'San Isidro', 66646, 1, 1, 1)

insert into Direccion
values ('Missael', 'Pueblo', 632, 'Pueblo', 66646, 1, 1, 1)

insert into Direccion
values ('Daniel', 'Huinala', 123, 'Portal', 66646, 1, 1, 1)

update Direccion
Set Nombre='asdf', CodigoPostal =64666, Colonia='rancho'
where Nombre='Daniel'

update Direccion
Set Nombre='Nose', CodigoPostal =64666
where idDireccion=4

delete 
from Direccion
where Nombre = 'Missael'

delete 
from Direccion
where Calle = 'Pueblo'

delete 
from Direccion
where Colonia = 'Portal'

delete 
from Direccion
where CodigoPostal = '66646'









select * from Categoria

insert into Categoria
values ('Medicamento')

insert into Categoria
values ('Bebidas')

insert into Categoria
values ('Comida')

update Categoria
Set Nombre='asdf'
where Nombre='Medicamento'

Delete
From Categoria
Where Nombre = 'Comida'

Delete
From Categoria
Where Nombre = 'Bebidas'

Delete
From Categoria
Where Nombre = 'Medicamento'

Delete
From Categoria
Where idCategoria = '2'











select * from Cliente

insert into Cliente
Values ('Missael', 'Granados', 'Vazquez', 1 , 1)

insert into Cliente
Values ('Alberto', 'Vazquez', 'Granados', 1 , 1)

insert into Cliente
Values ('Missael', 'Granados', 'Vazquez', 1 , 1)

update Cliente
Set Nombre='asdf', CodigoPostal =64666, Colonia='rancho'
where Nombre='Daniel'

update Cliente
Set Nombre='Nose', ApPaterno ='ApPaterno', ApMaterno = 'ApMaterno'
where idCliente=1002

Delete 
From Cliente
where Nombre = 'Missael'

Delete 
From Cliente
where ApPaterno = 'Vazquez'

Delete 
From Cliente
where ApMaterno = 'Vazquez'

Delete 
From Cliente
where idCliente = '1008'














select * from Pais

insert into Pais
values ('Mexico')

insert into Pais
values ('Canada')

insert into Pais
values ('EEUU')










select * from producto

insert into Producto
values ('Nombre', 'Descripcion', 10, 1, 1)

insert into Producto
values ('Sabritas', 'Tienes sabritas', 10 , 1, 1)

insert into Producto
values ('Pepsi', 'tiene pepsi', 15, 1, 1)








select * from Proveedores

insert into Proveedores
values ('Nombre', 'RFC',1, 1)

insert into Proveedores
values ('Pepsi', 'RFC',2, 3)

insert into Proveedores
values ('Sabritas', 'RFC',3, 2)









select * from TelefonoCliente

insert into TelefonoCliente
values (1)

insert into TelefonoCliente
values (3)

insert into TelefonoCliente
values (2)









select * from TelefonoEmpleado

insert into TelefonoEmpleado
values (1)

insert into TelefonoEmpleado
values (3)

insert into TelefonoEmpleado
values (2)










select * from TipoTelefono

insert into TipoTelefono
values ('Movil')

insert into TipoTelefono
values ('Casa')

insert into TipoTelefono
values ('Oficina')









select * from Empleado

insert into Empleado
values ('Nombre', 'ApPaterno', 'ApMaterno', 1,1)

insert into Empleado
values ('Missael', 'Granados', 'Vazquez', 1,1)

insert into Empleado
values ('Alberto', 'Vazquez', 'Granados', 1,1)









select * from Estado

insert into Estado
values ('Estado')

insert into Estado
values ('Nuevo Leon')

insert into Estado
values ('Nose')










select * from Municipio

insert into Municipio
values ('Apodaca')

insert into Municipio
values ('Guadalupe')

insert into Municipio
values ('Municipio')