-- TABLA: CLIENTE
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Letty', 'Campelli', 'lcampelli0@weebly.com', '5 Esch Lane', '379-693-4133');
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Bonni', 'Battin', 'bbattin1@examiner.com', '5200 Nova Trail', '199-863-3694');
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Yorke', 'Menghi', 'ymenghi2@huffingtonpost.com', '29768 Scoville Junction', '720-945-9936');
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Cecilla', 'Assaf', 'cassaf3@nytimes.com', '8 Meadow Ridge Lane', '854-973-7578');
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Niles', 'Shalloo', 'nshalloo4@state.gov', '27703 Express Street', '618-226-8640');
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Buiron', 'Rielly', 'brielly5@spiegel.de', '9145 Di Loreto Plaza', '784-604-6455');
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Cornie', 'Bartunek', 'cbartunek6@cisco.com', '69228 1st Road', '962-648-7785');
insert into cliente (Nombre, Apellido, Email, Direccion, Telefono) values ('Arlyn', 'Bullon', 'abullon7@bizjournals.com', '9 Glacier Hill Court', '741-649-9745');

-- TABLA: CATEGORIAS
insert into categorias (Nombre, Estado) values ('Smartphones y Dispositivos Móviles', true);
insert into categorias (Nombre, Estado) values ('Electrodomésticos Inteligentes', true);
insert into categorias (Nombre, Estado) values ('Computadoras y Accesorios', true);
insert into categorias (Nombre, Estado) values ('Electrónica de Entretenimiento', true);
insert into categorias (Nombre, Estado) values ('Dispositivos Wearables', false);

-- TABLA: PRODUCTOS
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (1, 1, 'iPhone 13', 900000, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (2, 1, 'Samsung Galaxy S21', 850899, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (3, 2, 'Nest Thermostat', 500000, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (4, 2, 'Ring Video Doorbell', 149000, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (5, 3, 'Laptop Dell XPS 13', 999000, false); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (1, 3, 'Logitech MX Master 3', 790000, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (2, 4, 'Samsung QLED 4K TV', 149999, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (3, 4, 'Sony PlayStation 5', 950000, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (4, 5, 'Apple Watch Series 7', 100399, false);
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (1, 1, 'Google Pixel 6', 899999, true);
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (6, 1, 'OnePlus 9 Pro', 109999, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (7, 2, 'Amazon Echo Show', 129999, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (8, 2, 'Smart Coffee Maker', 179900, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (7, 3, 'HP Spectre x360', 1139000, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (7, 3, 'Logitech Wireless Keyboard', 490999, false); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (8, 4, 'LG OLED 4K TV', 179999, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (6, 4, 'Nintendo Switch', 299.999, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (6, 5, 'Fitbit Charge 5', 129990, false);
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (8, 1, 'Smart Coffee ', 189900, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (7, 1, 'HP Spectre x380', 1149000, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (7, 1, 'Logitech Wireless Keyboard XPRO', 500999, false); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (8, 2, 'LG OLED 4K TV+', 179999, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (6, 2, 'Nintendo Switch 2', 299999, true); 
INSERT INTO Productos (id_Cliente, id_Categoria, Nombre, Precio, Estado_Producto) VALUES (6, 2, 'Fitbit Charge 7', 1229990, true); 


-- TABLAS: COMPRAS
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (1, 16, 3, 539997, '2024-02-12');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (6, 3, 2, 1000000, '2024-02-05');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (5, 8, 3, 2850000, '2024-02-07');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (6, 8, 4, 3800000, '2024-03-11');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (1, 4, 1, 149000, '2024-03-30');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (5, 3, 5, 1701798, '2024-01-02'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (2, 2, 2, 2278000, '2024-01-29'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (8, 3, 1, 850899, '2024-01-16'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (8, 11, 4, 439996, '2024-03-29'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (4, 14, 3, 3417000, '2024-03-27'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (5, 7, 3, 449997, '2024-01-21'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (7, 10, 1, 899999, '2024-03-08'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (3, 3, 3, 1500000, '2024-03-06'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (6, 7, 3, 447000, '2024-01-18'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (3, 14, 2, 2278000, '2024-01-17'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (3, 16, 1, 179999, '2024-03-09'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (1, 1, 1, 149000, '2024-02-27'); 
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (2, 11, 3, 329997, '2024-01-29');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (5, 17, 4, 1196000, '2024-02-15');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (7, 10, 1, 899000, '2024-02-03');
insert into compras (id_Cliente, id_Producto, Cantidad_Comprada, Precio_Unitario, Fecha_Compra) values (4, 18, 2, 259800, '2024-03-19');


-- TABLA: DEPARTAMENTO
insert into Departamento (Nombre_Departamento) values ('Ventas');
insert into Departamento (Nombre_Departamento) values ('Soporte Técnico');
insert into Departamento (Nombre_Departamento) values ('Inventario y Logística');
insert into Departamento (Nombre_Departamento) values ('Tecnología de la Información (TI)');
insert into Departamento (Nombre_Departamento) values ('Finanzas');

-- TABLA: PERSONAL
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (3, 'Ebeneser', 'Loadwick', 'eloadwick0@youtu.be', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (1, 'Adria', 'Lanchberry', 'alanchberry1@qq.com', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (5, 'Foster', 'Harmour', 'fharmour2@oracle.com', false);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (2, 'Corey', 'Levings', 'clevings3@paginegialle.it', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (5, 'Shaylah', 'Limrick', 'slimrick4@phoca.cz', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (5, 'Demetris', 'Schorah', 'dschorah5@microsoft.com', false);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (4, 'Sheelah', 'Ryley', 'sryley6@cbslocal.com', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (3, 'Jacenta', 'Schollick', 'jschollick7@goo.ne.jp', false);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (3, 'Jerome', 'Cockell', 'jcockell8@facebook.com', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (2, 'Obie', 'Girsch', 'ogirsch9@home.pl', false);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (1, 'Rikki', 'Vanderson', 'rvandersona@mayoclinic.com', false);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (5, 'Kristi', 'Levensky', 'klevenskyb@discovery.com', false);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (3, 'Harlie', 'Sinisbury', 'hsinisburyc@jugem.jp', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (1, 'Engracia', 'Everitt', 'eeverittd@dailymail.co.uk', false);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (3, 'Michel', 'Tejero', 'mtejeroe@trellian.com', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (4, 'Colette', 'Doucette', 'cdoucettef@ameblo.jp', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (2, 'Marta', 'Emby', 'membyg@jimdo.com', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (1, 'Gussie', 'Turl', 'gturlh@ucsd.edu', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (4, 'Desi', 'Cranny', 'dcrannyi@sina.com.cn', true);
insert into personal (id_Departamento, Nombre, Apellido, email, Estado) values (2, 'Rory', 'Alpe', 'ralpej@163.com', true);


-- TABLA: TRANSACCION
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (6, 4, 'Venta', 4, '2024-03-09');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (3, 1, 'Venta', 3, '2024-03-09');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (6, 4, 'Recepcion', 5, '2024-02-08');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (10, 2, 'Actualizacion', 1, '2024-01-13');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (3, 8, 'Venta', 3, '2024-03-16');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (12, 7, 'Venta', 1, '2024-02-29');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (14, 8, 'Venta', 3, '2024-02-26');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (18, 2, 'Venta', 3, '2024-02-25');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (3, 2, 'Venta', 1, '2024-01-06');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (4, 5, 'Venta', 4, '2024-01-01');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (9, 6, 'Recepcion', 2, '2024-02-09');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (2, 3, 'Actualizacion', 5, '2024-03-09');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (12, 7, 'Recepcion', 3, '2024-02-03');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (17, 4, 'Venta', 4, '2024-01-13');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (8, 4, 'Venta', 1, '2024-01-29');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (17, 2, 'Venta', 4, '2024-03-03');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (13, 7, 'Recepcion', 3, '2024-01-19');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (8, 5, 'Venta', 2, '2024-03-19');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (14, 6, 'Venta', 3, '2024-03-06');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (4, 5, 'Venta', 1, '2024-02-01');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (10, 15, 'Actualizacion', 4, '2024-02-21');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (4, 12, 'Venta', 4, '2024-03-05');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (6, 15, 'Venta', 3, '2024-02-27');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (14, 16, 'Venta', 3, '2024-02-29');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (16, 19, 'Actualizacion', 5, '2024-01-12');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (15, 15, 'Venta', 2, '2024-01-05');
insert into transaccion (id_Producto, id_Persona, Tipo_Transaccion, Cantidad, Fecha_Transaccion) values (1, 13, 'Venta', 3, '2024-02-18');


-- TABLAS: INVENTARIO
insert into inventario (id_Producto, Cantidad, Fecha) values (1, 13, '2023-02-05');
insert into inventario (id_Producto, Cantidad, Fecha) values (5, 19, '2023-04-30');
insert into inventario (id_Producto, Cantidad, Fecha) values (4, 20, '2023-09-20');
insert into inventario (id_Producto, Cantidad, Fecha) values (8, 19, '2024-02-01');
insert into inventario (id_Producto, Cantidad, Fecha) values (11, 10, '2023-09-17');
insert into inventario (id_Producto, Cantidad, Fecha) values (17, 15, '2023-04-09');
insert into inventario (id_Producto, Cantidad, Fecha) values (4, 18, '2023-09-09');
insert into inventario (id_Producto, Cantidad, Fecha) values (3, 20, '2023-12-01');
insert into inventario (id_Producto, Cantidad, Fecha) values (4, 19, '2023-05-29');
insert into inventario (id_Producto, Cantidad, Fecha) values (9, 15, '2023-05-28');
insert into inventario (id_Producto, Cantidad, Fecha) values (18, 18, '2023-09-22');
insert into inventario (id_Producto, Cantidad, Fecha) values (17, 19, '2023-02-11');
insert into inventario (id_Producto, Cantidad, Fecha) values (11, 13, '2024-01-01');
insert into inventario (id_Producto, Cantidad, Fecha) values (14, 17, '2024-01-13');
insert into inventario (id_Producto, Cantidad, Fecha) values (12, 14, '2023-05-19');
insert into inventario (id_Producto, Cantidad, Fecha) values (17, 14, '2023-03-28');
insert into inventario (id_Producto, Cantidad, Fecha) values (8, 16, '2023-08-06');
insert into inventario (id_Producto, Cantidad, Fecha) values (17, 19, '2023-04-09');
insert into inventario (id_Producto, Cantidad, Fecha) values (2, 20, '2024-01-17');
insert into inventario (id_Producto, Cantidad, Fecha) values (9, 18, '2023-05-07');