# Slide 53

$ kubectl exec mypod -- ps -ef
PID USER TIME COMMAND
1 root 0:00 npm
22 root 0:00 node server.js
36 root 0:00 ps –ef
$ kubectl exec -it mypod -- bash
bash-4.4#
$ kubectl debug -it mypod --image=alpine –-target=appcnt
/ #
$ kubectl debug -it mypod --image=alpine
/ #
Debug & Get Shell Access
Use kubectl exec to run commands inside a pod/container
Use -it switch and sh or bash to create an interactive shell
Use kubectl debug to attach to distroless containers or to create an interactive sidecar in a pod
Low level debugging
Interactive troubleshooting inside the cluster and/or pods
Uses
kubernetes.io/docs/tasks/debug-application-cluster/get-shell-running-container
Run a single command
Run a single command
