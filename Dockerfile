FROM fabric8/tomcat-9
WORKDIR .
COPY ./webapp.war /opt/tomcat/webapps
EXPOSE 8080
