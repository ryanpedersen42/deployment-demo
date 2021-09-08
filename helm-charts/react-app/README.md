# Commands

**Creating template starter** 

```
mkdir helm-charts
cd helm-charts
helm create react-app
cd react-app
ls
```

**Remove unnecessary**

```
rm -rf hpa.yaml serviceaccount.yaml ingress.yaml
```

**Install chart dry run**

```
helm install [NAME] [CHART] [flags]
helm install react-app ./react-app --dry-run
```

**Install on cluster**

```
helm install react-app ./react-app
```