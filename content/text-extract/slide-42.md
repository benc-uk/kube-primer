# Container Runtimes & Tooling

## Container Tools

- Containerd Lightweight, stable, CNCF graduated. Now the standard CRI runtime on all major K8s platforms
- CRI-O Built specifically for Kubernetes by Red Hat. Minimal and purpose-built

- Kubernetes can use different container runtimes via something called the Container Runtime Interface (CRI)
- Kubernetes has used containerd as its default container runtime since 1.24, when Docker support was removed in 2022
- The runtime executes containers on nodes, while CLI tools (Docker, Podman, nerdctl) are used by developers to build, push, and test container images locally. Kubernetes only cares about the runtime, not how the image was built.

Docker Most widely known container tool. Includes CLI, and engine. Still the most popular choice for local dev and CI pipelines. Requires a paid subscription for commercial use
Podman Daemonless, rootless Docker alternative from Red Hat. Drop-in replacement for the docker Fully open source (Apache 2.0) no licensing restrictions.
Nerdctl Docker-compatible CLI for containerd. Gives you the familiar docker commands but talks directly to containerd. Fully open source (Apache 2.0) no licensing restrictions.
