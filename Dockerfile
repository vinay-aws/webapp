FROM tomcat:9
COPY target/*.war /usr/local/tomcat/webapps/abc.war
