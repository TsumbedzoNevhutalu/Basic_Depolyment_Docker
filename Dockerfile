#define the base image for docker image
 FROM openjdk:8
 #mainatance for the image
 LABEL maintainer="javaguides.net"
 #adding a jar file to the image
 ADD target/springboot-docker-demo-0.0.1-SNAPSHOT.jar springboot-docker-demo.jar
 #entrypoint configuration, how the application is going to run in the docker container
 ENTRYPOINT ["java", "-jar", "springboot-docker-demo.jar"]


 #creating a docker image
 #docker build -t springboot-docker-demo:latest
 #to verify the image build
 #docker images
 #to run the image
 #docker run -p 8081:8080 springboot-docker-demo