# Slide 72

Declarative approach to IaC & continuous deployment
Alternative approach for managing and deploying applications to Kubernetes
GitOps
GitOps is relatively new approach & a set of practices & tools to manage your infrastructure application configurations using Git as desired state
A “pull” approach vs “push” – special controllers (e.g. Flux, Argo CD) in Kubernetes watch and poll for changes and reconcile the updates.
More complex & not as well adopted as the Helm/kubectl push CD flow but has some advantages.
