# Commands to build, push to DockerHub and deploy an Docker image on aws manually

## Build an image

Don't forget the dot after the command!

- docker login
- docker build -t \<NAME>:\<TAG> .
  - docker build -t wombat:latest .
  - docker build -t wombat:0.5.0 .

## Push Docker image to DockerHub

You have to init the repo on hub.docker.com
First you need to tag your image

- docker tag local-image:tag-name username/reponame:tagname
  - docker tag wombat:latest badstieber/reponame:latest
- docker push username/reponame:latest
  - docker badstieber/reponame:latest

## Pull repo from aws

SSH to aws machine, then

- sudo docker run -it -d -p host-port:app-port --name NAME username/reponame:tag
  - sudo docker run -it -d -p 80:80 --name wombat badstieber/reponame:latest
