# Namespaces

## When first learning Kubernetes use the default Namespace

Logical Separation & Cluster Organisation

- Most Kubernetes objects live inside a Namespace
- Kubernetes starts with two Namespaces: default and kube-system
- You can create Namespaces to logically partition a cluster, e.g. for dev/test or different customers
- Nodes will be shared across Namespaces
- A namespace does not provide isolation & multi-tenancy

Kubernetes Cluster

Namespace
“alpha”

Namespace
“beta”

pod

pod

pod

Node
1

Node
2

Node
3

svc
