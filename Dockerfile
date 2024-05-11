# Use a smaller base image like 'openjdk:11-jre-slim'
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the application JAR file
COPY target/ibrahim-app.jar /app/ibrahim-app.jar

# Expose port 8081 (this is optional as you're not binding it here)
EXPOSE 8081

# Set entrypoint
ENTRYPOINT ["java", "-jar", "ibrahim-app.jar"]
