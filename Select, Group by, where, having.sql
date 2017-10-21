SELECT Nombre
FROM Cliente
ORDER BY Nombre

SELECT Nombre
FROM Cliente
GROUP BY Nombre


SELECT COUNT(idCliente) as Repeticiones, Nombre
FROM Cliente
GROUP BY Nombre;

Select Sum(Precio) as SumaPrecio, AVG(Precio) As Promedio, MAX(Precio) as Maximo, Nombre
From Producto
group by Nombre


Select Sum(Precio) as SumaPrecio, AVG(Precio) As Promedio, MAX(Precio) as Maximo
From Producto

Select Sum(Precio) as SumaPrecio, AVG(Precio) As Promedio, MAX(Precio) as Maximo
From Producto
where precio >5

SELECT COUNT(idProducto)As Conteo, Nombre
FROM Producto
GROUP BY Nombre
HAVING COUNT(idProducto) >= 1;

Select Sum(Precio) as SumaPrecio, AVG(Precio) As Promedio, MAX(Precio) as Maximo, Nombre
From Producto
Group by Nombre
having Count(idProducto) >=0

Select Sum(Precio) as SumaPrecio, AVG(Precio) As Promedio, MAX(Precio) as Maximo
From Producto
where IdProveedor=1

Select Top 3 Nombre
from Cliente

Select Sum(Precio) as SumaPrecio, AVG(Precio) As Promedio, MAX(Precio) as Maximo
From Producto