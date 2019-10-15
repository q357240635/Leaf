FROM openjdk:8u212-jdk-stretch
COPY ./leaf-server/target/leaf.jar /app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=${profile}", "-jar",  "/app.jar"]