# Slide 36

...
readinessProbe:
httpGet:
path: /status
port: 8080
initialDelaySeconds: 25
periodSeconds: 10
failureThreshold: 3
...
livenessProbe:
exec:
command: ["mysqladmin", "ping"]
initialDelaySeconds: 30
periodSeconds: 20
Probes
Readiness probes tell Kubernetes your container is ready to accept traffic
Liveness probes tell Kubernetes to restart your container, use with caution
Startup probes disable checks until the app is initialised
Probes can be HTTP, TCP or execute commands
Maintain availability
Restart unhealthy containers
Efficient traffic routing
Uses
kubernetes.io/docs/concepts/configuration/liveness-readiness-startup-probes/
Specifying a liveness probe is optional and can cause side effects
Specifying a readiness probe is highly recommended
