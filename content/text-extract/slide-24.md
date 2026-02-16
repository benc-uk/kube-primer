# Role Based Access Control (RBAC)

## RBAC is optional, but a standard feature for any new cluster

Regulating & governing access

- RBAC controls user and system access to the API and Kubernetes resources
- Roles define privileges as sets of verbs and API resources
- RoleBinding grants Roles to Users and ServiceAccounts

User

ServiceAccount

get, delete, create, list, update, watch

pods, secrets, services,
jobs, nodes, ingresses

Verb:

API:

kind: Role
name: pod-reader
rules:
resources: ["pods"]
verbs: ["get", "watch", "list"]

RoleBinding

Note. Kubernetes doesn’t include a native identity system or a way to manage end user accounts
