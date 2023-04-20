FROM eclipse-temurin:17
RUN apt-get update && apt-get install -y maven
WORKDIR /app
COPY pom.xml pom.xml
RUN mvn dependency:go-offline
COPY src src
COPY tpl tpl
COPY generate.sh generate.sh
RUN bash generate.sh
RUN mvn package
CMD java -jar target/app.jar
