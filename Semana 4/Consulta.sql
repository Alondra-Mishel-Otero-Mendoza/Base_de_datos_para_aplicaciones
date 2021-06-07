ALTER TABLE direcciones_proveedores 
CHANGE COLUMN id_direccion int NOT NULL PRIMARY KEY AUTO_INCREMENT,
CHANGE COLUMN calle VARCHAR(100) NOT NULL,
CHANGE COLUMN colonia VARCHAR(100) NOT NULL,
CHANGE COLUMN cp VARCHAR(50) NOT NULL,
CHANGE COLUMN municipio VARCHAR(50) NOT NULL,
CHANGE COLUMN pais VARCHAR(50) NOT NULL,
CHANGE COLUMN no_exterior VARCHAR(50) NOT NULL DEFAULT 0,
CHANGE COLUMN no_interior  VARCHAR(50) NOT NULL DEFAULT 0,
CHANGE COLUMN fecha_actualizacion TIMESTAMP NOT NULL,
CHANGE COLUMN id_proveedor  int NOT NULL,
CHANGE COLUMN FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
)ENGINE=INNODB;