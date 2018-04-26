FROM openjdk:8-jre-alpine
MAINTAINER morimori
COPY spring-petclinic.jar /opt/spring-cloud/lib/
WORKDIR /opt/spring-cloud/lib
CMD ["java", "-jar", "/opt/spring-cloud/lib/spring-petclinic.jar"]
EXPOSE 8080
