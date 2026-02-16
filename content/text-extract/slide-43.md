# Slide 43

External access & routing for HTTP and HTTPS
Use an Ingress when you want to route HTTP(S) traffic into your workloads and pods
Ingress
An Ingress allows you to route HTTP/HTTPS traffic to services based on URL path and/or domain host name
Ingress object is a set of rules picked up and implemented by the Ingress Controller
Ingress Controller has a public IP and LoadBalancer service, it routes traffic to internal ClusterIP services
A large choice of controllers are available, e.g. NGINX, Envoy, HAProxy, Traefik
/site/live
/site/test
Ingress
