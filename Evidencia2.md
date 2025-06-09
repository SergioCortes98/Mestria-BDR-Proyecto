# **TAREA 2**

## °Base de datos modelo entidad relacion

En esta ocasión muestro mi modelo entidad relación, en la cual muestro un conjunto de datos, cabe aclarar que estos datos son ficticios, por lo cual no sé si se presente algún inconveniente.

Se muestra la información de una empresa con una empleabilidad de 300 personas, en la cual se visualiza las entidades, atributos y relaciones correspondientes. 

```mermaid
flowchart TD
  A[Empresa]
  subgraph DEP [Trabaja en]
    direction TB
    D[Departamento]
    D --> D1(["ID del Puesto"])
    D --> D2(["ID del Departamento"])
    D --> D3(["Nombre del Puesto"])
    D --> D4(["Descripción del puesto"])
    D --> D5(["Salario Min"])
    D --> D6(["Salario Max"])
    D --> D7(["Nombre del Departamento"])
  end
  subgraph EMP [Emplea]
    direction TB
    E[Empleado]
    E --> E1(["Nombre"])
    E --> E2(["Apellido"])
    E --> E3(["Fecha de Nacimiento"])
    E --> E4(["ID Empleado"])
    E --> E5(["Dirección"])
    E --> E6(["Teléfono"])
    E --> E7(["Correo electrónico"])
    E --> E8(["Fecha de contratación"])
  end
  A --- DEP
  A --- EMP
```