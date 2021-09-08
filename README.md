# Deployment Demo app

**Youtube** 

To go along with [this video](https://youtu.be/flrEc9FxKNQ)

**Running locally**

```
npm install
npm start
```

**Building Docker**

To build Docker image

```
docker build -t <username>/<image>:<tag> .
docker run -p 80:80 -it <username>/<image>:<tag>

//after building
docker run -p 80:80 -it <username>/<image>:<tag>
docker containers ls

```

Logging in and pushing
```
//make sure image is built
docker build -t <username>/<image>:<tag> .

//option 1
docker login
docker push <username>/<image>:<tag>

docker build -t $DOCKER_REPOSITORY:$TAG .
echo $DOCKER_PASSWORD | docker login -u $DOCKER_USER --password-stdin
docker push $DOCKER_REPOSITORY:$TAG
```
