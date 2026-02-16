# Slide 76

Kubernetes native manifest configuration & parametrization
Out of the box & template-free way to customize application configuration
Kustomize
Kustomize is a tool for customizing Kubernetes configurations
It updates manifests on the fly to add, remove or update configuration options.
Standalone CLI tool and a native part of kubectl
Achieves similar outcomes to Helm but uses a very different paradigm of bases + overlays + patches
Used for environment-specific config (dev/staging/prod)
/base/
deployment.yaml
service.yaml
kustomization.yaml
/overlays/dev/kustomization.yaml
/overlays/staging/kustomization.yaml
/overlays/prod/kustomization.yaml
$ kubectl apply –kustomize /overlays/prod/
Kustomize requires you to think about your directories and file placement
https://kustomize.io/
