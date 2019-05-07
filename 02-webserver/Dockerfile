FROM node

WORKDIR /app
COPY . /app

RUN npm ci
EXPOSE 5001

CMD [ "node", "index.js" ]