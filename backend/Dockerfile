FROM eclipse-temurin:21-jdk AS build
WORKDIR /app

COPY ../gradlew ./gradlew
COPY ../gradle ./gradle
COPY ../build.gradle.kts ./build.gradle.kts
COPY ../settings.gradle.kts ./settings.gradle.kts
COPY ../gradle.properties ./gradle.properties
COPY backend/build.gradle.kts ./backend/build.gradle.kts
COPY backend/src ./backend/src

RUN chmod +x gradlew
RUN ./gradlew :backend:bootJar --no-daemon -x test

FROM eclipse-temurin:21-jre
WORKDIR /app

COPY --from=build /app/backend/build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
