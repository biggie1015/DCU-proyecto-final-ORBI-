CREATE TABLE profesor(

id_profesor INT NOT NULL AUTO_INCREMENT,
	Correo VARCHAR(60),
	Contrasena VARCHAR(60),
	PRIMARY KEY (id_profesor)

);

INSERT INTO profesor 
VALUES(NULL,'ismel.com','hola');




CREATE TABLE materias(

	id_materias INT NOT NULL AUTO_INCREMENT,
	nombre_materia VARCHAR(25),
	horario TIME,
	id_profesor INT NOT NULL,
	id_estudiante INT NOT NULL,
	PRIMARY KEY (id_materias)

);

ALTER TABLE profesor 
ADD id_estu INT NOT NULL
AFTER Correo;


INSERT INTO materias
VALUES(2,'Programacion Web','19:00:00',2,2);

INSERT INTO materias
VALUES(2,'Programacion 3','05:00:00',1,2);

INSERT INTO materias
VALUES(3,'Matematica','17:20:00',2,1);


CREATE TABLE estudiantes(

    id_estu INT NOT NULL AUTO_INCREMENT,
	nombre_estu VARCHAR(25),
	PRIMARY KEY (id_estu)
	
);
1 	issac@hotmail.com 	2 	pollito
2 	Willys@itla.com 	1	hola 	
3 	ismel.com 	0 	hola

SELECT nombre_estu,nombre_materia
FROM estudiantes as est
INNER JOIN materias AS mat
ON est.id_materia = mat.id_materias WHERE id_materias =2;

ALTER TABLE materias
ADD id_estudiante INT NOT NULL
AFTER id_profesor;



ALTER TABLE profesor
ADD CONSTRAINT fk_estu
FOREIGN KEY(id_estu)
REFERENCES materias(id_estu);

INSERT INTO estudiantes
VALUES(NULL,'Ismel','1');
INSERT INTO estudiantes
VALUES(NULL,'Juan','1');
INSERT INTO estudiantes
VALUES(NULL,'Pedro','2');
-- agrgar foreign key a la tabla materias para que haga relacaion con la tabla profesor




ALTER TABLE materias
ADD CONSTRAINT fk_estu
FOREIGN KEY(id_profesor)
REFERENCES profesor(id_profesor);


SELECT nombre_estu
FROM estudiantes
WHERE id_estu = 1;


 SELECT correo,nombre_materia,contrasena
    FROM profesor AS pro
     INNER JOIN materias AS p
     ON pro.id_profesor = p.id_profesor 
	 WHERE correo = 'issac@hotmail.com';

//