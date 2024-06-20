FROM node:latest
WORKDIR /app
COPY . ..
RUN npm install
CMD ["/bin/bash","/enterypoint.sh"]
USER 10008
