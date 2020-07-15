FROM openjdk:8
LABEL author="khaja"
LABEL version="0.3"
LABEL project="QT"
ADD https://referenceappkhaja.s3-us-west-2.amazonaws.com/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar  /spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
COPY spring-petclinic.jar  /spring-petclinic.jar
EXPOSE 8080
ENTRYPOINT ["java"]
CMD ["-jar",  "/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
