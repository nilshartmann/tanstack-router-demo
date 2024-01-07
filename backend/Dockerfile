# Start with a base image containing Java runtime
FROM eclipse-temurin:21-jdk

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=build/libs/*.jar

# Add the application's jar to the container
ADD ${JAR_FILE} recipify-backend.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/recipify-backend.jar"]