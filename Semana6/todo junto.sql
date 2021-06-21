SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE detalle_ventas;

CREATE TABLE clientes(
id_cliente int NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion Date NOT NULL
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
fecha_venta Date,
total_venta VARCHAR(50),
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=INNODB;

CREATE TABLE  detalle_ventas(
id_detalle_venta INT NOT NULL PRIMARY KEY,
cantidad_producto VARCHAR(50) NOT NULL,
precio VARCHAR(50) NOT NULL,
total_x_producto  float GENERATED ALWAYS AS (cantidad_producto * precio),
id_venta INT NOT NULL,
id_producto int NOT NULL,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto) 
)ENGINE=INNODB;

INSERT INTO productos
 VALUES(1,"Coca cola","Refresco","36",5),
(2,"Fabuloso","Limpieza","18",5),
(3,"Galletas","Gamesa","10",9);

INSERT INTO clientes
VALUES (1,"Gilberto ","Lopez ","Perez","7751489635 ","gil123@gmail.com"," 2021-06-01"),
(2,"Jair","Marquez","Barraza"," 7751694857 ","jair123@gmail.com"," 2021-06-03"),
(3,"Alondra","Otero","Mendoza"," 7756984568 ","Alo123@gmail.com","2021-06-09");
  
  
INSERT INTO ventas
VALUES (1,"2021-05-01",12,1),
(2,"2021-05-02",13,1),
(3,"2021-05-03",14,2),
(4,"2020-05-04",15,3),
(5,"2020-05-05",16,3),
(6,"2020-05-06",17,2),
(7,"2020-05-07",18,2),
(8,"2020-05-08",19,3),
(9,"2020-05-08",20,1),
(10,"2020-05-10",21,1);

INSERT INTO detalle_ventas(id_detalle_venta,cantidad_producto,precio,id_venta,id_producto)
VALUES 
(1,"5","36",1,2),
(2,"1","18",3,1),
(3,"12","15",2,1),
(4,"10","5",2,3),
(5,"12","21",3,2);

SELECT clientes.nombre,clientes.primer_apellido,clientes.segundo_apellido, MAX(total_x_producto)
FROM detalle_ventas,clientes
WHERE total_x_producto