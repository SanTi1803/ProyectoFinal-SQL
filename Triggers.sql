-- TRIGGERS

-- Se crea una tabla llamada Alertas, en donde nos va a avisar si un producto tiene bajo o stock o no.
CREATE TABLE alertas (
	id_Producto int not null,
	Mensaje varchar(255) NOT NULL,
    Fecha_Alerta TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Se crea la tabla historial_precios para poder registrar los cambios de precios de los productos. 
CREATE TABLE historial_precios (
	id_producto int not null,
    Precio_anterior int not null,
    Fecha_Actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- Se crea un trigger con el fin de colocar el precio viejo en la tabla historial_precios una vez se actualiza la tabla productos
DELIMITER //
CREATE TRIGGER tr_historial_precios_triggers
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    IF NEW.Precio <> OLD.Precio THEN
        INSERT INTO historial_precios (id_Producto, Precio_anterior)
        VALUES (NEW.id_Producto, OLD.Precio);
    END IF;
END //
DELIMITER; 
/*
UPDATE productos
SET precio = 100
WHERE id_producto = 18
*/
-- SELECT * FROM techstoredb.historial_precios;


-- Se crea el trigger con el fin de colocar la alerta cuando un producto no tiene sufuciente stock.
DELIMITER //
CREATE TRIGGER tr_alerta_stock_bajo
AFTER UPDATE ON inventario
FOR EACH ROW
BEGIN
    IF NEW.Cantidad < 10 THEN	
        INSERT INTO alertas (id_producto, Mensaje)
        VALUES ( NEW.id_Producto ,'Stock bajo para el producto');
    END IF;
END //
DELIMITER ;
/*
UPDATE inventario
SET cantidad = 9
WHERE id_producto = 18
*/
-- SELECT * FROM techstoredb.alertas;