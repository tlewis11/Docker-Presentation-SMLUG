#!/bin/bash

#docker run -p80:80 --name default-nginx -d nginx
#mkdir my_docker_volume; cd my_docker_volume; echo “<html>My custom Nginx site</html>” > index.hml




run_nginx(){
  docker kill my_nginx
  docker rm my_nginx
  rm -rf /tmp/my_docker_volume
  mkdir /tmp/my_docker_volume 
  echo "Hello from the Nginx container!" > /tmp/my_docker_volume/index.html
  docker run --name my_nginx -p80:80 -v /tmp/my_docker_volume:/usr/share/nginx/html:ro -d nginx
}

echo "======= testing docker..."

docker run hello-world

echo "======= cloning git repo.."

rm -rf Docker-Presentation-SMLUG
git clone git@github.com:tlewis11/Docker-Presentation-SMLUG.git
pushd Docker-Presentation-SMLUG/containers/python_app
  docker build -t my-python-app.
  docker run -t my-python-app -p 8000:8000
popd

#pushd Docker-Presentation-SMLUG/containers/ruby_app
#popd 

