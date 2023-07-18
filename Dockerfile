FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS

# Definir as variáveis de ambiente do PostgreSQL
ENV APP_PROFILE=prod
ENV DB_PASSWORD=rrLUgBGs9QhT60dOn07P
ENV DB_URL=jdbc:postgresql://containers-us-west-33.railway.app:6945/railway
ENV DB_USERNAME=postgres

COPY target/dslist-0.0.1-SNAPSHOT.jar dslist.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar dslist.jar
