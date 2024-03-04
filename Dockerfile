# Use a Maven image to build the project
FROM maven:3.8.4-openjdk-11 as builder

# Set the working directory in the build stage
WORKDIR /build

# Copy the project files
COPY src /build/src

COPY pom.xml /build

# Build the project
RUN mvn package

# Use an OpenJDK image for the runtime
FROM openjdk:11-jre

# Set the working directory in the runtime stage
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=builder /build/target/sudokugame-1.0-SNAPSHOT.jar /app/sudokugame.jar

COPY web /app/web

EXPOSE 80

# Run the application
CMD ["java", "-jar", "sudokugame.jar"]
