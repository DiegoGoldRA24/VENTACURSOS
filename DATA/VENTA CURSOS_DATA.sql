CREATE DATABASE VENTACURSOS;
USE VENTACURSOS;

-- INGRESAR REGISTROS EN LA TABLA PERSONA


INSERT INTO PERSONA (DNIPER,NOMPER,APEPER,FECNACPER,CELPER,EMAPER,SEXPER,TIPER,DISTPER)
VALUES 
('72720518','Luis Diego','Rojas Ayllon','1999/07/24','923820545','lrojas@vallegrande.edu.pe','M','EMP','San Vicente'),
('78987656','Pedro Luis','Rojas Huaman','1999/09/12','989876543','projas@vallegrande.edu.pe','M','EMP','San Vicente'),
('76776787','Alvaro Daniel','Iturrizaga Leyva','1999/01/04','909878989','aiturrizaga@vallegrande.edu.pe','M','EMP','Imperial'),
('76524356','Luis Aquilino','Manzo Candela','1982/12/12','987898767','lmanzo@vallegrande.edu.pe','M','EMP','Lunahuana'),
('76543232','Jesus Benito','Canela Guando','1984/11/30','909878987','jcanales@vallegrande.edu.pe','M','EMP','San Luis'),
('76543232','Manuel Alonso','Araujo Nuñez','1984/11/30','909878987','malonso@vallegrande.edu.pe','M','EMP','Lunahuana');


-- INGRESANDO REGISTROS A LA TABLA DEPARTAMENTOS


INSERT INTO DEPARTAMENTO  (NOMDEP)
VALUES
('Recursos Humanos'),
('Marqueting'),
('Administración'),
('Logistica'),
('Escuela');


-- INGRESANDO REGISTROS A LA TABLA CURSO


INSERT INTO CURSO (CODCUR,DESCUR,CATCUR,DURCUR)
VALUES
('JAV','Curso de Programación','ADS','7'),
('VER','Curso de Modelamiento de Base de Datos','ADS','3'),
('SQL','Curso de Base de Datos','ADS','5'),
('ING','Curso de Ingles','GEN','360'),
('EST','Curdo de Estadisticas Generales','GEN','7');


-- INGRESANDO REGISTRO A LA TABLA NIVEL_SUELDO


INSERT INTO NIVEL_SUELDO (MONMINNIVSUE,MONMAXNIVSUE,BONUSNIVSUE)
VALUES
('900.0','3000.0','150.0'),
('800.0','1500.0','100.0'),
('900.0','2000.0','200.0'),
('700.0','1500.0','100.0'),
('900.0','3500.0','200.0');


-- INGRESANDO REGISTRO A LA TABLA EMPLEADO


INSERT INTO EMPLEADOS (IDPER,FECINGEMP,CARGEMP,SALEMP,JEFE_IDEMP,IDNIVSUE,IDDEP,ESTEMP)
VALUES
('1','2019/10/18','Jefe','3000.0','1','1','5','A'),
('2','2019/10/17','Profesor','1500.0','1','2','5','A'),
('3','2019/10/16','Profesor','2000.0','1','3','5','A'),
('4','2019/10/15','Profesor','2050.0','1','3','5','A'),
('5','2019/10/14','Profesor','1800.0','1','3','5','A'),
('6','2019/10/14','Profesor','1800.0','1','3','5','A');


-- INGRESANDO REGISTRO A LA TABLA HISTORICO


INSERT INTO HISTORICO (IDEMP,FECFINHIST,TIPHIS,COMEHIST)
VALUES
('2','2019/10/17','CAMB','Se le hizo un cambio de Area'),
('3','2019/10/17','CAMB','Se le hizo un cambio de Area'),
('4','2019/10/17','FIN','Se termino el tiempo de Contrato'),
('5','2019/10/17','CAMB','Se le hizo un cambio de Area'),
('6','2019/10/17','FIN','Se termino el tiempo de Contrato');


-- INGRESANDO REGISTROS A LA TABLA OFERTA


INSERT INTO OFERTA (CODCUR,FECOFER,FECINICCUROFER,IDEMP)
VALUES
('JAV','2019/10/20','2019/10/24','4'),
('SQL','2019/10/20','2019/10/26','5'),
('JAV','2019/10/20','2019/10/24','4'),
('VER','2019/10/20','2019/10/28','2'),
('SQL','2019/10/20','2019/10/26','5');


-- INGRESANDO REGISTROS A LA INSCRIPCION


INSERT INTO INSCRIPCION (IDOFER,IDPER,IDEMP,FECINS,EVALINSC)
VALUES
('1','2','3','2019/10/28','4'),
('2','3','3','2019/10/28','4'),
('3','2','4','2019/10/28','5'),
('4','4','4','2019/10/28','5'),
('5','5','2','2019/10/28','5');