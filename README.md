# Docker-Presentation-SMLUG

Source code for Introduction to Docker Presentation. 
South Mississippi Linux Users Group 
October 20, 2018 

--- 
# Run an nginx container

```
mkdir /tmp/my_docker_volume
echo "<htmlHello From >My Custom Nginx Container</html>" > /tmp/my_docker_volume/index.html
docker run --name my_nginx -p80:80 -v /tmp/my_docker_volume:/usr/share/nginx/html:ro -d nginx
```
---

# Custom Containers
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
