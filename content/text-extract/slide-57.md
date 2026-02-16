# Deeper Dive on Manifests

## Manifests for Deployments, StatefulSets and DaemonSets have a similar pattern & structure The spec part contains replicas and a selector and also a template for the objects it will replicate The template will contain another spec, typically a Pod spec A Pod spec contains one or more containers

- kind: Deployment
- apiVersion: apps/v1
- metadata:
- name: my-deployment
- labels:
- cheese: cheddar
- spec:
- replicas: 1
- selector:
- matchLabels:
- thing: my-app
- template:
- metadata:
- labels:
- thing: my-app
- cake: chocolate
- spec:
- containers:
- - name: my-container
- image: nginx

The selector of the spec MUST match one label in the template

Deployment name will also be used as name prefix for the
ReplicaSet and Pods

Required field but mostly not important

Labels for the deployment are
optional

?? So what do all these labels mean ??
