FROM maven:3.8.6-openjdk-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/target/CloudStorage-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]