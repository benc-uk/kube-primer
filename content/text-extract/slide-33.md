# Environmental Variables

## Environmental variables are the standard way to configure containers at runtime Containerized app consumes environmental variables in OS standard way Key value pairs Application/container specific

- apiVersion: v1
- kind: Pod
- metadata:
- name: envar-demo
- labels:
- purpose: demonstrate-envars
- spec:
- containers:
- - name: envar-demo-container
- image: gcr.io/google-samples/node-hello:1.0
- env:
- - name: DEMO_GREETING
- value: "Hello from the environment"
- - name: DEMO_FAREWELL
- value: "Such a sweet sorrow"

Application configuration
Parameter passing

Uses

kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/
