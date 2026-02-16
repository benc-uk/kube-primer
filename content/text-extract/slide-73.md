# Slide 73

Modern Observability Stack
Prometheus & Grafana — the standard for Kubernetes monitoring
Grafana — Visualization & Dashboards
Connects to Prometheus as a data source
Rich, customizable dashboards for cluster health, pod performance, and application metrics
Thousands of pre-built community dashboards available
Supports additional data sources: Azure Monitor, Loki (logs), Tempo (traces)
Prometheus — Metrics Collection
Pull-based model: scrapes metrics from pods and services at regular intervals – no agents
Pods & Nodes expose a /metrics endpoint; Prometheus discovers targets automatically
Stores time-series data with a powerful query language (PromQL)
Powers alerting via Alertmanager
CNCF graduated project — the default metrics standard for Kubernetes
OpenTelemetry — The Source
Vendor-neutral standard for collecting metrics, logs, and traces from your applications
Instrument once, export to Prometheus, Grafana, Jaeger, or any backend
