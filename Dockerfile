FROM openjdk:11
COPY ./target/rest-demo-0.0.1-SNAPSHOT.jar ${USER}.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","${USER}.jar"]