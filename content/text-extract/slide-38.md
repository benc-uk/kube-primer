# Container Arguments

## Use args to pass arguments to the container, pass an array of strings Use the command property to override the starting command in a container. Rarely used. Note. These correspond to the Docker Entrypoint and Cmd parameters

- kind: Pod
- metadata:
- name: command-demo
- spec:
- containers:
- - name: command-demo-container
- image: debian
- command: ["printenv"]
- args: ["HOSTNAME", "KUBERNETES_PORT"]

| Description | Docker field name | Kubernetes field name |
| --- | --- | --- |
| The command run by the container | Entrypoint | command |
| The arguments passed to the command | Cmd | args |

Use base images to run utilities & scripts
Debugging & trouble shooting
Application configuration
Parameter passing

Uses

kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/
