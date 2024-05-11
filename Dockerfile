FROM openjdk:11

# Set working directory
WORKDIR /app

# Copy the application JAR file
ADD target/ibrahim-app.jar /app/ibrahim-app.jar

# Expose port 8081
EXPOSE 8081

# Add additional dependencies or configurations here
# For example, if you want to install additional packages, you can use apt-get
# RUN apt-get update && apt-get install -y <package-name>

# Set entrypoint
ENTRYPOINT ["java", "-jar", "/app/ibrahim-app.jar"]
