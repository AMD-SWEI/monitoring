# filebeat for elk.amd.com
- Create the secret using ca.crt / tls.crt / tls.key shared in the Filebeat_K8s zip file using below Steps :
    - Go to the path in which above 3 files are saved and give below command include the namespace if different.

- `kubectl create secret generic my-cert -n monitoring --from-file=ca.crt --from-file=tls.crt --from-file=tls.key`

Highlighted part can be name of your choice for the secret you want to create.

## Deploy
- Run filebeat.sh script.