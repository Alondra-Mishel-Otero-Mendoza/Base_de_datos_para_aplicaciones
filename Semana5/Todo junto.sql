CREATE TABLE clientes(
id_cliente int NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion TIMESTAMP NOT NULL
)ENGINE=INNODB;

CREATE TABLE productos(
id_producto int NOT NULL PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
descripcion VARCHAR(4000) NOT NULL,
precio_unitario float NOT NULL,
existencias int NOT NULL
)ENGINE=INNODB;

CREATE TABLE ventas(
id_venta int NOT NULL PRIMARY KEY,
fecha_venta TIMESTAMP,
total_venta VARCHAR(50),
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=INNODB;

CREATE TABLE  detalle_ventas(
id_detalle_venta INT NOT NULL PRIMARY KEY,
cantidad_producto VARCHAR(50) NOT NULL,
precio VARCHAR(50) NOT NULL,
total_x_producto  VARCHAR(50) NOT NULL,
id_venta INT NOT NULL,
id_producto int NOT NULL,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto) 
)ENGINE=INNODB;


INSERT INTO productos
VALUES ("1","labial","marca, color",526,891),
("2","brocha","tamaño",612,625),
("3","macarilla","sabor y ayuda",812,513;

INSERT INTO clientes
VALUES (1,"julia","acosta","torrez","775123091","julia@torrez.com","2020-07-10 17-41-33"),
(2,"brandon","cordero","ruiz"," 1481924221","brandon@cordero.com","2021-01-27 23-15-21"),
(3,"lucia","cortez","perez"," 31208312124 ","lucia@cortez.com","2021-03-23 13-13-13");

INSERT INTO ventas
VALUES ("1","2021-03-23 13-13-13",821,1),
("2"," 2020-07-10 17-41-33",938,2),
("3","2021-01-27 23-15-21",829,3);

INSERT INTO detalle_ventas
VALUES ("1","0293412",'53','612',1,2),
("2","049012",'618','81',1,1),
("3","139210",'930','73',2,1),
("4","029321",'811','39',2,3),
("5","139213",'999','52',3,3),
("6","983249",'894','81',3,2);