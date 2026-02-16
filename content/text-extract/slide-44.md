# Slide 44

Replacing Ingress for gateways and external access
Ingress still works and isn't deprecated, but Gateway API is now GA and is the recommended path forward for new clusters
Gateway API
Richer routingNative support for header-based routing, traffic splitting/weighting, redirects, and URL rewrites
Multi-protocolSupports HTTP(s), gRPC, TCP, and TLS routing nativelyPortableNo more cryptic controller-specific annotations the same spec works across implementations Extensible by designSupports custom resource attachment points and policy objects for things like rate limiting & authRole-orientedSeparates concerns between cluster operators (who manage Gateways) and app developers (who manage Routes)
Do not confuse this with an “API Gateway”!
