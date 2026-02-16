# Describing Objects

## Use kubectl describe to inspect status of any object in your cluster Returns events and all properties & status details Use label selectors to query multiple objects

- $ kubectl describe deploy/data-api
- $ kubectl describe pod/data-api-84fb56497b-6cgth
- $ kubectl describe service/frontend
- $ kubectl describe pod –l app=data-api

View and understand the status of anything in your cluster
Troubleshoot pending/failed workloads

Uses

kubernetes.io/docs/tasks/debug-application-cluster
