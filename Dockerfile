FROM openjdk:17
COPY ./build/libs/app-0.0.1-SNAPSHOT.jar /usr/src/myapp/app.jar
ENTRYPOINT ["java", "-Dserver.port=${server_port}", "-Dspring.profiles.active=${spring_profiles_active}", "-Dapplication.role=${application_role}", "-Dpostgresql.filepath=${postgresql_filepath}", "-jar", "/usr/src/myapp/app.jar"]
EXPOSE 8081
WORKDIR /usr/src/myapp