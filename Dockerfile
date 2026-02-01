
FROM node:21.2-alpine3.18

WORKDIR /usr/src/app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 4200

CMD /usr/src/app/node_modules/.bin/ng serve --host 0.0.0.0 --disable-host-check

### RUN THIS FIRST
#docker build -t onfleeks -f Dockerfile .

### ATER THAT RUN THIS
#docker run --rm -it -p 4200:4200 onfleeks
