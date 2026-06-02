CREATE TABLE Clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE Tipo_Estado (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    estado VARCHAR(50)
);

CREATE TABLE Productos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50),
    precio FLOAT,
    descripcion VARCHAR(255),
    imagen VARCHAR(255)
);

CREATE TABLE Pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER NOT NULL,
    total FLOAT,
    fecha_inicio DATETIME,
    fecha_fin DATETIME,
    id_tipo_estado INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    FOREIGN KEY (id_tipo_estado) REFERENCES Tipo_Estado(id)
);

CREATE TABLE Detalles_Pedido (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pedido INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER,
    precio_unitario FLOAT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);