-- FUNCIONES

-- Esta Función nos retorna el precio total de una compra en especifica
DELIMITER // 
CREATE FUNCTION fn_PrecioTotalDeUnaCompra(param_id_compra int) RETURNS int
    DETERMINISTIC
BEGIN
	declare numero int;
    
    select sum(Precio_Unitario) into numero
    from compras
    where id_compra = param_id_compra;
    
RETURN numero;
END //
DELIMITER ;
-- select techstoredb.fn_PrecioTotalDeUnaCompra(2);


-- Esta Función nos indica si hay suficiente stock para un producto en el inventario.
DELIMITER //
CREATE FUNCTION fn_DisponibilidadEnInventario(param_id_producto int, param_cantidad_verificar int) RETURNS varchar(255)
    DETERMINISTIC
BEGIN
	declare cantidad_en_inventario int;
    
    select sum(cantidad) into cantidad_en_inventario
    from inventario
    where id_producto = param_id_producto;
    
    if cantidad_en_inventario >= param_cantidad_verificar then
		return 'Hay suficiente stock';
	else
		return 'No hay suficiente stock';
	end if;
    
RETURN cantidad_en_inventario;
END //
DELIMITER ;
-- select techstoredb.fn_DisponibilidadEnInventario(2, 8);


-- STORED PROCEDURES

-- Este procedimiento nos ayuda a ajustar la cantidad en el inventario de un producto:
DELIMITER //
CREATE PROCEDURE sp_actualizarCantidadInventario(
    IN p_id_Producto INT,
    IN p_Nueva_Cantidad INT
)
BEGIN
    DECLARE cantidad_anterior INT;
    DECLARE mensaje VARCHAR(255);

    SELECT Cantidad INTO cantidad_anterior
    FROM inventario
    WHERE ID_Producto = p_id_Producto;

    UPDATE inventario
    SET Cantidad = p_Nueva_Cantidad
    WHERE ID_Producto = p_id_Producto;

    INSERT INTO historial_inventario (id_producto, cantidad_anterior, cantidad_nueva)
    VALUES (p_id_Producto, cantidad_anterior, p_Nueva_Cantidad);

    IF cantidad_anterior <> p_Nueva_Cantidad THEN
        SELECT p_id_Producto AS id_producto, p_Nueva_Cantidad AS cantidad, 'Cantidad en inventario actualizada con éxito.' AS mensaje;
    ELSE
        -- La cantidad no cambió, mostrar un mensaje indicando que no se realizó ninguna actualización
        SELECT 'La cantidad que ingresaste es la misma que la actual.' AS mensaje;
    END IF;
END //
DELIMITER ;
--  call techstoredb.sp_actualizarCantidadInventario(18, 10);
-- SELECT * FROM techstoredb.historial_inventario;


-- Este procedimiento nos ayuda a modificar el estado de un producto
DELiMITER //
CREATE PROCEDURE sp_actualizarEstadoProducto(
    IN p_id_Producto INT,
    IN p_Nuevo_Estado tinyint
)
BEGIN
    DECLARE estado_actual tinyint;

    SELECT Estado_Producto INTO estado_actual
    FROM productos
    WHERE id_Producto = p_id_Producto;

    IF estado_actual <> p_Nuevo_Estado THEN
        UPDATE productos
        SET Estado_Producto = p_Nuevo_Estado
        WHERE id_Producto = p_id_Producto;

        SELECT p_id_Producto AS id_producto, 'Estado del producto actualizado con éxito.' AS Mensaje;
    ELSE
        SELECT 'El nuevo estado es igual al estado actual, no se realizó ninguna actualización.' AS Mensaje;
    END IF;
END //
DELIMITER ;
-- call techstoredb.sp_actualizarEstadoProducto(4, false);