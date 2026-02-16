# Slide 65

Automatically scale cluster resources
Scale cluster wide by adding/removing Nodes
Cluster Autoscaler (CA)
Adjusts the size of the Kubernetes cluster, adding & removing Nodes when - Pods are pending state due to insufficient resources (scale out)- Nodes have been underutilized for a period of time (scale in)
Tightly coupled to the cloud and environment hosting the cluster & Nodes
CA
Node
New Node
Pending pods are scheduled
New Node is brought online
Additional node(s) needed
Pods are in pending state
Pod
Pod
Kubernetes Cluster
