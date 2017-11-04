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

ADD files/ /temp/

RUN apt-get update -y --fix-missing

RUN apt-get install expect -y

WORKDIR /temp

RUN chmod +x install_mysql

RUN chmod +x configure_mysql.sh

RUN ./configure_mysql.sh

EXPOSE 3306

CMD  /etc/init.d/mysql start && tail -f /var/log/mysql/error.log
```

Para ejecutar los contenedores se hizo uso de Docker Compose, con el siguiente archivo de configuración:

```
version: '2'
services:
  web:
    build: ./web-server/
    ports:
     - "8080:80"
     - "2222:22"
  db:
   build: ./db-server/
   ports:
    - "3306:3306"
```

Con el siguiente comando se levanta el ambiente completo:

```bash
docker-compose up
```
Este comando debe ejecutarse en la carpeta que contiene el archivo `docker-compose.yaml`

A continuación se muestra el funcionamiento de la aplicación:
