FROM java:8-jdk-alpine

VOLUME /tmp

WORKDIR /usr/app

COPY ./target/SpringBootCRUDApplicationExample-1.0.0.jar /usr/app/

RUN sh -c 'touch SpringBootCRUDApplicationExample-1.0.0.jar'

ENTRYPOINT ["java","-jar","SpringBootCRUDApplicationExample-1.0.0.jar","--spring.profiles.active=local"]

EXPOSE 8080
EXPOSE 8081