# Slide 61

apiVersion: v1
kind: Namespace
metadata:
name: production
labels:
pod-security.kubernetes.io/enforce: restricted
pod-security.kubernetes.io/warn: restricted
pod-security.kubernetes.io/audit: restricted
Pod Security
By default, your pods can do a lot of things you might not want!
Use Pod Security Standards & Pod Security Admission Controller to enforce security practices
Three built-in security levels:Privileged - unrestricted (default)Baseline - prevents known privilege escalationsRestricted - hardened best practice (non-root)
Any pod that violates the profile can be rejected at admission, and/or you'll also get warnings and audit log entries
Security!
Uses
Apply ‘restricted’ policy
kubernetes.io/docs/concepts/security/pod-security-standards/
- Doesn't set runAsNonRoot: true
- Doesn't set allowPrivilegeEscalation: false
- Doesn't drop all capabilities
- Doesn't set a seccompProfile
