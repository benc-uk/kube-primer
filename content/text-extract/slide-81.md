# Microsoft Entra Workload ID

- Allows your Pods to authenticate and obtain tokens to access resources in Azure via managed identities in Entra ID
- Workload (i.e. your code) should be using MSAL & Azure Identity client libraries
- Replaces the deprecated ‘Pod managed identity’ approach
- Uses a combination of OIDC federation and ServiceAccount token volume projection

learn.microsoft.com/azure/aks/workload-identity-overview

Azure Key Vault
A common use case for Workload Identity is access to Azure Key Vault for obtaining secrets
