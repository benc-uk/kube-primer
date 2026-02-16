# A Few Problems & Possible Causes

| Pattern | Symptom | Likely Cause |
| --- | --- | --- |
| ImagePullBackOff | Pod stuck, never starts | Wrong image name/tag, missing registry credentials, or private registry not configured |
| CrashLoopBackOff | Pod starts then restarts repeatedly | App crashing on startup, bad config, missing env vars, failed DB connection |
| Pending pods | Pod stays in Pending state | Insufficient CPU/memory on nodes, no nodes match nodeSelector/affinity, or PVC can't bind |
| OOMKilled | Container killed unexpectedly | Memory limit too low, app exceeds its resource limit or real memory leak |
| Service not reachable | Can't connect to pods | Label/selector mismatch between Service and Pods, wrong port/targetPort, or no endpoints |
| Ingress returns 404/502 | External traffic fails | Misconfigured ingress rules, wrong service name, or backend pods not ready, controller dead/missing |
| Readiness probe failing | Pod running but gets no traffic | Probe path/port wrong, app slow to start, or missing startup probe |
| ConfigMap/Secret not found | Pod fails to start | Typo in name, resource in wrong namespace, or not created yet |
| Node NotReady | Workloads evicted | Node resource pressure (disk/memory), kubelet crashed, or network issues |
| CreateContainerConfigError | Pod stuck in waiting | Referenced ConfigMap or Secret doesn't exist or has wrong key name |
| Evicted pods | Pods terminated unexpectedly | Node under disk or memory pressure, resource limits not set |
| Volume mount hangs | Pod stuck in ContainerCreating | PV stuck in wrong availability zone, or cloud disk still attached to another node |
| Rolling update stuck | Deployment half-updated | New pods failing readiness probes, bad health endpoint, so rollout never completes |
| Network policy blocking traffic | Sudden connectivity loss | Default-deny policy applied but allow rules missing for the new service |
| HPA not scaling | HPA shows <unknown> targets | Metrics Server not installed, or no resource requests set on containers |
| Jobs never complete | Jobs stuck running | Container exits with non-zero code, restartPolicy set to Always instead of Never/OnFailure |
| Namespace stuck ‘Terminating’ | Can't delete namespace | Finalizers on resources inside. typically CRDs or webhook dependencies blocking cleanup |

There’s 100s more to find!👍
