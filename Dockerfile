FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-cp","/app/app.jar","com.example.App"]
