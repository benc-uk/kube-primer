# Gateway API

## Ingress still works and isn't deprecated, but Gateway API is now GA and is the recommended path forward for new clusters

Replacing Ingress for gateways and external access

- Richer routing Native support for header-based routing, traffic splitting/weighting, redirects, and URL rewrites
- Multi-protocol Supports HTTP(s), gRPC, TCP, and TLS routing natively Portable No more cryptic controller-specific annotations the same spec works across implementations Extensible by design Supports custom resource attachment points and policy objects for things like rate limiting & auth Role-oriented Separates concerns between cluster operators (who manage Gateways) and app developers (who manage Routes)

Do not confuse this with an “API Gateway”!
