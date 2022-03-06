# HPA Updates

**Youtube**

To go along with [this video](https://youtu.be/2CguRQIXya8)

**Using minikube**

```
//start cluster
minikube start

//start with version
minikube start --kubernetes-version=v1.23.0

//access load balancer
minikube tunnel

//enable metrics server and solve minikube target <unkonwn>
minikube addons enable metrics-server

//halt cluster
minikube stop

//delete
minikube delete --all
```

**Interacting with HPA**

```
//get hpa
kubectl get hpa

//get yaml output for hpa (instert hpa name based on which one you are doing)
kubectl get horizontalpodautoscalers.autoscaling/<hpa-name> -o yaml

//pipe it into a file
k get horizontalpodautoscalers.autoscaling -o yaml > /tmp/hpa-1.yaml

```

**Links used**

* [HPA 101](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)
* [HPA walkthrough we went through](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/)
* [Minikube docs](https://minikube.sigs.k8s.io/docs/start/)
* [How pod resources are run](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#how-pods-with-resource-limits-are-run)
* [API docs for HPA](https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/horizontal-pod-autoscaler-v2/)

# ORIGINAL README
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
