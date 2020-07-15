FROM tomcat:8
RUN apt-get update && apt-get install openjdk-8-jdk tomcat8 -y
LABEL author="akhilsurya"
ADD https://referenceappkhaja.s3-us-west-2.amazonaws.com/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
