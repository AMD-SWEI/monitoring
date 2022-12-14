#!/bin/bash
kubectl create secret -n databases generic mongodb-sysdig --from-file=mongodb-uri=prod.txt
helm upgrade -i -n databases -f values.yaml --repo https://sysdiglabs.github.io/integrations-charts databases-mongodb mongodb-exporter