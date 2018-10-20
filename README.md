# Docker-Presentation-SMLUG

Source code for Introduction to Docker Presentation. 
South Mississippi Linux Users Group 
October 20, 2018 

--- 
# Run an nginx container

```
mkdir /tmp/my_docker_volume
echo "<htmlHello From >My Custom Nginx Container</html>" > /tmp/my_docker_volume/index.html
docker run -p80:80 -v /tmp/my_docker_volume:/usr/share/nginx/html:ro -d nginx
```
---

# Running Custom Containers: 
  1. Clone this repo: `git clone https://github.com/tlewis11/Docker-Presentation-SMLUG.git`.
  2. Build and run custom containers from the ./containers directory.
--- 

## Build the custom Python container 
  ```
    cd containers python_app
    docker build -t my-python-app .
    docker run -p 8000:8000 -t my-python-app 
  ```

## Build the custom Nodejs container
  ```
    cd containers/nodjs_app
    docker build -t my-nodejsapp .
    docker run -p 8001:8001 -t my-nodejs-app 
  ```

## Build the custom Java container
  ```
    cd containers/java_app
    ./gradlew clean build
    docker build -t my-java-app .
    docker run -p 8080:8080 my-java-app
  ```
