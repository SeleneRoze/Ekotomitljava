# Usa la imagen base de OpenJDK 17 de Azul
FROM azul/zulu-openjdk:17-latest

# Define el volumen /tmp
VOLUME /tmp

# Copia el archivo .jar desde build/libs/ de tu proyecto al contenedor y renómbralo como app.jar
COPY build/libs/*.jar app.jar

# Define el punto de entrada para ejecutar la aplicación Java
ENTRYPOINT ["java","-jar","/app.jar"]

# Expone el puerto 8080 en el contenedor
EXPOSE 8080

