# Slide 28

kind: Deployment
apiVersion: apps/v1
metadata:
name: mydeploy
spec:
replicas: 4
selector:
matchLabels:
app: myapp
template:
metadata:
labels:
app: myapp
spec:
containers:
- name: mycontainer
image: bencuk/vuego-demoapp
ports:
- containerPort: 4000
Kubernetes Declarative Model
YAML or JSON documents
Describe any Kubernetes object
Objects & properties map directly to the Kubernetes API
You can combine multiple objects into a single file (separate with ---)
Note. JSON is also supported, but YAML is recommended for readability
