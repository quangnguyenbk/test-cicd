FROM openjdk:8-jdk-alpine
COPY . /app
WORKDIR /
EXPOSE 9092
ENTRYPOINT ["java","-jar","/app/target/testCICD-0.0.1-SNAPSHOT.jar"]
