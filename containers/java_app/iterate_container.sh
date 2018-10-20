#/bin/bash 
./gradlew clean build
docker build -t java-app .
docker run -p 8080:8080 java-app
