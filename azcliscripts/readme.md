# How to run  

```
# didn't work
bash < (curl -sL https://raw.githubusercontent.com/ishanslab/azuresamples/main/azcliscripts/simpleaks.sh)

```

### Deploy simple AKS
```
curl -sL https://raw.githubusercontent.com/ishanslab/azuresamples/main/azcliscripts/simpleaks.sh > simpleaks.sh
chmod +0777 simpleaks.sh

```

### Deploy AKS with a sample app  
```
curl -sL https://raw.githubusercontent.com/ishanslab/azuresamples/main/azcliscripts/aks_n_app.sh > aks_n_app.sh
chmod +0777 aks_n_app.sh
# aks_n_app.sh

```

## YOu can also pass a prefix that will be used in the name for AKS and the resource group  
```
sh aks_n_app.sh yourprefix
```


### Reference:  
https://learn.microsoft.com/en-us/azure/aks/limit-egress-traffic  
