# Network Policies

Control traffic flow between Pods and Namespaces

- By default, all pods can communicate with each other Network Policies act as firewall rules to restrict this
- Define allowed ingress (incoming) and egress (outgoing) traffic per pod using label selectors
- Rules can target pods, namespaces, or IP CIDR blocks
- Common Use Cases:
- Isolate namespaces
- Restrict database & other access
- Default deny
- Compliance — enforce zero-trust network

kind: NetworkPolicy
metadata:
name: db-allow-api-only
spec:
podSelector:
matchLabels:
app: database
ingress:
- from:
- podSelector:
matchLabels:
app: api
ports:
- port: 5432

Allow access to DB service only from API pods
