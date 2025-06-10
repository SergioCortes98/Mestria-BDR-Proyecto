# **TAREA 2**

## °Base de datos modelo entidad relacion

En esta ocasión muestro mi modelo entidad relación, en la cual muestro un conjunto de datos, cabe aclarar que estos datos son ficticios, por lo cual no sé si se presente algún inconveniente.

Se muestra la información de una empresa con una empleabilidad de 300 personas, en la cual se visualiza las entidades, atributos y relaciones correspondientes. 

```mermaid
flowchart TD
    A["Empresa"] --- B{"Trabaja en"}
    A --- C{"Emplea"}
    B --- D["Departamento"]
    D --- D1(["ID del Puesto"])
    D --- D2(["ID del Departamento"])  
    D --- D3(["Nombre del Puesto"])
    D --- D4(["Descripcion del puesto"]) 
    D --- D5(["Salario Min"])
    D --- D6(["Salario Max"]) 
    D --- D7(["Nombre del Departamento"])

    C --- E["Empleado"]
    E --- E1(["Nombre"])
    E --- E2(["Apellido"])
    E --- E3(["Fecha de Nacimiento"])  
    E --- E4(["ID Empleado"])
    E --- E5(["Direccion"]) 
    E --- E6(["Telefono"])
    E --- E7(["correo electronico"]) 
    E --- E8(["Fecha de contratacion"])
    E --- E9(["ID de evaluacion"]) 
    E --- E10(["ID de evaluacion"]) 
    E --- E11(["ID de evaluacion"])
    
    D1 --- n1["Cadena"] 
    D2 --- n2["Cadena"] 
    D3 --- n3["Text"]
    D4 --- n4["Text"]
    D5 --- n5["Float"]
    D6 --- n6["Float"]
    D7 --- n7["Text"]
    E1 --- n8["Text"]
    E2 --- n9["Text"]
    E3 --- n10["Date"]
    E4 --- n11["Cadena"]
    E5 --- n12["Text"]
    E6 --- n13["Text"]
    E7 --- n14["Text"]
    E8 --- n15["Date"]
    E9 --- n16["Cadena"]
    E10 --- n17["Cadena"]
    E11 --- n18["Cadena"]
    n1@{ shape: hex}
    n2@{ shape: hex}
    n3@{ shape: hex}
    n4@{ shape: hex}
    n5@{ shape: hex}
    n6@{ shape: hex}
    n7@{ shape: hex}
    n8@{ shape: hex}
    n9@{ shape: hex}
    n10@{ shape: hex}
    n11@{ shape: hex}
    n12@{ shape: hex}
    n13@{ shape: hex}
    n14@{ shape: hex}
    n15@{ shape: hex}
    n16@{ shape: hex}
    n17@{ shape: hex}
    n18@{ shape: hex}
```
