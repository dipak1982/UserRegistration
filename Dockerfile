# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the generated JAR file to the container
ADD target/registration-0.0.1-SNAPSHOT.jar /app
EXPOSE 8081
# Run the JAR file
CMD ["java", "-jar", "user-registration-service.jar"]