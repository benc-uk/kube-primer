# Node Selector

## A simple constraint to which Nodes are eligible to run a Pod Key value pairs of labels, to be matched against Node’s labels Not a ‘hard rule’, other Pods that have no nodeSelector can still land on the node

- kind: Pod
- metadata:
- name: machineLearning
- spec:
- containers:
- - name: trainModel
- image: ml-image:latest
- nodeSelector:
- hardware: gpu

Assign workloads requiring special hardware or resources, e.g. GPU
Physical partitioning of cluster
Separating noisy Pods

Uses

Pod

Name: aks-nodepool1-18655374-vmss000000
Roles: agent
Labels: agentpool=nodepool1
beta.kubernetes.io/arch=amd64
hardware=gpu

Can be scheduled on

Node

kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector
