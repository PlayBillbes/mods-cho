FROM node:latest

WORKDIR /modsbots

EXPOSE 3000

COPY . .

RUN apt-get update &&\
    apt install --only-upgrade linux-libc-dev &&\
    apt-get install -y iproute2 vim netcat-openbsd &&\
    addgroup --gid 10008 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10008 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser &&\
    npm install

CMD ["/bin/bash","/enterypoint.sh"]

USER 10008
