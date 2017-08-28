#!/bin/bash -e

current_image=$(kubectl get deployment nginx -o jsonpath='{.spec.template.spec.containers[].image}')

if [[ "$current_image" == "nginx:1.12" ]]; then
  image="nginx"
else
  image="nginx:1.12"
fi

kubectl set image deployment/nginx nginx=$image
