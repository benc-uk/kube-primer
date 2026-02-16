# When To Use Kubernetes

## No guide to Kubernetes is complete without a warning!

- Multiple services/teams; and need independent deployment & scaling between them
- Scaling & resilience; you need autoscaling, self-healing, rolling updates
- You’re deploying multiple tightly coupled services, but don’t kid yourself that your API + backend is microservices!
- Portability across clouds or on-premises
- Already containerized; you’ve invested in containers and CI/CD already

- Simple app / small team, here the operational overhead of Kubernetes outweighs the benefits
- No scaling needs, if you have predictable, small workloads it doesn’t justify the complexity
- Kubernetes has a VERY steep learning curve, skills gap could lead to fragility, mistakes and slow you down
- Kubernetes is NOT a PaaS! You want PaaS and don't want to manage infrastructure, go elsewhere

Kubernetes solves orchestration problems, if you don't have these problems, you don't need Kubernetes. Start simple, adopt when the pain of not having it becomes real

REASONS TO AVOID

YOU MIGHT NEED KUBERNETES
