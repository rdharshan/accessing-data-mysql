FROM openjdk:8
VOLUME /tmp
EXPOSE 8080
ADD target/accessing-data-mysql-0.0.1-SNAPSHOT.jar accessing-data-mysql-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/accessing-data-mysql-0.0.1-SNAPSHOT.jar"]