# Week 1 — App Containerization
### Required Work


###HomeWork Assignment
1- Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes. 
I created a new EC2 instance and connected into it using Aws inbuilt cli
![Image of The Budget I Created](assets/aws-ec2-connect.png) 

installed docker on instance as follows
```
sudo yum install docker -y
sudo usermod -a -G docker ec2-user
newgrp docker
sudo systemctl enable docker.service
sudo systemctl start docker
```
![Image of The Budget I Created](assets/aws-ec2-docker.png) 

Pull an image from dockerhub
```
docker pull nginxdemos/hello
```
![Image of The Budget I Created](assets/docker-pull-ec2.png) 

Run docker nginx image
```
docker run -P -d nginxdemos/hello
```
![Image of The Budget I Created](assets/docker-run-ec2.png) 

Test server
```
curl  0.0.0.0:49153
```
![Image of The Budget I Created](assets/curl-ec2.png) 

2- Implement a healthcheck in the V3 Docker compose file
Created two Health Checks,one for Backend  and Frontend

Frontend Healthcheck
```
healthcheck:
      test: ["CMD", "curl", "-f", "https://3000-${GITPOD_WORKSPACE_ID}.${GITPOD_WORKSPACE_CLUSTER_HOST}"]
      interval: 60s
      retries: 5
      start_period: 20s
      timeout: 10s
```
Backend Healthcheck
```
healthcheck:
      test: ["CMD", "curl", "-f", "https://4567-${GITPOD_WORKSPACE_ID}.${GITPOD_WORKSPACE_CLUSTER_HOST}"]
      interval: 60s
      retries: 5
      start_period: 20s
      timeout: 10s
```
3- Push and tag a image to DockerHub
I decided to tag the  backend image 
```
docker tag aws-bootcamp-cruddur-2023-backend-flask:latest kaginno/python-backend
```
then pushed it to my private dockerhub registry
```
docker login
docker push kaginno/python-backend

```
![Image of The Budget I Created](assets/dockerhub-image.png)

4- Use multi-stage building for a Dockerfile build

I create a seperate Dockerfile building from two ubuntu images to make a multistage build

```
FROM ubuntu:20.04 AS final
FROM ubuntu:20.04 as build
# BUNDLE LAYERS
RUN apt-get update -y && apt install -y --no-install-recommends \
  curl \
  osmium-tool \
 && rm -rf /var/lib/apt/lists/*
RUN mkdir /osmfiles \
 && mkdir /merged \
 && curl http://download.geofabrik.de/europe/monaco-latest.osm.pbf -o /osmfiles/monaco.osm.pbf \
 && curl http://download.geofabrik.de/europe/andorra-latest.osm.pbf -o /osmfiles/andorra.osm.pbf \
 && osmium merge /osmfiles/monaco.osm.pbf /osmfiles/andorra.osm.pbf -o /merged/merged.osm.pbf
FROM final
RUN mkdir /merged
COPY --from=build /merged /merged
```

5- Run the dockerfile CMD as an external script
I created a bash script to run the above image build

run-docker.sh
```
#!/bin/bash
docker build -t mini-ubuntu .
```
Make file executable
```
sudo chmod +x run-docker.sh
```
![Image of The Budget I Created](assets/run-docker.png)