FROM maven:3-alpine
COPY . /app
RUN java -jar /app/target/testCICD-0.0.1-SNAPSHOT.jar
