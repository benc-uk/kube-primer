# Slide 30

kind: Deployment
...
metadata:
labels:
app: myapp
type: frontend
---
kind: Service
spec:
type: LoadBalancer
selector:
app: myapp
Labels & Selectors
Kubernetes makes extensive use of labels and selectors
Labels are metadata on any object and are just key+value pairs of your choosing
Selectors are lookups that match one or more objects based on their labels
This is a deployment labels its pods with app: myapp & type: frontend
This service will look for any pods labelled with app=myapp
Note. There might be zero, one or many matches
- Which Pods are in a Service- Which Nodes to run a Pod on- Which Pods are in a Deployment- Logically group & tag resources
Uses
kubernetes.io/docs/concepts/overview/working-with-objects/labels
