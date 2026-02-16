# Affinity and Taints

## Affinity and anti-affinity provide advanced ways to control Pod placement - ‘Hard’ rules and ‘soft’ rules - Weighting and expressions Taints and Tolerations. Taints are applied to Nodes and will not accept Pods that don’t have a matching Toleration

- $ kubectl taint nodes myNode001 team=team1:NoSchedule
- node/myNode001 tainted
- kind: Pod
- spec:
- tolerations:
- - key: team
- operator: Exists value: "team1"
- effect: NoSchedule

Assign workloads requiring special hardware or resources, e.g. GPU
Physical partitioning of cluster
Separating noisy Pods

Uses

kubernetes.io/docs/concepts/configuration/taint-and-toleration/

kind: Pod
spec:
affinity:
nodeAffinity:
requiredDuringSchedulingIgnoredDuringExecution:
preferredDuringSchedulingIgnoredDuringExecution:
podAffinity:
requiredDuringSchedulingIgnoredDuringExecution:
preferredDuringSchedulingIgnoredDuringExecution:

Unlike taints & nodeSelectors, affinity rules can also apply to pods. i.e. do or don’t schedule these pods together

kubernetes.io/docs/concepts/configuration/assign-pod-node/#affinity-and-anti-affinity
