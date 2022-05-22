# Rolling Updates

**New Manifests**

The changes can be found in:
* `deployment.yaml` deployment with revisionHisotryLimit
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
kubectl apply -f k8s/rollbacks

// -OR- optional if you have namespace
kubectl apply -f k8s/rollbacks -n <namespace>
```

**Rolling back**

```
// checking history
kubectl rollout history deployment/deployment-demo

// annotate
kubectl annotate deployment/deployment-demo kubernetes.io/change-cause="v1 first image"

// apply with record
kubectl apply -f k8s/rollbacks --record

// rollback to last
kubectl rollout undo deployment/deployment-demo

// roll back to specific version (select your revision)
kubectl rollout undo deployment/deployment-demo --to-revision=1
```
