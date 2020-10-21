FROM postgres:12

RUN apt update && apt install -y awscli mcrypt

RUN mkdir /root/.aws

COPY config /root/.aws/config

COPY credentials /root/.aws/credentials

RUN chmod 600 /root/.aws/*

ENTRYPOINT ["/root/backup/backup.sh"]
