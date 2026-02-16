# Slide 19

Handling Stateful workloads
Use a StatefulSet rather than Deployment for stateful workloads
Stateful Sets
A StatefulSet is like a Deployment except Pods get well defined names and replicas start in ordered sequence
StatefulSets retain identity regardless of which Node they run on
Each Pod in a StatefulSet will bind to the same defined PersistentVolumeClaim
StatefulSet
- name: MyDbSet- serviceName: "mongo"
- replicas: 2
