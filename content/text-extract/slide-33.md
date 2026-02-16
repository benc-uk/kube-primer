# Slide 33

$ kubectl create secret generic my-secret --from-literal connString='admin:superSecret@some-host'
secret/my-secret created
Secrets
Hold sensitive information such as passwords, certs and API keys
Don’t place sensitive values as plain text in deployment files
Don’t “bake” secrets into your container images with config files
Can be mounted in pods as files or environmental variables
TLS certificates
Application configuration
Authentication with private registry
Uses
kubernetes.io/docs/concepts/configuration/secret
containers:
- name: my-web-server
env:
- name: DATABASE_CONNECTION_STRING
valueFrom:
secretKeyRef:
name: my-secret
key: connString
myapp.yaml
