FROM node as builder
WORKDIR /work
COPY . /work
RUN npm install
RUN npm test

FROM node
WORKDIR /app
COPY --from=builder /work/index.js /work/package.json /work/package-lock.json /app/
RUN npm ci
EXPOSE 5001
CMD [ "npm", "start" ]