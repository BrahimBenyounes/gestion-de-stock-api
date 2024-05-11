# Stage 1: Build the application
FROM maven:3.8.3-openjdk-11-slim AS builder

WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Create a smaller image
FROM openjdk:11-jre-slim

WORKDIR /app

# Copy the built JAR file from the builder stage
COPY --from=builder /app/target/ibrahim-app.jar .

# Expose port 8081 (optional)
EXPOSE 8081

# Set the entrypoint
ENTRYPOINT ["java", "-jar", "ibrahim-app.jar"]
