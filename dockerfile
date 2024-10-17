FROM amazoncorretto:23
COPY ./target/GatewayApplication-0.0.1-SNAPSHOT.jar GatewayApplication.jar
CMD ["java","-jar","GatewayApplication.jar"]
