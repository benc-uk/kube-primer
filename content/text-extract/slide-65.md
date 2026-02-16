# Horizontal Pod Autoscaler (HPA)

## Dynamically scale stateless workloads across available nodes

Automatically scale stateless workloads

- Use to horizontally scale stateless Pods in ReplicaSet/Deployment
- Rules define desired Pod replica count based on observed metrics
- Takes metrics from the metrics API fed from the Metrics Server
- Supports extension via custom metrics

Horizontal Pod Autoscaler

pod 1

pod n

…

Deployment

Metrics Server

Scale

metrics data

- Increase replicas
- Decrease replicas
