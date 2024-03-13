# Step 1: Set the base image
FROM openjdk:11-jdk-slim

# Step 2: Set the working directory in the docker image
WORKDIR /app

# Step 3: Copy the gradlew, gradlew.bat, gradle folder and build.gradle file from your local system to the docker image
COPY gradlew .
COPY gradlew.bat .
COPY gradle gradle
COPY build.gradle .

# Step 4: Run the gradlew build command to build the application inside the docker image
RUN ./gradlew build

# Step 5: Copy the built jar file into the docker image
COPY build/libs/*.jar app.jar

# Step 6: Expose the port on which your application runs
EXPOSE 8080

# Step 7: Set the entry point so that the jar file is executed when the docker container is started
ENTRYPOINT ["java","-jar","/app/app.jar"]