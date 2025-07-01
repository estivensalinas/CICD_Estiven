FROM tomcat:8.0-alpine
# Copy the custom configuration first
COPY tomcat-users.xml /usr/local/tomcat/conf/
# Then copy the WAR file
COPY target/JsfDemoApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
