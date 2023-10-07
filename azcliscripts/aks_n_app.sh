PREFIX="aks-egress2"
RG="${PREFIX}-rg"
LOC="eastus"
PLUGIN=azure
AKSNAME="${PREFIX}"

az group create --name $RG --location $LOC

CURRENT_IP=$(dig @resolver1.opendns.com ANY myip.opendns.com +short)

az aks create -g $RG -n $AKSNAME -l $LOC --node-count 3 --network-plugin azure --api-server-authorized-ip-ranges $CURRENT_IP/32 --generate-ssh-keys

kubectl apply -f https://raw.githubusercontent.com/ishanslab/azuresamples/main/AKS/sampleyamls/ns_sampleapp.yaml
