# Docker-Presentation-SMLUG

Source code for Introduction to Docker Presentation. 
South Mississippi Linux Users Group 
October 20, 2018 
```
mkdir /tmp/my_docker_volume
echo "<htmlHello From >My Custom Nginx Container</html>" > /tmp/my_docker_volume
docker run --name my_nginx -p80:80 -v /tmp/my_docker_volume:/usr/share/nginx/html:ro -d nginx
```
