--Ejercicio 1: Obtén el nombre, apellido, nombre del departamento y la ciudad de todos los empleados. 
--Ordena los resultados alfabéticamente por el nombre del departamento.

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
FROM OEHR_EMPLOYEES JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID) JOIN OEHR_LOCATIONS USING(LOCATION_ID)
ORDER BY DEPARTMENT_NAME;

--Ejercicio 2: Muestra el nombre del empleado, el cargo (job_title), el salario y el nombre del departamento de todos los empleados 
--que trabajan en la ciudad de 'Seattle'. 
--Ordena los resultados por salario de forma descendente.

SELECT FIRST_NAME, JOB_TITLE, SALARY, DEPARTMENT_NAME, CITY
FROM OEHR_EMPLOYEES JOIN OEHR_JOBS USING(JOB_ID) JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID) JOIN OEHR_LOCATIONS USING(LOCATION_ID)
WHERE UPPER(CITY) = 'SEATTLE' 
ORDER BY SALARY DESC;

--Ejercicio 3: Lista los nombres de los departamentos y la cantidad de empleados que trabajan en cada uno. 
--Solo incluye los departamentos que tienen más de 5 empleados. Ordena el resultado por la cantidad de empleados de forma descendent

SELECT DEPARTMENT_NAME, COUNT(EMPLOYEE_ID)
FROM OEHR_EMPLOYEES JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME
HAVING COUNT(EMPLOYEE_ID) > 5
ORDER BY COUNT(EMPLOYEE_ID) DESC;

--Ejercicio 4: Calcula el salario máximo, mínimo y promedio por cada cargo (job_title). 
--Muestra el título del cargo junto con estos valores calculados.

SELECT MAX(SALARY), MIN(SALARY), AVG(SALARY), JOB_TITLE
FROM OEHR_EMPLOYEES JOIN OEHR_JOBS USING(JOB_ID)
GROUP BY JOB_TITLE;

--Ejercicio 5: Obtén el número de empleados contratados por año. 
--Muestra el año y la cantidad de empleados, ordenando los resultados por año de forma ascendente.

SELECT COUNT(EMPLOYEE_ID), TO_CHAR(HIRE_DATE,'YYYY')
FROM OEHR_EMPLOYEES
GROUP BY TO_CHAR(HIRE_DATE,'YYYY')
ORDER BY 2 ASC;

--Ejercicio 6: Muestra el nombre del departamento y el promedio de antigüedad (en años) de sus empleados. 
--Ordena los resultados por el promedio de antigüedad de forma descendente. 
--Pista: puedes usar la función MONTHS_BETWEEN o EXTRACT para calcular los años.

SELECT DEPARTMENT_NAME, AVG(TO_NUMBER(TO_CHAR(HIRE_DATE,'YYYY')))
FROM OEHR_EMPLOYEES JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID)
ORDER BY AVG(TO_NUMBER(TO_CHAR(HIRE_DATE,'YYYY'))) DESC;

--Ejercicio 7: Encuentra los nombres y salarios de los empleados que ganan más que el salario promedio de todos los empleados.

SELECT FIRST_NAME, SALARY
FROM OEHR_EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY)
                FROM OEHR_EMPLOYEES);

--Ejercicio 8: Muestra los nombres de los empleados que trabajan en el mismo departamento que 'Peter Hall'. Excluye a 'Peter Hall' de los resultados.

SELECT FIRST_NAME, LAST_NAME
FROM OEHR_EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                        FROM OEHR_EMPLOYEES
                        WHERE UPPER(LAST_NAME) = 'HALL') AND UPPER(LAST_NAME) != 'HALL';

-- Ejercicio 10: Lista los empleados (nombre y apellido) que tienen el mismo cargo que 'Steven King' pero no son 'Steven King'.

SELECT FIRST_NAME, LAST_NAME
FROM OEHR_EMPLOYEES
WHERE JOB_ID 

-- Empleados por Departamento: Muestra el nombre, apellido, nombre del departamento y la ciudad de todos los empleados. 
-- Ordena los resultados alfabéticamente por el nombre del departamento.

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
FROM OEHR_EMPLOYEES JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID) JOIN OEHR_LOCATIONS USING(LOCATION_ID)
ORDER BY DEPARTMENT_NAME;

-- Salarios en una Ciudad Específica: Obtén el nombre completo del empleado (nombre y apellido en una sola columna), 
-- su cargo (job_title) y su salario, pero únicamente para aquellos que trabajan en 'Seattle'. 
-- Ordena los resultados por salario de forma descendente.

SELECT CONCAT(FIRST_NAME, CONCAT(' ',LAST_NAME)), JOB_TITLE, SALARY
FROM OEHR_EMPLOYEES JOIN OEHR_JOBS USING(JOB_ID) JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID) JOIN OEHR_LOCATIONS USING(LOCATION_ID)
WHERE UPPER(CITY) = 'SEATTLE';

-- Historial de un Empleado: Muestra el historial laboral de la empleada 'Ellen Abel'. 
-- Incluye las fechas de inicio, fechas de fin, el título del trabajo y el nombre del departamento.

SELECT D.DEPARTMENT_NAME, J.JOB_TITLE, JH.START_DATE, JH.END_DATE
FROM OEHR_EMPLOYEES E JOIN OEHR_JOBS J ON(E.JOB_ID = J.JOB_ID) JOIN OEHR_JOB_HISTORY JH ON(J.JOB_ID = JH.JOB_ID) JOIN OEHR_DEPARTMENTS D ON(JH.DEPARTMENT_ID = D.DEPARTMENT_ID)
WHERE UPPER(E.LAST_NAME) = 'ABEL';

-- Análisis Salarial por Cargo: Calcula el salario máximo, mínimo y promedio para cada cargo (job_title). 
-- Muestra el nombre del cargo y los tres valores calculados.

SELECT MAX(SALARY), MIN(SALARY), AVG(SALARY), JOB_TITLE
FROM OEHR_EMPLOYEES JOIN OEHR_JOBS USING(JOB_ID)
GROUP BY JOB_TITLE;

-- Contrataciones Anuales: Cuenta cuántos empleados fueron contratados cada año. 
-- Muestra el año y el número de empleados, ordenando por año de forma ascendente. 
-- Pista: usa la función TO_CHAR o EXTRACT sobre la columna HIRE_DATE.

SELECT COUNT(EMPLOYEE_ID), TO_CHAR(HIRE_DATE,'YYYY')
FROM OEHR_EMPLOYEES
GROUP BY TO_CHAR(HIRE_DATE,'YYYY')
ORDER BY 2 ASC;

-- Departamentos más Poblados: Lista los nombres de los departamentos y el número de empleados en cada uno. 
-- Incluye solo los departamentos con más de 5 empleados y ordena el resultado por la cantidad de empleados de mayor a menor.

SELECT DEPARTMENT_NAME, COUNT(EMPLOYEE_ID)
FROM OEHR_EMPLOYEES JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME
HAVING COUNT(EMPLOYEE_ID) > 5
ORDER BY COUNT(EMPLOYEE_ID) DESC;

-- Salarios por Encima del Promedio: Encuentra los nombres y salarios de los empleados que ganan más que el salario promedio de toda la compañía.

SELECT FIRST_NAME, SALARY
FROM OEHR_EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY)
                FROM OEHR_EMPLOYEES)

-- Compañeros de Departamento: Muestra el nombre completo de los empleados que trabajan en el mismo departamento que 'Douglas Grant'. 
-- No incluyas a 'Douglas Grant' en el resultado.

SELECT CONCAT(FIRST_NAME,CONCAT(' ',LAST_NAME)) AS "NOMBRE COMPLETO"
FROM OEHR_EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                        FROM OEHR_EMPLOYEES
                        WHERE UPPER(FIRST_NAME) = 'DOUGLAS' AND UPPER(LAST_NAME) = 'GRANT') AND UPPER(FIRST_NAME) != 'DOUGLAS' AND UPPER(LAST_NAME) != 'GRANT';

--QUIERO QUE SE MUESTREN CONCATENADOS EL NOMBRE Y APELLIDOP, COMO TAMBIÉN LA FECHA DE CONTRATACIÓN DE AQUELLOS
-- TRABAJADORES QUE SU NOMBRE O APELLIDO COMIENCE CON LA LETRA S

SELECT CONCAT(FIRST_NAME,CONCAT(' ', LAST_NAME)), HIRE_DATE
FROM OEHR_EMPLOYEES
WHERE UPPER(FIRST_NAME) LIKE 'S%' OR UPPER(LAST_NAME) LIKE 'S%'

-- NECESITO VISUALIZAR LOS SIGUIENTES DATOS ASOCIADOS A LOS DISTINTOS OFICIOS QUE SE MANEJAN DENTRO DE LA EMPRESA:
-- CODIGO DE OFICION, NUMERO DE EMPLEADOS ASOCIADO A ESE OFICIO, EL PROMEDIO DE LOS SUELDOS DE CADA OFICIO,
-- LA DIFERENCIA ENTRE EL SUELDO MAXIMO Y MINIMO DE LOS DISTINTOS OFICIONS QUE EXISTEN DENTRO DE LA EMPRESA
-- ES IMPORTANTE DESTACAR QUE CADA COLUMNA DEBE VISUALIZARSE CON LOS SIGUIENTES NOMBRES: OFICIO, CANTIDAD EMPLEADOS, PROMEDIO DE SUELDOS
-- DIFERENCIA SUELDOS

SELECT JOB_ID AS "OFICIO", COUNT(EMPLOYEE_ID) AS "CANTIDAD EMPLEADOS", AVG(SALARY) AS "PROMEDIO DE SUELDOS", MAX(SALARY)-MIN(SALARY) AS "DIFERENCIA SALDOS"
FROM OEHR_EMPLOYEES
GROUP BY JOB_ID;

-- SE REQUIERE MOSTRAR LOS SIGUIENTES DATOS PARA UN REPORTE: NOMBRE DE LOS DISTINTOS DEPARTAMENTOS Y SUS PAISES Y CIUDADES ASOCIADAS

SELECT DEPARTMENT_NAME, CITY, COUNTRY_NAME
FROM OEHR_DEPARTMENTS JOIN OEHR_LOCATIONS USING(LOCATION_ID) JOIN OEHR_COUNTRIES USING(COUNTRY_ID);

-- QUISIERA VER LOS CÓDIGOS DE LOS DISTINTOS OFICIOS SIEMPRE Y CUANDO EL PROMEDIO DE LOS SUELDOS SEA MAYOR QUE 10.000 DOLARES

SELECT JOB_ID
FROM OEHR_JOBS JOIN OEHR_EMPLOYEES USING(JOB_ID)
GROUP BY JOB_ID
HAVING AVG(SALARY) > 10000;

-- QUIERO VER TODOS LOS CÓDIGOS DE EMPLEADO, NOMBRE CONCATENADO CON EL APELLIDO, Y NOMBRE DE DEPARTAMENTO DE AQUELLOS EMPLEADOS,
-- DONDE SU CODIGO DE EMPLEADO SEA 150 O 160

SELECT EMPLOYEE_ID, CONCAT(FIRST_NAME,CONCAT(' ', LAST_NAME)), DEPARTMENT_NAME
FROM OEHR_EMPLOYEES JOIN OEHR_DEPARTMENTS USING(DEPARTMENT_ID)
WHERE EMPLOYEE_ID IN (150,160);

-- QUISIERA VER LOS SIGUIENTES DATOS DE LOS EMPLEADOS: NOMBRE Y APELLIDO CONCATENADOS, CORREO CONCATENADO CON EL STRING "@pruebasql.cl".
-- SIEMPRE Y CUANDO LOS EMPLEADOS NO TENGAN UNA COMISION ASOCIADA (NULL) Y SU SUELDO ESTÉ ENTRE LOS RANGOS 5000 Y 10000 DOLARES
-- Y PERTENEZCAN AL DEPARTAMENTO 30

SELECT CONCAT(FIRST_NAME,CONCAT(' ', LAST_NAME)), CONCAT(EMAIL, '@pruebasql.cl')
FROM OEHR_EMPLOYEES
WHERE COMMISSION_PCT IS NULL AND SALARY BETWEEN 5000 AND 10000 AND DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                                                                                    FROM OEHR_DEPARTMENTS
                                                                                    WHERE DEPARTMENT_ID = 30)