# Slide 48

Service Mesh
Provides advanced networking between services inside the cluster
Most feature-rich; but complex. Now supports ambient mode (no sidecars)
Lightweight, simple, CNCF graduated
eBPF-based, no sidecars, doubles as CNI (networking layer) + service mesh
mTLS & zero-trust — encrypt all pod-to-pod traffic automatically
Observability — distributed tracing, metrics, golden signals (via OpenTelemetry)
Traffic management — canary deployments, retries, blue-green, circuit breaking, fault injection
Consider a service mesh when you have many services and need consistent security/observability policies
Adds operational complexity — don't adopt prematurely
Note: The Gateway API (a core part of Kubernetes) is increasingly used for traffic management, reducing the need for a full mesh
