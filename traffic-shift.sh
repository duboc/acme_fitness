#!/bin/bash

########################
# include the magic
########################
. demo-magic.sh
clear

pe "kubectl apply -f kubernetes-manifests/catalog-v2/catalog-service-v2.yaml"

pe "kubectl get pods"

pe "kubectl apply -f istio-manifests/trafficshifting/destinationrule.yaml"

pe "kubectl apply -f istio-manifests/trafficshifting/shifting-100-v2.yaml"

pe "kubectl apply -f istio-manifests/trafficshifting/shifting-20-v2-80-v1.yaml"

pe "kubectl apply -f istio-manifests/trafficshifting/shifting-100-v1.yaml"
