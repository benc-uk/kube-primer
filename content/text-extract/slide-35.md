# Slide 35

apiVersion: v1
kind: Pod
metadata:
name: demo-app
spec:
containers:
- name: db
image: mysql
resources:
requests:
memory: "64Mi"
cpu: "0.25"
limits:
memory: "512Mi"
Resource Management
Define compute (CPU & memory) resource limits and requests for containers
Allows Kubernetes to make better scheduling placement decisions
Limits are enforced, requests aren’t
CPU resources are fractions of 1 vCore
Efficient use of cluster resources
Prevent rogue workloads starving the cluster
Good practice
Uses
kubernetes.io/docs/concepts/configuration/manage-compute-resources-container
Specifying limits & requests is optional but STRONGLY recommended
Certain capabilities such as auto scaling are dependant on setting resources
