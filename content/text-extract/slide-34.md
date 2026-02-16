# Slide 34

$ kubectl create configmap my-config --from-file=/path/to/foobar.conf
configmap/my-config created
ConfigMaps
Hold application configuration data
Key value pairs (like secrets), YAML or free format (e.g. XML, conf)
Pass to containers as env vars or mount as volume
Application configuration
Uses
kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap
containers:- name: my-foobar-server
volumeMounts:
- name: config-vol
mountPath: /etc/config
volumes:
- name: config-vol configMap: name: my-config
myapp.yaml
Mount into container at given path
