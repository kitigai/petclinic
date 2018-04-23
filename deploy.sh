#!/bin/bash

# Exit on any error
set -e

sudo /opt/google-cloud-sdk/bin/gcloud docker push us.gcr.io/${PROJECT_NAME}/spring-petclinic
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
kubectl patch deployment spring-petclinic -p '{"spec":{"template":{"spec":{"containers":[{"name":"spring-petclinic","image":"us.gcr.io/xxxtestxxx12345/sprint-petclinic"}]}}}}'
