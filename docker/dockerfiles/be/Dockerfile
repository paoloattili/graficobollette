FROM openjdk:11

ADD be-0.0.1-SNAPSHOT.jar be-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT [ "sh","-c","java -Dspring.profiles.active=local -Xmx386m -jar be-0.0.1-SNAPSHOT.jar" ]