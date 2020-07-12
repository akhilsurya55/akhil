FROM tomcat:8
LABEL author="akhilsurya"
ADD https://referenceappkhaja.s3-us-west-2.amazonaws.com/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]