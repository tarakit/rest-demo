FROM openjdk:11
ARG PROJECT_NAME=${USER}
COPY ./target/rest-demo-0.0.1-SNAPSHOT.jar ${PROJECT_NAME}.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","${PROJECT_NAME}.jar"]