Project for GPC Architect Certification Lab1
https://googlecoursera.qwiklabs.com/focuses/16466

### To create several deployments for app server for each environment you need to run commands
```
gcloud deployment-manager deployments create development --config appserver.yaml
gcloud deployment-manager deployments create load-testing --config appserver.yaml
gcloud deployment-manager deployments create security --config appserver.yaml
gcloud deployment-manager deployments create production --config appserver.yaml 
```