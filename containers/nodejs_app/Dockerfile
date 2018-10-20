FROM ubuntu:18.04
EXPOSE 8001
RUN wget -qO- https://deb.nodesource.com/setup_8.x | /bin/bash
RUN apt-get update; apt-get install -y nodejs; apt-get -y install npm
COPY . .
ENTRYPOINT ["./entrypoint.sh"]
