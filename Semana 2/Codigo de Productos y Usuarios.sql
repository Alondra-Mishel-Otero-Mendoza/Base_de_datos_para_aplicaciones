CREATE TABLE productos(
sku VARCHAR(50)NOT NULL PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
descripcion VARCHAR(4000) NOT NULL,
precio_unitario float NOT NULL,
existencias int NOT NULL
)ENGINE=INNODB;

CREATE TABLE usuarios(
usuario VARCHAR(30)NOT NULL PRIMARY KEY,
rol INT NOT NULL,
estado INT NOT NULL,
nombre_usuario VARCHAR(150) NOT NULL,
datos_complementarios VARCHAR(150) NOT NULL,
fecha_actualizacion TIMESTAMP NOT null
)ENGINE=INNODB;