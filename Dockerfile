FROM openjdk:17

WORKDIR /app
COPY Fireworks/target/Fireworks-0.0.1-SNAPSHOT.jar app.jar 
ENTRYPOINT [ "java", "-jar" , "app.jar" ]