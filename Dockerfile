FROM node as builder

WORKDIR /work 
COPY .  /work/
RUN node -v
RUN npm -v
RUN npm ci
RUN npm test

FROM node
WORKDIR /app
COPY --from=builder /work/index.js /work/package.json /work/package-lock.json /app/
RUN npm ci --production
EXPOSE 3000
CMD [ "node", "index.js" ]