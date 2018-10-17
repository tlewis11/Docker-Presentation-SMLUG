FROM ubuntu:18.04
EXPOSE 8000
RUN apt-get update; apt-get install -y python
RUN apt-get install -y python-pip
COPY . .
ENTRYPOINT ["./entrypoint.sh"]
