#!/usr/bin/env bash

# Assign the first argument to the PREFIX variable
PREFIX=$1
# If no prefix argument supplied, use "aks-default" as the default value
if [ -z "$PREFIX" ]; then
  PREFIX="aks-default"
fi
# Create the resource group name and the AKS cluster name using the prefix
RG="${PREFIX}-rg"
LOC="eastus"
PLUGIN=azure
AKSNAME="${PREFIX}"

# Create a resource group in the specified location
az group create --name $RG --location $LOC

# Get the current IP address of the user
CURRENT_IP=$(dig @resolver1.opendns.com ANY myip.opendns.com +short)

# Create an AKS cluster with 3 nodes, azure network plugin, and authorized IP range
az aks create -g $RG -n $AKSNAME -l $LOC --node-count 3 --network-plugin azure --api-server-authorized-ip-ranges $CURRENT_IP/32 --generate-ssh-keys

# Apply the YAML file to deploy a sample app to the AKS cluster
kubectl apply -f https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/ns_sampleapp.yaml
