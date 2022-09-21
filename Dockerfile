FROM tomcat:9
COPY /target/*.war /home/ec2-user/apache-tomcat-9.0.65/webapps/
