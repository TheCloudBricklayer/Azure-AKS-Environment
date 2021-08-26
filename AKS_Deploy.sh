#! /bin/bash

az group create --location "${GEO_LOCATION}" --resource-group "${CLUSTER_NAME}-RG"

az aks create -g "${CLUSTER_NAME}-RG" -n ${CLUSTER_NAME} --ssh-key-value ./id_rsa.pub

az aks get-credentials --name "${CLUSTER_NAME}" --resource-group "${CLUSTER_NAME}-RG" --admin