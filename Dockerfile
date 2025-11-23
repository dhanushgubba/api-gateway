# Use JDK base image
FROM eclipse-temurin:17-jre-focal

# Set working directory
WORKDIR /app

# Copy the JAR file built by Maven
COPY target/*.jar app.jar

EXPOSE 8086
# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
