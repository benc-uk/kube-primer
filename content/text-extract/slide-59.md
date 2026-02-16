# Sidecars

## Pods co-locate multiple containers together, sharing network and storage Sidecar is a pattern where additional containers provide enhancing/optional capabilities Bind containers together to form a single cohesive unit of service Since Kubernetes 1.33, sidecars are natively defined as init containers with restartPolicy: Always

- kind: Pod
- metadata:
- name: monitored-webapp
- spec:
- containers:
- - name: webserver
- image: nginx
- initContainers:
- - name: log-monitor
- restartPolicy: Always
- image: my-log-monitor
- args: ["--log-dir", "/var/logs/nginx"]

Decompose architecture
Build services incrementally
Bolt on features

Uses

Pod

Container
nginx

Container
(sidecar)
logmon

/var/logs/nginx

The important part!
