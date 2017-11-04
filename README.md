### Taller 3
Juliana Zúñiga
A00068120
___

Aprovisionamiento de un ambiente compuesto por:
- Servidor web Apache
- Servidor de base de datos MySQL

Una aplicación web realiza consultas a la base de datos y los despliega.

Para construir el contenedor del servidor web se utilizó el siguiente Dockerfile:

```
FROM ubuntu
```

Para construir el contenedor del servidor de base de datos se utilizó el siguiente Dockerfile:

```
FROM ubuntu
```

Para ejecutar los contenedores se hizo uso de Docker Compose, con el siguiente archivo de configuración:

```
:)
```

Con el siguiente comando se levanta el ambiente completo:

```bash
docker-compose up
```
Este comando debe ejecutarse en la carpeta que contiene el archivo `docker-compose.yaml`

A continuación se muestra el funcionamiento de la aplicación:
