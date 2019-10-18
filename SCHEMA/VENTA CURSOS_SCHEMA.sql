-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-10-11 22:35:33.006

-- tables
-- Table: CURSO
CREATE TABLE CURSO (
    CODCUR char(3) NOT NULL COMMENT 'Contiene el código único para cada curso ofertado.',
    DESCUR varchar(30) NULL COMMENT 'Descripción corta del curso.',
    CATCUR char(3) NULL COMMENT 'Categoría de curso (GEN = General, DEV = Desarrollo y ADS = Análisis y Diseño de Sistemas).',
    DURCUR int NULL COMMENT 'Duración del curso en número de días.',
    CONSTRAINT CURSO_pk PRIMARY KEY (CODCUR)
) COMMENT 'Contiene toda la información referente a los cursos que se ofertan.';

-- Table: DEPARTAMENTO
CREATE TABLE DEPARTAMENTO (
    IDDEP int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de cada departamento.',
    NOMDEP varchar(50) NULL COMMENT 'Nombre descriptivo de departamento.',
    CONSTRAINT DEPARTAMENTO_pk PRIMARY KEY (IDDEP)
) COMMENT 'Contiene toda la información de los departamentos en los que trabajan los empleados.';

-- Table: EMPLEADOS
CREATE TABLE EMPLEADOS (
    IDEMP int NOT NULL AUTO_INCREMENT COMMENT 'Es el dato identificador de todo empleado.',
    IDPER int NOT NULL COMMENT 'Identificador de los datos de la persona que es registrado como empleado.',
    FECINGEMP date NULL COMMENT 'Fecha de ingreso del empleado.',
    CARGEMP varchar(40) NULL COMMENT 'Descripción del cargo del empleado.',
    SALEMP decimal(6,2) NULL COMMENT 'Monto de salario del empleado (no incluye bonos).',
    JEFE_IDEMP int NULL,
    IDNIVSUE int NOT NULL COMMENT 'Identificador que determinal el grado o nivel de sueldo.',
    IDDEP int NOT NULL COMMENT 'Identificador de departamento en que trabaja el empleado.',
    ESTEMP char(1) NULL COMMENT 'Determina si es A activo o I inactivo. Si está trabajando actualmente o no. Por default será A.',
    CONSTRAINT EMPLEADOS_pk PRIMARY KEY (IDEMP)
) COMMENT 'Contiene la información necesaria del empleado.
';

-- Table: HISTORICO
CREATE TABLE HISTORICO (
    IDHIS int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de Histórico.',
    IDEMP int NOT NULL COMMENT 'Identificador del empleado.',
    FECFINHIST int NULL COMMENT 'Fin de fecha de intervalo de trabajo, ya sea por despido o por cambios de cargo.',
    TIPHIS int NULL COMMENT 'Tipo de Histórico: CAMB cambio de departamento ó FIN término de labores en la empresa.',
    COMEHIST varchar(100) NOT NULL COMMENT 'Comentarios del motivo de cambio y/o finalización de labores en la empresa.',
    CONSTRAINT HISTORICO_pk PRIMARY KEY (IDHIS)
) COMMENT 'Contiene la información histórica de los años trabajados de un empleado dentro de la empresa.';

-- Table: INSCRIPCION
CREATE TABLE INSCRIPCION (
    IDINSC int NOT NULL COMMENT 'Identificador de la inscripción realizada.',
    IDOFER int NOT NULL COMMENT 'Identificador de la oferta en la que se basa la inscripción.',
    IDPER int NOT NULL COMMENT 'Identificador de la persona de tipo estudiante que se registra en un curso.',
    IDEMP int NOT NULL COMMENT 'Identificador del empleado del departamento de ventas que realiza la inscripción.',
    FECINS int NULL COMMENT 'Fecha en que se realiza la inscripción.',
    EVALINSC int NOT NULL COMMENT 'Opinión sobre la persona que lo atendió (escala del 1 - 5)',
    CONSTRAINT INSCRIPCION_pk PRIMARY KEY (IDINSC)
) COMMENT 'contiene todas las inscripciones realizadas a los cursos ofertados y que son atendidos por los empleados del departamento de ventas.';

-- Table: NIVEL_SUELDO
CREATE TABLE NIVEL_SUELDO (
    IDNIVSUE int NOT NULL AUTO_INCREMENT COMMENT 'Identificador del grado o nivel de venta que puede alcanzar el vendedor.',
    MONMINNIVSUE decimal(6,2) NULL COMMENT 'Monto mínimo de venta realizada.',
    MONMAXNIVSUE decimal(6,2) NULL COMMENT 'Monto máximo de venta realizada.',
    BONUSNIVSUE decimal(6,2) NULL COMMENT 'Bonificación neta adicional a su salario mensual.',
    CONSTRAINT NIVEL_SUELDO_pk PRIMARY KEY (IDNIVSUE)
) COMMENT 'contiene los niveles o grados de sueldo que puede alcanzar el empleado de acuerdo a su productividad.';

-- Table: OFERTA
CREATE TABLE OFERTA (
    IDOFER int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de oferta.',
    CODCUR char(3) NOT NULL COMMENT 'Identificador de curso que se está ofertando.',
    FECOFER date NULL COMMENT 'Fecha de inicio de oferta de curso.',
    FECINICCUROFER date NULL COMMENT 'Fecha de inicio de curso ofertado.',
    IDEMP int NOT NULL COMMENT 'Identificador de empleado que sería el profesor del curso ofertado.',
    CONSTRAINT OFERTA_pk PRIMARY KEY (IDOFER)
) COMMENT 'contiene las ofertas de cursos con su respectiva fecha de inicio y profesor. asignado.';

-- Table: PERSONA
CREATE TABLE PERSONA (
    IDPER int NOT NULL AUTO_INCREMENT COMMENT 'Es el dato identificador de la persona.',
    DNIPER char(8) NULL COMMENT 'Número de DNI(Documento Nacional de Identificación).',
    NOMPER varchar(50) NULL COMMENT 'Contiene los nombres de la persona.',
    APEPER varchar(80) NULL COMMENT 'Contiene los apellidos de la persona.',
    FECNACPER date NULL COMMENT 'Contiene la fecha de nacimiento de la persona.',
    CELPER char(9) NOT NULL COMMENT 'Contiene el número de celular de la persona.',
    EMAPER varchar(100) NOT NULL COMMENT 'Contiene el correo electrónico de la persona.',
    SEXPER char(1) NULL COMMENT 'Contiene el identificador de sexo de la persona (M) Masculino y (F) para Femenino.',
    TIPER char(3) NULL COMMENT 'Determina si la persona es un EMP Empleado o un EST Estudiante.',
    DISTPER varchar(80) NOT NULL COMMENT 'Contiene el nombre del distrito de procedencia de la persona. Sólo se admite distritos de la provincia de Cañete.',
    PERSONA_IDPER int NOT NULL,
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
) COMMENT 'Contiene los datos generales de toda persona, además especifica si es estudiante o empleado.';

-- foreign keys
-- Reference: CURSO_OFERTA_CODCUR (table: OFERTA)
ALTER TABLE OFERTA ADD CONSTRAINT CURSO_OFERTA_CODCUR FOREIGN KEY CURSO_OFERTA_CODCUR (CODCUR)
    REFERENCES CURSO (CODCUR);

-- Reference: DEPARTAMENTO_EMPLEADO_IDDEP (table: EMPLEADOS)
ALTER TABLE EMPLEADOS ADD CONSTRAINT DEPARTAMENTO_EMPLEADO_IDDEP FOREIGN KEY DEPARTAMENTO_EMPLEADO_IDDEP (IDDEP)
    REFERENCES DEPARTAMENTO (IDDEP);

-- Reference: EMPLEADOS_EMPLEADOSEMPLEADO_EMPLEADO_JEFE_IDEMP (table: EMPLEADOS)
ALTER TABLE EMPLEADOS ADD CONSTRAINT EMPLEADOS_EMPLEADOSEMPLEADO_EMPLEADO_JEFE_IDEMP FOREIGN KEY EMPLEADOS_EMPLEADOSEMPLEADO_EMPLEADO_JEFE_IDEMP (JEFE_IDEMP)
    REFERENCES EMPLEADOS (IDEMP);

-- Reference: EMPLEADO_HISTORICO_IDEMP (table: HISTORICO)
ALTER TABLE HISTORICO ADD CONSTRAINT EMPLEADO_HISTORICO_IDEMP FOREIGN KEY EMPLEADO_HISTORICO_IDEMP (IDEMP)
    REFERENCES EMPLEADOS (IDEMP);

-- Reference: EMPLEADO_INSCRIPCION_IDEMP (table: INSCRIPCION)
ALTER TABLE INSCRIPCION ADD CONSTRAINT EMPLEADO_INSCRIPCION_IDEMP FOREIGN KEY EMPLEADO_INSCRIPCION_IDEMP (IDEMP)
    REFERENCES EMPLEADOS (IDEMP);

-- Reference: EMPLEADO_OFERTA_IDEMP (table: OFERTA)
ALTER TABLE OFERTA ADD CONSTRAINT EMPLEADO_OFERTA_IDEMP FOREIGN KEY EMPLEADO_OFERTA_IDEMP (IDEMP)
    REFERENCES EMPLEADOS (IDEMP);

-- Reference: NIVEL_SUELDO_EMPLEADO_IDNIVSUE (table: EMPLEADOS)
ALTER TABLE EMPLEADOS ADD CONSTRAINT NIVEL_SUELDO_EMPLEADO_IDNIVSUE FOREIGN KEY NIVEL_SUELDO_EMPLEADO_IDNIVSUE (IDNIVSUE)
    REFERENCES NIVEL_SUELDO (IDNIVSUE);

-- Reference: OFERTA_INSCRIPCION_IDOFER (table: INSCRIPCION)
ALTER TABLE INSCRIPCION ADD CONSTRAINT OFERTA_INSCRIPCION_IDOFER FOREIGN KEY OFERTA_INSCRIPCION_IDOFER (IDOFER)
    REFERENCES OFERTA (IDOFER);

-- Reference: PERSONA_EMPLEADO_IDPER (table: EMPLEADOS)
ALTER TABLE EMPLEADOS ADD CONSTRAINT PERSONA_EMPLEADO_IDPER FOREIGN KEY PERSONA_EMPLEADO_IDPER (IDPER)
    REFERENCES PERSONA (IDPER);

-- Reference: PERSONA_INSCRIPCION_IDPER (table: INSCRIPCION)
ALTER TABLE INSCRIPCION ADD CONSTRAINT PERSONA_INSCRIPCION_IDPER FOREIGN KEY PERSONA_INSCRIPCION_IDPER (IDPER)
    REFERENCES PERSONA (IDPER);

-- End of file.

