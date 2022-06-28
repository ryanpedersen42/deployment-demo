# Blue Green Updates

**New Manifests**

The changes can be found in:
* `blue/deployment-blue.yaml` blue deployment
* `blue/service.yaml` main service loadbalancer for app
* `green/deployment-green.yaml` green deployment
* `green/service-green.yaml` loadbalancer exposing port 8080 for green app

**Setting Up Cluster**

```
minikube start --kubernetes-version=v1.23.3
minikube tunnel
```

**Creating Namespace**

```
k create ns bluegreen
k config set-context --current --namespace=bluegreen
```

**Applying**

```
kubectl apply -f k8s/bluegreen/blue
kubectl apply -f k8s/bluegreen/green
```

**Checking Status**

```
# look for both ports here
kubectl get services 

# should be two deployments
kubectl get deployments 
```