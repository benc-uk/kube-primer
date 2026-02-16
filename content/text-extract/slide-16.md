# Slide 16

Naming for Pods and Services
Connect to your workloads using DNS and Services
DNS and Service Discovery
DNS in cluster is handled automatically by Kubernetes
All ClusterIP (internal) Services get assigned a DNS record based on the service’s name
Pods also get DNS names, but this is less useful
External public DNS can also be configured – See “Additional Network Topics” section later
$ nslookup myapp
Address: 10.200.4.30
