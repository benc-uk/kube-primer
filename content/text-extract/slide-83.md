# Slide 83

Cluster Auto Scaler
Node & infra autoscaling with Azure Scale Sets
Enables the standard Kubernetes Cluster Autoscaler (CA)
HPA scales your workload by adding pods, and the Cluster Autoscaler scales your infrastructure by adding nodes when those new pods can't be scheduled
Leverages Azure VM Scale Sets
Settable per node pool if using multiple pools
--enable-cluster-autoscaler
--min-count 1
--max-count 8
docs.microsoft.com/azure/aks/cluster-autoscaler
