FROM postgres:12

RUN apt update && apt install -y awscli mcrypt
