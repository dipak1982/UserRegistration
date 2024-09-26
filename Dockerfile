# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

#FROM openjdk:17
#EXPOSE 8081
#LABEL maintainer="javaguides.net"

#Changed the working directory to /opt/app
#WORKDIR /opt/app
#WORKDIR /app

#Copy spring-boot-web.jar to /opt/app/app.jar
#ARG JAR_FILE=target/spring-boot-web.jar

# cp spring-boot-web.jar /opt/app/app.jar
#COPY ${JAR_FILE} app.jar

# ADD target/springboot-docker-0.0.1-SNAPSHOT.jar /opt/app/app.jar
#ADD target/registration-0.0.1-SNAPSHOT.jar user-registration-service.jar
#COPY ./target/registration-0.0.1-SNAPSHOT.jar /app
#COPY ./target/registration-0.0.1-SNAPSHOT.jar /app

# COPY target/springboot-docker-0.0.1-SNAPSHOT.jar /opt/app/app.jar
#COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
#CMD ["java", "-jar", "user-registration-service.jar"]

# Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17
# Set working directory inside the container
WORKDIR /app
# Copy the compiled Java application JAR file into the container
COPY ./target/registration-0.0.1-SNAPSHOT.jar /app
# Expose the port the Spring Boot application will run on
EXPOSE 8081
# Command to run the application
CMD ["java", "-jar", "user-registration-service.jar"]