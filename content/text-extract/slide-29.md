# Slide 29

$ kubectl apply –f myconfig.yaml
deployment.apps/mydeploy created
Idempotent Updates & Desired State
Files describe desired state of the resources you configuring
kubectl apply
Kubernetes applies updates in idempotent way, modifying objects only if needed
Idempotency: “The definition of the target state can be applied multiple times and if the system’s state is unchanged, no changes are made to the system”
