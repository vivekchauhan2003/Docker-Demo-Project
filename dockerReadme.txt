STEP 1.
Generate rest-demo.jar

STEP 2.
Generate Docker File
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


STEP 3.
docker build -t rest-demo-app .

STEP 4.
docker run -p 8080:8080 --restart always rest-demo-app