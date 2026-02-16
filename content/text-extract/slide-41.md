# The Kubernetes API

## It’s Kind Of Important!

- Every object in Kubernetes and any interactions with the cluster are shaped by the API and the API spec - YAML manifests schema - kubectl commands
- Served by the API server running on control plane node(s)
- Kubernetes version dependant
- Aggregated – single API server endpoint fronts multiple versioned APIs, and it's extensible both via CRDs and via API aggregation
- kubectl proxy – Create a local tunnel to the API server if you want to get your hands dirty

kubernetes.io/docs/reference/#api-reference
