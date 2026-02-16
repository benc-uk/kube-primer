# Slide 75

Helm – The Basics
helm | Client tool to manage and work with Helm
Chart | Package of Kubernetes resources in template form
Template | Kubernetes YAML with directives in Go template language format, e.g. {{ blah }}
Release | When installing a chart into Kubernetes it becomes a release
Values | Used at install time to customise the release, either from CLI or file
Dependency | A chart can require other external charts, Helm will automatically pull/update
docs.helm.sh/glossary
$ helm install foo ./mychart -f values.yaml
