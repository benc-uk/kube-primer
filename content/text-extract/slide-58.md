# Init Containers

## Init Containers are optional special containers that run only once when a pod is started Init containers run to completion (terminate) Main containers in a pod will not start until all Init Containers have run

- ...
- initContainers:
- - name: init-mysql
- image: bencuk/mysqldb
- command: ["./scripts/checkDB"]
- ...
- initContainers:
- - name: init-demodata
- image: bcdemo.azurecr.io/smilr/data-api
- command: ['sh', '-c', 'cd demoData && node demodb.js']
- env:
- - name: MONGO_CONNSTR
- value: mongodb://mongodb-svc.default
- - name: WIPE_DB
- value: "true"

Application configuration
Bootstrapping apps
Running utility & start-up scripts
Data injection

Uses

kubernetes.io/docs/concepts/workloads/pods/init-containers
