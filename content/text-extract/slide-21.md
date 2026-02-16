# Daemon Sets

## DaemonSets run system Pods for monitoring & network

Running Pods across all Nodes

- A DaemonSet ensures that all Nodes in the cluster run a given Pod. Pods will be created/removed as Nodes are added/removed
- Used for special system and cluster daemons, logging, storage, etc.
- DaemonSets are not often used for normal app workloads

Node
1

Node
2

Node
n

DaemonSet
