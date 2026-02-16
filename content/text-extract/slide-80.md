# AKS Networking

- VNet Peering / ExpressRoute — Connect to on-premises and other Azure VNets
- Private Clusters — API server not exposed to the internet
- Service Endpoints / Private Link — Secure access to Azure PaaS services from pods

- Azure CNI Overlay (Recommended) Nodes join your VNet; pods get IPs from a private CIDR overlay. Simple, scalable, no IP exhaustion issues
- Azure CNI with Vnet Both nodes and pods get IPs from your VNet subnet. Full VNet integration but requires careful IP planning
- Azure CNI Powered by Cilium eBPF-based dataplane replacing kube-proxy. Adds network policy, observability, and service mesh capabilities
- Kubenet (Legacy) Pods sit behind a bridge with UDR routing. Simple but limited; not recommended for new clusters

Networking Modes

Azure CNI Overlay
