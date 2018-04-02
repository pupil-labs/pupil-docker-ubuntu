# pupil-docker-ubuntu
Pupil development dependencies Ubuntu 18.04 LTS Docker image. 

## Setup

Install docker CE on your host machine. Follow instructions [here](https://docs.docker.com/install/). 

### Docker on Linux

Follow installation instructions for [Docker Community Edition (CE)](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/). Then install [docker-compose](https://docs.docker.com/compose/install/#install-compose).

Create a [docker group](https://stackoverflow.com/a/33596140):

```bash
sudo usermod -aG docker $(whoami)
```

## Build Docker Image

Build the docker image. This will use the `Dockerfile` by default.

```bash
cd pupil-docker-ubuntu
docker build . --file 'Dockerfile' --tag 'pupillabs/pupil-docker-ubuntu:1.0'
```

## Push Docker image to Docker Hub

If not logged in already, you will need to log in before pushing to docker. 

```bash
docker login
```

Push the built image to dockerhub.

```bash
docker push
```

## Debugging

You can run/enter the container like so. 

```bash
docker run -d --name pupil-ubuntu <name or id of image> tail -f /dev/null   
```

```bash
docker exec -it <container name> bash
```