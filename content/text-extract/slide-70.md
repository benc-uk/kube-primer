# Operators

## A common and easily understood way to extend Kubernetes

The Operator pattern: CRD + Custom Controller

- An operator is custom controller that acts on a given set of CRDs – defines behaviour
- Controller is run as a regular pod & deployment
- Custom operator reconciler code subscribes to the Kubernetes API & watches for CRD changes

Discover & use:
artifacthub.io
operatorhub.io

Build your own:
Kubebuilder
KUDO
Operator SDK

Custom Resource

Operator

reconcile

crud

user

tracking

change
events

state
