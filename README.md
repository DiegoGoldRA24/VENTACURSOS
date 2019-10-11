## Base de datos

.  El nombre de la base de datos será VENTACURSOS.

## Estructura y descripción de tablas

Esta base de datos estará conformada por las siguientes tablas:

- PERSONA: contiene los datos generales de toda persona, además especifica si es estudiante o empleado.

- EMPLEADO: contiene la información necesaria del empleado.

- DEPARTAMENTO: contiene toda la información de los departamentos en los que trabajan los empleados.

- CURSO: contiene toda la información referente a los cursos que se ofertan.

- OFERTA: contiene las ofertas de cursos con su respectiva fecha de inicio y profesor. asignado. 

- NIVEL_SUELDO: contiene los niveles o grados de sueldo que puede alcanzar el empleado de acuerdo a su productividad.

- INSCRIPCION: contiene todas las inscripciones realizadas a los cursos ofertados y que son atendidos por los empleados del departamento de ventas.

- HISTORICO: contiene la información histórica de los años trabajados de un empleado dentro de la empresa.

## Relaciones entre tablas

Para establecer las relaciones debe tener en cuenta lo siguiente:

1.  Un empleado puede ser Jefe de ninguno, uno o muchos empleados.

2.  Un departamento está conformado por ninguno, uno o muchos empleados.

3.  En un nivel o grado de sueldo pueden estar comprendidos 0, 1 ó muchos sueldos de los empleados.

4.  Un curso puede estar presente en ninguna, una o muchas ofertas.

5.  Un profesor puede dictar ninguno, uno o más cursos.

6.  Una persona puede estar registrado como empleado ninguna, una o muchas veces.

7.  Un empleado del departamento de ventas puede registrar la inscripción de ninguno, uno o muchos cursos.

8.  Un persona de tipo de estudiante se puede registrar ninguna, una o muchas veces en los cursos.

9.  Una oferta de curso puede estar en 0, 1 o muchas veces inscripciones.

10.  Un empleado puede ser ascendido o irse de la empresa ninguna, una o muchas veces.
