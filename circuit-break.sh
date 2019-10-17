#!/bin/bash

########################
# include the magic
########################
. demo-magic.sh
clear

pe "kubectl apply -f /istio-manifests/circuitbreaker/circuitbreaker.yaml"
