# Putting It All Together

## Sample Architecture – Complex App

web

data

database

api

web

web-deployment

api-deployment

Multi component web application, with API & DB
Ingress routing traffic to web and API pods
Ingress is exposed
to the internet
Database running in StatefulSet with internal only service and using PVC for storage, plus secrets
