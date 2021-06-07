CREATE TABLE proveedores (
id_proveedor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
proveedor VARCHAR(100) NOT NULL,
nombre_contacto VARCHAR(100) NOT NULL,
telefono_contacto VARCHAR(50) NOT NULL,
email_contacto  VARCHAR(50) NOT NULL,
fecha_actualizacion TIMESTAMP NOT null
)ENGINE=INNODB;  
