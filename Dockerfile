FROM openjdk:8-jdk

WORKDIR /opt
COPY  target/demo-0.0.1-SNAPSHOT.jar /opt/runMe.jar
COPY  target/classes/kr-fevmm4a-sandbox-f66e8fba2afb.json /opt/kr-fevmm4a-sandbox-f66e8fba2afb.json
#RUN apk add --no-cache libc6-compat

ENV GOOGLE_CLOUD_PROJECT="kr-fevmm4a-sandbox-ef"

EXPOSE 8080

ENTRYPOINT []
CMD java -jar /opt/runMe.jar

