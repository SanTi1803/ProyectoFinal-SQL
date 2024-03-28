-- VISTAS

-- En esta vista podemos ver el inventario de la empresa
CREATE OR REPLACE VIEW vista_inventario AS
SELECT p.id_Producto, p.Nombre AS Producto, p.Precio, i.Cantidad
FROM Productos p
JOIN Inventario i ON p.id_Producto = i.ID_Producto;
-- SELECT * FROM techstoredb.vista_inventario;
 
-- Esta vista nos permite ver el historia de las trasacciones con los datos del personal y el tipo de transaccion
CREATE OR REPLACE VIEW vista_historial_transacciones AS
SELECT p.Nombre AS Personal, t.Tipo_Transaccion, t.Cantidad, t.Fecha_Transaccion
FROM Transaccion t
JOIN personal p ON t.id_Persona = p.id_Persona;
-- SELECT * FROM techstoredb.vista_historial_transacciones;

-- Esta vista nos muestra las ventas total por producto
CREATE OR REPLACE VIEW vista_ventas_producto AS
SELECT t.id_Producto, p.Nombre AS Producto, SUM(t.Cantidad) AS Total_Ventas
FROM Transaccion t
JOIN Productos p ON t.id_Producto = p.id_Producto
WHERE t.Tipo_Transaccion = 'Venta'
GROUP BY t.id_Producto;
-- SELECT * FROM techstoredb.vista_ventas_producto;

-- En esta vista podemos todos los productos y saber a que categoria pertenece cada uno
CREATE OR REPLACE VIEW vista_productos_con_categoria AS
SELECT p.id_Producto, p.Nombre, p.Precio, p.Estado_Producto, c.Nombre AS Categoria
FROM productos p
JOIN categorias c ON p.id_Categoria = c.id_Categoria;
-- SELECT * FROM techstoredb.vista_productos_con_categoria;

-- Esta vista muestra las ventas de los empleados
CREATE OR REPLACE VIEW vista_ventas_empleados AS
SELECT p.id_Persona, p.Nombre AS Empleado, SUM(t.Cantidad) AS Total_Ventas
FROM Transaccion t
JOIN Personal p ON t.id_Persona = p.id_Persona
WHERE t.Tipo_Transaccion = 'Venta'
GROUP BY t.id_Persona
ORDER BY total_ventas DESC;
-- SELECT * FROM techstoredb.vista_ventas_empleados;

-- Esta vista llama a la función fn_PrecioTotalDeUnaCompra para saber el id de la compra y el precio total de la misma
CREATE OR REPLACE VIEW vista_precio_total_compra AS
SELECT id_compra, fn_PrecioTotalDeUnaCompra(id_compra) AS Precio_Total
FROM compras
ORDER BY fn_PrecioTotalDeUnaCompra(id_compra) DESC; 
-- SELECT * FROM techstoredb.vista_precio_total_compra;

-- Esta vista llama a la función fn_DisponibilidadEnInventario(id_Producto, 10) y nos indica si el producto tiene stock o no. Tambien llama al id del producto, nombre y precio.
CREATE OR REPLACE VIEW vista_estado_productos AS
SELECT id_Producto, Nombre, Precio,  fn_DisponibilidadEnInventario(id_Producto, 10) AS Disponibilidad
FROM productos;
-- SELECT * FROM techstoredb.vista_estado_productos;
