# Pod Security

## By default, your pods can do a lot of things you might not want! Use Pod Security Standards & Pod Security Admission Controller to enforce security practices Three built-in security levels: Privileged - unrestricted (default) Baseline - prevents known privilege escalations Restricted - hardened best practice (non-root) Any pod that violates the profile can be rejected at admission, and/or you'll also get warnings and audit log entries

- apiVersion: v1
- kind: Namespace
- metadata:
- name: production
- labels:
- pod-security.kubernetes.io/enforce: restricted
- pod-security.kubernetes.io/warn: restricted
- pod-security.kubernetes.io/audit: restricted

Security!

Uses

Apply ‘restricted’ policy

apiVersion: v1
kind: Pod
metadata:
name: bad-pod
spec:
containers:
- name: app
image: nginx

REJECTED!

kubernetes.io/docs/concepts/security/pod-security-standards/

- Doesn't set runAsNonRoot: true
- Doesn't set allowPrivilegeEscalation: false
- Doesn't drop all capabilities
- Doesn't set a seccompProfile
