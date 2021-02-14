FROM maven:3-alpine
COPY . /app
RUN nohup java -jar /app/target/testCICD-0.0.1-SNAPSHOT.jar &
