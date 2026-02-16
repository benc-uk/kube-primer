# Custom Resources Definitions (CRDs)

## Extend Kubernetes with new entities and data models

Extend the Kubernetes API and object model

- An extension of the Kubernetes API that is not available in a default Kubernetes installation
- Can represent application specific or generalised entities, e.g. BackupJob, Report
- A CRD is schema & state – doesn’t define behaviour
- Manage via the API & kubectl same as standard built-in resource types

apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
spec:
names:
plural: pets
kind: Pet
openAPIV3Schema:
type: object
properties:
petName:
type: string

$ kubectl get pets
