# Kubernetes Declarative Model

## YAML or JSON documents Describe any Kubernetes object Objects & properties map directly to the Kubernetes API You can combine multiple objects into a single file (separate with ---)

- kind: Deployment
- apiVersion: apps/v1
- metadata:
- name: mydeploy
- spec:
- replicas: 4
- selector:
- matchLabels:
- app: myapp
- template:
- metadata:
- labels:
- app: myapp
- spec:
- containers:
- - name: mycontainer
- image: bencuk/vuego-demoapp
- ports:
- - containerPort: 4000

Note. JSON is also supported, but YAML is recommended for readability

This is a deployment object, called ‘mydeploy’

It will run 4 replicas of a pod matching the label app=myapp

Each pod will be labelled with app=myapp and
Runs a container from image bencuk/vuego-demoapp
Port 4000 will be exposed from the container
