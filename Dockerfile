# ----------- Etapa 1: Build -----------
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copiamos todo de una vez para invalidar el caché si cambiaste el properties o el env
COPY . .

# El clean es fundamental aquí
RUN mvn clean package -DskipTests

# ----------- Etapa 2: Runtime -----------
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
# Asegúrate de que el nombre del .jar coincida exactamente con lo que genera Maven
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]