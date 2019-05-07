# Docker 

## What is docker?

Docker
- Is a Company
- Containerization Framework
- (Hub) Container repository

Simple right?

### Containers

We care about the containerization framework that it provides through the docker engine and container repository it provides.

This brings to question what is a container, put simply a means of shipping software with limited overhead.

There are two concepts that tie this simplified approach to software deployment together containers and images. 
 - Image - Layered Instructions for running the software that you develop
 - Container - A running instance of an image

![Docker Containers](/docker-containers.jpg)



#### Running Containers

Let's run some containers!

``` bash
# Running the basic hello world container
docker run hello-world
```

``` bash
# Running an ubuntu  container in interactive mode with a bash terminal
docker run -it ubuntu bash
```

``` bash
# Run nginx
docker run -p 5001:80 nginx
```

### Images

#### Building Images

##### Hello World

``` javascript
// index.js
console.log("Hello Docker");
```

``` Dockerfile
# Dockerfile
FROM node

WORKDIR /work

COPY ./index.js /work 
RUN node -v

CMD [ "node", "index.js" ]
```

##### Node Web Server


