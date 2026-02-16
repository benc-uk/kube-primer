# Slide 52

$ kubectl logs deploy/data-api
Found 3 pods, using pod/data-api-84fb56497b-6cgth
> smilr-data-api@3.2.0 start /home/app
> node server.js
### Node environment mode is 'production'
### Connection attempt 1 to MongoDB server mongodb-svc.default
### Yay! Connected to MongoDB server
### Server listening on 4000
Container Logs
Access stdout & stderr output from pods with:kubectl logs
Get output from a deployment or pod or single container
Follow logs with -f
View any errors output from containers
See what your workloads are doing
Uses
