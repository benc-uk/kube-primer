# Slide 17

Handling State & Data
Volumes hold data and state for Pods and containers
Data Volumes & Mounts
Filesystem of running containers is ephemeral. All data written will be lost on a restart
Use Volumes to hold data or state you want to keep, or to inject data into a Pod
Volumes are mounted into a container at a mountPath
Many types of storage can be used to back the Volume
Pod
Container
/opt/data
Container
/var/www
Volume
datavol
Warning! A volume shares lifecycle with the Pod, so are not persistent
