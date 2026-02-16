# Kubernetes Technical Primer

A comprehensive technical primer and guide to Kubernetes — covering core concepts, workload configuration, networking, security, scaling, observability, DevOps practices, and Azure Kubernetes Service (AKS).

## Target Audience

Technical architects, developers, and platform engineers wanting to learn the core fundamentals of Kubernetes.
Not for those trying to deploy Kubernetes from scratch or get deeply into cluster internals.

## Content Notes

This guide is not intended to be delivered as a complete presentation. It can be used as a learning guide or handout.
Alternatively, take out sections or slides and use/present as needed.

## Topics Covered

- **Introduction** — What Kubernetes is, when to use it (and when not to)
- **Core Components** — Pods, Deployments, Services, Volumes, StatefulSets, DaemonSets, Jobs, Namespaces, RBAC
- **Using Kubernetes** — kubectl, declarative model, labels & selectors
- **Workload Configuration** — Environment variables, Secrets, ConfigMaps, resource management, probes
- **Beyond The Basics** — Kubernetes ecosystem, API, container runtimes & tooling
- **Networking** — Ingress, Gateway API, Network Policies, External DNS, Cert Manager, Service Mesh
- **Debugging** — Describing objects, logs, exec, kubectl debug, common failure patterns
- **Advanced Pod Configuration** — Manifests, init containers, native sidecars, node selectors, affinity/taints, Pod Security
- **Scaling** — Manual scaling, HPA, Cluster Autoscaler, KEDA
- **Extending Kubernetes** — Custom Resource Definitions, Operators
- **DevOps & Observability** — CI/CD lifecycle, GitOps, Prometheus/Grafana/OpenTelemetry, Helm, Kustomize
- **Azure Kubernetes Service** — AKS overview, networking modes, Entra Workload ID, Entra ID for RBAC, Azure Monitor Container Insights, Cluster Autoscaler

## Accessing the Content

- Online hosted on GitHub Pages - [code.benco.io/kube-primer](https://code.benco.io/kube-primer/)
- Downloadable as PowerPoint or PDF - https://github.com/benc-uk/kube-primer/releases/latest

## Change Log

- 1.0 Initial release
- 1.1 Typos and fixes, added final additional resources slide
- 1.2 Added AKS section & taints/affinity
- 1.3 Extra sections on AKS
- 1.4 Minor refresh, ConfigMaps and service mesh
- 1.5 Added Operators & CRD, removed Dev Spaces and some minor refreshes
- 1.6 Removed Docker references, added GitOps & Dapr, general update
- 2.0 Major overhaul for 2026 — modernized content, added Gateway API, Network Policies, Pod Security, KEDA, container runtimes, observability stack, Kustomize, common failure patterns, native sidecars, kubectl debug. Removed deprecated content (Dapr, Virtual Nodes, HTTP routing add-on). Updated AKS section with Entra ID, Workload Identity, Container Insights, and consolidated networking.
