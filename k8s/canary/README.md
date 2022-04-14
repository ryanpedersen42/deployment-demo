# Canary Updates

**New Manifests**

The changes can be found in:
* `deployment-canary.yaml` canary deployment
* `deployment-stable.yaml` stable deployment
* `service.yaml` loadbalancer

**Setting Up Cluster**

```
minikube start --kubernetes-version=v1.23.3
minikube tunnel
```

**Creating Namespace**

```
kubectl create namespace production
```

**Applying**

```
kubectl apply -f k8s/canary -n production
```

**Checking Status**

```
kubectl get services -n production
kubectl get deployments -n production
kubectl get pods -n production
```