# Slide 63

Manually Scaling
Horizontally scale
Distribute work around cluster
Remove single points of failure
Uses
Scale stateless workloads by controlling the number of replicas of a Deployment
Be careful scaling StatefulSets, unless the workload/application is “cluster aware”
DaemonSets don’t require scaling
$ kubectl scale deploy/myApp --replicas=5
deployment.extensions/myApp scaled
kind: Deployment
apiVersion: apps/v1
metadata:
name: myApp
spec:
replicas: 2
OR
5
