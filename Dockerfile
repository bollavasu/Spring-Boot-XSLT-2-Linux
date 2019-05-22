FROM openjdk:8
ADD target/SpringBootXslt.jar SpringBootXslt.jar
ADD src/main/resources/transform.xslt transform.xslt
ADD src/main/resources/input.xml input.xml
EXPOSE 8080
ENTRYPOINT ["java","-jar","SpringBootXslt.jar"]