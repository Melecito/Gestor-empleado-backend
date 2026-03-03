# Sistema Gestión de Empleados - Backend

API REST desarrollada con Spring Boot para la gestión de empleados.

## 🛠 Tecnologías

- Java 17
- Spring Boot 3.0.4
- Spring Data JPA
- MySQL
- Maven

## 📦 Dependencias principales

- spring-boot-starter-web
- spring-boot-starter-data-jpa
- mysql-connector-j

## ⚙ Configuración

Configurar base de datos en:

src/main/resources/application.properties

Ejemplo:

spring.datasource.url=jdbc:mysql://localhost:3306/empleados_db
spring.datasource.username=root
spring.datasource.password=tu_password
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

## 🚀 Ejecutar el proyecto

1. Clonar repositorio:
   git clone <url>

2. Compilar:
   mvn clean install

3. Ejecutar:
   mvn spring-boot:run

La API estará disponible en:
http://localhost:8080

## 📡 Endpoints principales

GET    /api/empleados  
GET    /api/empleados/{id}  
POST   /api/empleados  
PUT    /api/empleados/{id}  
DELETE /api/empleados/{id}

## 📄 Licencia
Proyecto de práctica académica.