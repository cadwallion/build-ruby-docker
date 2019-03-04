# Running Ruby Tests in Docker

This is an example repository of how to setup a basic Ruby 2.6 application in a Docker environment.

The core of the logic is found in two places: `Dockerfile` and `script/cibuild`.

The `Dockerfile` specifies the environment of a Debian Stretch distribution running Ruby 2.6.  It then adds the contents of the root directory into a `/app` directory, and specifies that the default command to be run is `script/test`.

The primary script, `script/cibuild` invokes a `docker build` call that generates a Docker image based on the `Dockerfile` in the root of this repository, and names the image `build-ruby-docker`.  It then calls `docker run` with the name of the Docker image, and because we have specified `script/test` in the `CMD` statement in the `Dockerfile`, it invokes `script/test`.  

When `script/test` is invoked, it will be inside the Docker container from the `/app` directory because our `Dockerfile` specifies a `WORKDIR` of `/app`.

## More on Docker

* [Docker for Beginners](https://docker-curriculum.com/)
* [Getting Started with Docker](https://docs.docker.com/get-started/)
* [The Ruby Docker Image](https://hub.docker.com/_/ruby)
* [FROM statement](https://docs.docker.com/engine/reference/builder/#from)
* [COPY statement](https://docs.docker.com/engine/reference/builder/#copy)
* [RUN statement](https://docs.docker.com/engine/reference/builder/#run)
* [CMD statement](https://docs.docker.com/engine/reference/builder/#cmd)
