# Use an OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the jar file (assumes it was built by gradle)
COPY build/libs/*.jar app.jar

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
