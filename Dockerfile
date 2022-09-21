FROM tomcat:9
COPY /mnt/demo/target/*.war /home/ec2-user/apache-tomcat-9.0.65/webapps/
