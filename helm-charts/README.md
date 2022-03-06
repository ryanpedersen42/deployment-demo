# HPA Updates

**New directory structure**

There are two repos in here.
* `hpa-video` is where you'll find the subject of the demo.
* `react-app` is left unaltered from the original tutorial.

**Files that are different**

The changes can be found in:
* `hpa-video/templates/values.yaml` to see the new values we are defining. Change the image specified there if you don't want to run the demo one.
* `hpa-video/templates/deployment.yaml` where we added resource requests and limits
* `hpa-video/templates/hpa.yaml` is new, and we are defining the HPA.

# Commands

```
helm install [NAME] [CHART] [flags]
helm install hpa-video ./hpa-video --dry-run
helm install hpa-video ./hpa-video
```
