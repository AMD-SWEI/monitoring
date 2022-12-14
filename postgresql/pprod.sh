#!/bin/bash
kubectl create -n databases secret generic postgresql-exporter --from-literal=username=postgres --from-literal=password='redacted'
kubectl apply -n databases -f postgresql.exporter.yaml