PREFIX="aks-egress"
RG="${PREFIX}-rg"
LOC="eastus"
PLUGIN=azure
AKSNAME="${PREFIX}"
VNET_NAME="${PREFIX}-vnet"
AKSSUBNET_NAME="aks-subnet"
# DO NOT CHANGE FWSUBNET_NAME - This is currently a requirement for Azure Firewall.
FWSUBNET_NAME="AzureFirewallSubnet"
FWNAME="${PREFIX}-fw"
FWPUBLICIP_NAME="${PREFIX}-fwpublicip"
FWIPCONFIG_NAME="${PREFIX}-fwconfig"
FWROUTE_TABLE_NAME="${PREFIX}-fwrt"
FWROUTE_NAME="${PREFIX}-fwrn"
FWROUTE_NAME_INTERNET="${PREFIX}-fwinternet"

az group create --name $RG --location $LOC

# # Dedicated virtual network with AKS subnet
# az network vnet create \
#     --resource-group $RG \
#     --name $VNET_NAME \
#     --location $LOC \
#     --address-prefixes 10.42.0.0/16 \
#     --subnet-name $AKSSUBNET_NAME \
#     --subnet-prefix 10.42.1.0/24

# # Dedicated subnet for Azure Firewall (Firewall name can't be changed)
# az network vnet subnet create \
#     --resource-group $RG \
#     --vnet-name $VNET_NAME \
#     --name $FWSUBNET_NAME \
#     --address-prefix 10.42.2.0/24

# SUBNETID=$(az network vnet subnet show -g $RG --vnet-name $VNET_NAME --name $AKSSUBNET_NAME --query id -o tsv)

CURRENT_IP=$(dig @resolver1.opendns.com ANY myip.opendns.com +short)


az aks create -g $RG -n $AKSNAME -l $LOC \
  --node-count 3 \
  --network-plugin azure \
  --api-server-authorized-ip-ranges $CURRENT_IP/32 --generate-ssh-keys
 # --vnet-subnet-id $SUBNETID \




#az aks update -g $RG -n $AKSNAME --api-server-authorized-ip-ranges $CURRENT_IP/32

az aks get-credentials -g $RG -n $AKSNAME
