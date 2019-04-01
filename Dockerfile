FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/*.jar app.jar
EXPOSE 8761

ENTRYPOINT ["java","-jar","/app.jar"]

# docker build -t gateway .
# docker run -p 8762:8762 --net=host gateway