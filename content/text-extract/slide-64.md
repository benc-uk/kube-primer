# Slide 64

Automatically scale stateless workloads
Dynamically scale stateless workloads across available nodes
Horizontal Pod Autoscaler (HPA)
Use to horizontally scale stateless Pods in ReplicaSet/Deployment
Rules define desired Pod replica count based on observed metrics
Takes metrics from the metrics API fed from the Metrics Server
Supports extension via custom metrics
Horizontal Pod Autoscaler
…
Deployment
MetricsServer
Scale
metrics data
- Increase replicas
- Decrease replicas
