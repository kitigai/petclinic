#!/bin/bash

# Exit on any error
set -e

gcloud docker -- push us.gcr.io/${PROJECT_NAME}/spring-petclinic
chown -R ubuntu:ubuntu /home/ubuntu/.kube
kubectl patch deployment spring-petclinic -p '{"spec":{"template":{"spec":{"containers":[{"name":"spring-petclinic","image":"us.gcr.io/xxxtestxxx12345/sprint-petclinic"}]}}}}'
