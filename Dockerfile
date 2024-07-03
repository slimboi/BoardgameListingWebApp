FROM adoptopenjdk/openjdk11
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME

COPY target/*.jar $APP_HOME/

WORKDIR $APP_HOME

CMD ["java", "-jar", "database_service_project-0.0.1-SNAPSHOT.jar"]