# Services

## Services are how you connect to Pods over the network

Network access to Pods

- Pods are ephemeral - they can move/die/change without notice. In general, users do not directly access Pods
- Services are an abstraction which defines a logical set of Pods and a policy by which to access them
- Services use labels and selectors to map to Pods
- Services are assigned IP addresses and DNS names

pods

Network Traffic

Service
