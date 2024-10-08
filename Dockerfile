FROM openjdk:17
WORKDIR /app

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gateway-service.jar

ENTRYPOINT ["java", "-jar", "gateway-service.jar"]
EXPOSE 8080