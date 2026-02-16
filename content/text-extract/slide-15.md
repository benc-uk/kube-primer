# Slide 15

Service
Service IP
label=myApp
kubeproxy
selector: myAppport: 80targetPort: 5000
Node 2
Node 1
LoadBalancer
Uses cloud provider to present an external load-balanced IP
ClusterIP
Internal virtual IP, only accessible by other pods/services
EXTERNAL
INTERNAL
Services – Simplified Illustration
Allow virtual network access to one or more pods
kubeproxy
