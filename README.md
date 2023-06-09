## Python-flask-docker

Basic Python Flask app in Docker which prints the hostname and IP of the container

### Build application
Build the Docker image manually by cloning the Git repo.
```
git clone https://github.com/nasir/python-flask-docker.git
docker build -t python-flask-docker .
```
### Download precreated image
You also can download image from [DockerHub](https://hub.docker.com/repository/docker/kangnasir/python-flask-docker)
```
docker pull kangnasir/python-flask-docker
```
### Run the container
Create a container from the image.
```
docker run --name python-flask-docker -d -p 8080:8080 python-flask-docker
```
Now visit http://localhost:8080

```
 The hostname of the container is 6095273a4e9b and its IP is 172.17.0.2. 
 ```
 ### Verify the running container
 Verify by checking the container ip and hostname (ID):
 ```
 $ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' python-flask-docker
172.17.0.2
$ docker inspect -f '{{ .Config.Hostname }}' python-flask-docker
6095273a4e9b
 ```
 
 You can visit live example here [http://app.nasir.id:8080](http://app.nasir.id:8080)
