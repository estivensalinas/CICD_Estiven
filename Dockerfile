FROM tomcat:8.0-alpine
ADD target/JsfDemoApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
COPY /home/ubuntu tomcat-users.xml /opt/tomcat/conf/
EXPOSE 8080
CMD ["catalina.sh", "run"]
