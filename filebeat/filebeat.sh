#!/bin/bash
kubectl create ns monitoring
kubectl create secret generic my-cert -n monitoring --from-file=ca.crt --from-file=tls.crt --from-file=tls.key
kubectl apply -f filebeat-kubernetes.yaml