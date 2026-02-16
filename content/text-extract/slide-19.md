# Persistent Volumes

## Persistent Volumes retain data long term, outside of Pods

Handling State & Data

- A PersistentVolume allows you to hold data independent of Pod lifecycle
- A pod uses a PersistentVolumeClaim to bind to a PersistentVolume - ReadWriteOnce - mounted on a single Node (e.g. db) - ReadWriteMany - mounted on multiple Nodes
- Many storage plugins exist: NFS, iSCSI, Azure (Disk & Files), CSI, Ceph, Gluster, AWS

Pod

Container
/opt/data

Container
/var/www

Volume
datavol

PersistentVolumeClaim

PersistentVolume
pv1
