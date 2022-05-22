# Rollback updates

**Directory structure**

* `react-app` is where we are working.

**Files that are different**

The changes can be found in:
* `react-app/values.yaml` we changed the tag to v1. To run a second version after helm installing this chart, update to v2.

# Commands

Run these in the `react-app` directory

```
// installing charts
helm install [NAME] [CHART] [flags]
helm install react-app ./react-app --dry-run
helm install react-app ./react-app

// check history
helm history [RELEASE NAME] [flags]
helm history react-app

// upgrade helm chart
helm upgrade [NAME] [CHART] [flags]
helm upgrade react-app ./react-app

// check history
helm history react-app

// roll back
helm rollback [NAME] [VERSION]
helm rollback react-app 1
```
