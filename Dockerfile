FROM openjdk:8 AS Build_image
RUN apt update && apt install maven -y
RUN git clone https://github.com/DevOpsByOmer/spring-mvc-project.git
RUN cd spring-mvc-project && mvn install

FROM tomcat:8-jre11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=Build_image /spring-mvc-project/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
