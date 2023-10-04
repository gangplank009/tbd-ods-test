FROM openjdk:21-slim
# Copying first jar file in target dir
ADD order-service/target/*.jar app.jar

EXPOSE 8080
EXPOSE 8849

ENTRYPOINT java \
    $JAVA_OPTS \
    -Djava.security.egd=file:/dev/./urandom \
    -Djava.awt.headless=true \
    -jar /app.jar