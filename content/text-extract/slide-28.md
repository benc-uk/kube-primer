# Kubectl – Common Commands

get

Display one or many resources

get nodes
get pods
get all
get pod pod123
get nodes -w

delete

Delete resources

delete deploy mydeploy
delete -f myapp.yaml
delete -l app=foo

apply

Create resources from manifests

apply -f myapp.yaml
apply –f ./stuff
apply –f http://example.net/app.yaml

describe

Get details of any resource

describe pod pod138
describe svc myservice
describe pod -l app=myapp

…others…

Some other commands

logs pod138
rollout restart deploy mydeploy
exec pod138 -- ls

kubernetes.io/docs/reference/kubectl/overview

kubernetes.io/docs/reference/kubectl/cheatsheet

Set up aliases & autocomplete!
