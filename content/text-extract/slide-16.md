# Services – Simplified Illustration

Service

Service IP

label=myApp

kubeproxy

selector: myApp port: 80 targetPort: 5000

Node 2

Node 1

LoadBalancer
Uses cloud provider to present an external load-balanced IP

ClusterIP
Internal virtual IP, only accessible by other pods/services

EXTERNAL

INTERNAL

Allow virtual network access to one or more pods

myApp

myApp

myApp

iptables

iptables

kubeproxy
