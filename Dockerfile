FROM node:latest

WORKDIR /home/choreouser

EXPOSE 3000

COPY . .

RUN apt-get update &&\
    apt install --only-upgrade linux-libc-dev &&\
    apt-get install -y iproute2 vim netcat-openbsd &&\
    addgroup --gid 10008 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10008 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser &&\
    npm config set registry http://registry.npmjs.org &&\
    npm install ws &&\
    npm install http-proxy &&\
    npm install

CMD [ "node", "index.js" ]

USER 10008
