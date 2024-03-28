CREATE SCHEMA TechStoreDB;

USE TechStoreDB;

-- Creación de tablas
CREATE TABLE productos(
	id_Producto int auto_increment not null primary key,
    id_Cliente int not null,
    id_Categoria int not null,
    Nombre varchar(225) not null,
    Precio int not null,
    Estado_Producto TINYINT not null
);

CREATE TABLE cliente(
	id_Cliente int auto_increment not null primary key,
    Nombre varchar(255) not null,
    Apellido varchar(255) not null,
    Email varchar(255) not null,
    Direccion varchar(255) not null,
    Telefono varchar(255) not null
);

CREATE TABLE compras(
	id_Compra int auto_increment not null primary key,
    id_Cliente int not null,
    id_Producto int not null,
    Cantidad_Comprada int not null,
    Precio_Unitario int not null,
    Fecha_Compra date not null
);

CREATE TABLE transaccion(
	id_transaccion int auto_increment not null primary key,
    id_Producto int not null,
    id_Persona int not null,
    Tipo_Transaccion varchar(255) not null,
    Cantidad int not null,
    Fecha_Transaccion date not null
);

CREATE TABLE categorias(
	id_Categoria int auto_increment not null primary key,
    Nombre varchar(255) not null,
    Estado TINYINT not null
);

CREATE TABLE personal(
	id_Persona int auto_increment not null primary key,
    id_Departamento int not null,
    Nombre varchar(255) not null,
    Apellido varchar(255) not null,
    Email varchar(255) not null,
    Estado tinyint not null
);

CREATE TABLE departamento(
	id_Departamento int auto_increment not null primary key,
    Nombre_Departamento varchar(255) not null
);

CREATE TABLE inventario(
	id_Inventario int auto_increment not null primary key,
    id_Producto int not null,
    Cantidad int not null,
    Fecha date not null
);

CREATE TABLE historial_inventario (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    cantidad_anterior INT,
    cantidad_nueva INT,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Foreing key

ALTER TABLE productos ADD CONSTRAINT FK_PRODUCTOS_CLIENTES
FOREIGN KEY FK_PRODUCTOS_CLIENTES(id_Cliente) REFERENCES cliente(id_Cliente);

ALTER TABLE productos ADD CONSTRAINT FK_PRODUCTO_CATEGORIA
FOREIGN KEY FK_PRODUCTO_CATEGORIA(id_Categoria) REFERENCES categorias(id_Categoria);

ALTER TABLE compras ADD CONSTRAINT FK_COMPRAS_CLIENTE
FOREIGN KEY FK_COMPRAS_CLIENTE(id_Cliente) REFERENCES cliente(id_Cliente);

ALTER TABLE compras ADD CONSTRAINT FK_COMPRAS_PRODUCTO
FOREIGN KEY FK_COMPRAS_CLIENTE(id_Producto) REFERENCES productos(id_Producto);

ALTER TABLE transaccion ADD CONSTRAINT FK_TRANSACCION_PRODUCTO
FOREIGN KEY FK_TRANSACCION_PRODUCTO(id_Producto) REFERENCES productos(id_Producto);

ALTER TABLE personal ADD CONSTRAINT FK_PERSONAL_DEPARTAMENTO
FOREIGN KEY FK_PERSONAL_DEPARTAMENTO(id_Departamento) REFERENCES departamento(id_Departamento);

ALTER TABLE inventario ADD CONSTRAINT FK_INVENTARIO_PRODUCTO
FOREIGN KEY FK_INVENTARIO_PRODUCTO(id_Producto) REFERENCES productos(id_Producto);

ALTER TABLE transaccion ADD CONSTRAINT FK_TRANSACCION_PERSONAL
FOREIGN KEY FK_transaccion_PRODUCTO(id_Persona) REFERENCES personal(id_Persona);

ALTER TABLE historial_inventario ADD CONSTRAINT FK_HISTORIALINVENTARIO_PRODUCTO
FOREIGN KEY FK_HISTORIALINVENTARIO_PRODUCTO(id_producto) REFERENCES productos(id_producto);
