FROM node:18.13.0

WORKDIR /usr/src/app

# RUN apk update && apk add git

COPY package.json .

RUN apt-get update

RUN apt-get install -y python

RUN npm install -g npm@latest

RUN npm install -g @medusajs/medusa-cli@latest

# RUN npm install --loglevel=error
# --loglevel=error

COPY . .



RUN npm install  --force --loglevel=error

RUN chmod +x develop.sh


ENTRYPOINT ["./develop.sh", "start"]