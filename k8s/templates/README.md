# Service Account / ClusterRoleBinding Updates

### Commands

```
//create SA
kubectl -n <namespace> create serviceaccount <service-account-name>

//use -o yaml to see serviceaccount or other manifest (yaml output)
kubectl get serviceaccounts <service-account-name> -o yaml

//apply clusterrolebinding
kubectl apply -f <path-to-config>

//get token name.. this time using -o json (json output) and pick which field you want
TOKENNAME=`kubectl -n kube-system get serviceaccount/<service-account-name> -o jsonpath='{.secrets[0].name}'`

//get secret for token 
TOKEN=`kubectl -n kube-system get secret $TOKENNAME -o jsonpath='{.data.token}'| base64 --decode`

//set credentials and context
kubectl config set-credentials <service-account-name> --token=$TOKEN
kubectl config set-context --current --user=<service-account-name>

//list users
kubectl config view -o jsonpath='{.users[*].name}'   

//delete
kubectl -n kube-system delete secret $TOKENNAME
```

**Before CI**
```
//create SA
kubectl create serviceaccount <sa-name>

//bind role
kubectl apply -f <path-to-config>
```
!!Note values for TOKEN and CA_CERT to use in CircleCI!!


### Links 
**Relevant k8s docs**

[Configure Service Accounts for Pods](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)
[Managing Service Accounts](https://kubernetes.io/docs/reference/access-authn-authz/service-accounts-admin/)
[Configure Access to Multiple Clusters](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/) (setting contexts and clusters)
[RBAC Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
[Deprecation Guide](https://kubernetes.io/docs/reference/using-api/deprecation-guide/)
[kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

**Useful Links**

[SA Tutorial](https://docs.oracle.com/en-us/iaas/Content/ContEng/Tasks/contengaddingserviceaccttoken.htm)
[Base64](https://developer.mozilla.org/en-US/docs/Glossary/Base64)
[Example blog post to use for help](https://www.strongdm.com/blog/kubernetes-rbac-role-based-access-control)

# (Main Video) Commands

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
