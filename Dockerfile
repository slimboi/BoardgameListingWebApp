FROM adoptopenjdk/openjdk11
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME

COPY target/*.jar $APP_HOME/

# Rename the jar file to app.jar, assuming there is only one jar file in target
RUN mv $APP_HOME/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]