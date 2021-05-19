USE tienda_acme_amom;
CREATE TABLE usuarios(
usuario VARCHAR(30)NOT NULL PRIMARY KEY,
rol INT NOT NULL,
estado INT NOT NULL,
nombre_usuario VARCHAR(150) NOT NULL,
datos_complementarios VARCHAR(150) NOT NULL,
fecha_actualizacion TIMESTAMP NOT null
)ENGINE=INNODB;