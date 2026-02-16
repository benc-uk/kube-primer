# Stateful Sets

## Use a StatefulSet rather than Deployment for stateful workloads

Handling Stateful workloads

- A StatefulSet is like a Deployment except Pods get well defined names and replicas start in ordered sequence
- StatefulSets retain identity regardless of which Node they run on
- Each Pod in a StatefulSet will bind to the same defined PersistentVolumeClaim

StatefulSet
- name: MyDbSet - serviceName: "mongo"
- replicas: 2

mongo-0

mongo-1

pvc-mongo-0

pvc-mongo-1
