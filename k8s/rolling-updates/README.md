# Rolling Updates

**New Manifests**

The changes can be found in:
* `deployment.yaml` deployment with RollingUpdate strategy
* `service.yaml` loadbalancer

**Setting Up Cluster**

```
// start cluster with v1.23.3
minikube start --kubernetes-version=v1.23.3

// if you'd like to access app
minikube tunnel 
```

**Applying**

```
// first application
kubectl apply -f k8s/rolling-updates

// -OR- optional if you have namespace
kubectl apply -f k8s/rolling-updates -n <namespace>

// apply and watch rollout status
k apply -f k8s/rolling-updates && kubectl rollout status deployments/deployment-demo
```

**Checking Status**

```
// check deployments 
kubectl get deployments

// describe deployment
kubectl describe deployment <deployment-name>

// check replicasets (rs is alias for replicaset)
kubectl get rs

// get replicaset yaml
kubectl get rs -o yaml 

// get pods 
kubectl get pods

// with one of the pods above
kubectl describe pods <pod-name>

```