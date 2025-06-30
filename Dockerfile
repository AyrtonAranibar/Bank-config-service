FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/*.jar app.jar
COPY config/ config/
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "/app/app.jar", "--spring.profiles.active=native"]