# Use Java 21 base image
FROM openjdk:21-jdk

# Set working directory inside container (optional but clean)
WORKDIR /app

# Copy JAR file into the container
ADD target/rest-demo.jar rest-demo.jar

# Metadata
LABEL author="Vivek Chauhan"

# Run the application
ENTRYPOINT ["java", "-jar", "rest-demo.jar"]
