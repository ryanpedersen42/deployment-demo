# HPA Updates

**Files that are different**

The changes can be found in:
* `demo-prod.yaml` where we added resource requests and limits
* `hpa.yaml` where we are defining the HPA.

**Applying**
```
kubectl apply -f k8s/templates/demo-prod.yaml
kubectl apply -f k8s/templates/hpa.yaml
```

# ORIGINAL VIDEO README
# Commands

**Apply template** 

```
kubectl apply -f k8s/templates/demo-prod.yaml
kubectl get pods --watch
kubectl get services
```

**Delete**

```
kubectl delete -f k8s/templates/demo-prod.yaml
kubectl get pods --watch
```
