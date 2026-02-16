# Slide 13

Scale and run pods across multiple nodes
Deployments let you run & scale stateless workloads in Kubernetes
Deployments & Replica Sets
Deployments describe a replicated set of Pods
A Deployment represents desired state - Rolling updates used to safely roll out changes
You scale Deployments up & down
Deployments typically run stateless workloads
Deployments use ReplicaSets
Deployment
- name: MyApp
- replicas: 3
ReplicaSet
- replicas: 3
pods
