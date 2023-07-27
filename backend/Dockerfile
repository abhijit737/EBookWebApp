FROM maven:2.7.0-openjdk-11 As build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:11-jdk-slim-sid
COPY --from=build /target/Ebook-0.0.1-SNAPSHOT.jar Ebook.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","Ebook.jar"]