FROM maven:3.9.5
WORKDIR /usr/src/app
COPY pom.xml .
COPY src src
RUN mvn clean package
CMD ["java", "-jar", "target/your-app.jar"]
