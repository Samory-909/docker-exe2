# docker-exe2
`COMMANDE à executer`

****dockerfile****

FROM fabric8/tomcat-9 

WORKDIR .

COPY ./webapp.war /opt/tomcat/webapps


docker build -t tomcat9 .

docker history tomcat9:latest | grep 8080

docker run -d --name tomcat.v1 -p 20200:8080 tomcat9

docker ps -a

echo "Apache Tomcat/9.0.10 If you're seeing this, you've successfully installed Tomcat. Congratulations!"> result.txt

docker export tomcat.v1> mon_tomcat.tar

cat mon_tomcat.tar | docker import - mytomcat:v1

docker image tag  mytomcat:v1 20032/mytomcat9.0.11

docker push 20032/mytomcat9.0.11
